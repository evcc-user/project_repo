pipeline {
    agent any

    stages {
        stage('Checkout') {
   	steps {
        git url: 'https://github.com/evcc-user/project_repo.git', branch: 'main'
        bat 'dir' // Lists files and directories in the workspace
    	    }
	}

        stage('Build') {
                steps {
					echo "Building project using command prompt..."
					bat '''
					cd C:\\project\\Blinky_LED_1_KIT_TC397_TFT\\scripts
					call set_aurix_env.bat
					cd C:\\project\\Blinky_LED_1_KIT_TC397_TFT
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
