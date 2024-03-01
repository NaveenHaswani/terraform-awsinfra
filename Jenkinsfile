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
        stage('Terraform Plan') {
            steps {
                    sh 'terraform plan -out myplan'
        }

        stage('Proceed with Apply') {
            input {
                message "Do you want to apply this Terraform plan?"
                ok "Yes"
            }
            steps {
                // Apply Terraform changes using the generated plan
                sh 'terraform apply tfplan.out'
            }
        }        
        stage('Terraform Action') {
            steps {
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
