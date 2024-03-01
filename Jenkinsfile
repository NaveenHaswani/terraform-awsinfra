pipeline {
    agent any

    parameters {
        choice(
            choices: ['Apply Infrastructure', 'Destroy Infrastructure'], 
            description: 'Select whether to apply or destroy the infrastructure:',
            name: 'ACTION'
        )
    }

    tools {
        // Define the Terraform tool installation
        terraform 'Terraform'
    }

    environment {
        // Define environment variables to store AWS credentials
        AWS_ACCESS_KEY_ID     = credentials('Naveenhaswani_aws')
        AWS_SECRET_ACCESS_KEY = credentials('Naveenhaswani_aws')
    }

    stages {
        stage('Terraform init') {
            steps {
                // Initialize Terraform
                sh 'terraform init'
            }
        }
        stage('Terraform Format') {
            steps {                
                    // Format Terraform configuration files
                    sh 'terraform fmt'
            }
        }
        
       stage('Terraform Validate') {
            steps {
                   // Validate Terraform code
                    sh 'terraform validate'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out tfplan.out'
            }
        }
        stage('Proceed with Terraform action') {
            input {
                message "Do you want to ${params.ACTION == 'Apply Infrastructure' ? 'apply' : 'destroy'} this Terraform plan?"
                ok "Yes"
            }
            steps {
                // Perform the Terraform action based on user selection
                script {
                    def action = params.ACTION

                    switch (action) {
                        case 'Apply Infrastructure':
                            sh 'terraform apply --auto-approve'
                            break
                        case 'Destroy Infrastructure':
                            sh 'terraform destroy --auto-approve'
                            break
                        default:
                            echo "Invalid action selected"
                    }
                }
            }
        }
    }
}
