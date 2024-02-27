pipeline {
    agent any

    environment {
        // Define the path where files will be cloned
        TF_PATH = "${WORKSPACE}/terraform" // Defaulting to a 'terraform' directory in the workspace
        // Define the Terraform installation directory
        TERRAFORM_HOME = tool 'terraform'
        // Add Terraform binary to PATH
        PATH = "${env.TERRAFORM_HOME}:${env.PATH}"
    }

    tools {
        // Define the Terraform tool installation
        tool 'terraform', 'Terraform'
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout source code from SCM
                checkout scm
            }
        }
        stage('Terraform init') {
            steps {
                // Change directory to the Terraform working directory
                dir("${env.TF_PATH}") {
                    // Initialize Terraform
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform apply') {
            steps {
                // Change directory to the Terraform working directory
                dir("${env.TF_PATH}") {
                    // Apply Terraform changes
                    sh 'terraform apply --auto-approve'
                }
            }
        }
    }
}
