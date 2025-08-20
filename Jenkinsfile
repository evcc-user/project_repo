pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/evcc-user/project_repo.git', branch: 'main'
            }
        }

        stage('Build') {
            steps {
                echo "Building project using command prompt..."
                bat '''
                cd Blinky_LED_1_KIT_TC397_TFT
				cd scripts
                set_aurix_env.bat
                make clean
                make all
                '''
            }
        }

        stage('Test') {
            steps {
                echo "Running tests (if available)..."
                // Add your test commands here later
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
