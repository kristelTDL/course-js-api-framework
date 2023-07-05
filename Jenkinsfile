pipeline {
    agent any
    // polling periodically in cron syntax to trigger Jenkins pipeline:
    triggers {
        pollSCM('*/1 * * * *')
    }
    stages {
        stage("build-docker-image") {
            steps {
                buildDockerImage()
            }
        }
    }
}

// function for building the docker image
def buildDockerImage() {
    echo "Building Docker image..."
    sh "docker build --no-cache -t kristelj/api-tests ."

    echo "Pushing Docker image to Docker Hub..."
    sh "docker push kristelj/api-tests"
}

/*
There are two ways for a Jenkins pipeline to be triggered based on code changes
1) {BEST PRACTICE} whenever you push something to github, configure github webhooks to invoke Jenkins API to start certain pipeline (not possible for us, since our Jenkins is hosted LOCALLY)
2) {Possible when Jenkins is hosted locally} On Jenkins side polling (checking) on repository (at specified time rate) for changes --> upon changes pipeline is invoked [enable it nder "configure" menu option]
*/