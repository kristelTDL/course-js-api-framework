pipeline {
    agent any
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
