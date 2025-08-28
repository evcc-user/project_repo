pipeline {
    agent any

    triggers {
        // Auto-trigger build when someone pushes to GitHub
        githubPush()
    }

    stages {
        stage('Checkout') {
            steps {
                // Jenkins will clone the repo into the current workspace
                git url: 'https://github.com/evcc-user/project_repo.git', branch: 'main'
                bat 'dir'  // Just to check files are there
            }
        }

        stage('Build') {
            steps {
                echo "Building project using Jenkins workspace..."
                bat '''
                cd scripts
                call set_aurix_env.bat
                cd ..
                make clean
                make all
                '''
            }
        }

        stage('Test') {
            steps {
                echo "Running tests (if available)..."
            }
        }
    }

    post {
        success {
            echo "Build completed successfully!"
        }
        failure {
            echo "Build failed. Please check the logs."
        }
    }
}
