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







// pipeline {
//     agent any

//     parameters {
//         choice(
//             choices: ['Apply Infrastructure', 'Destroy Infrastructure'], 
//             description: 'Select whether to apply or destroy the infrastructure:',
//             name: 'ACTION'
//         )
//     }

//     tools {
//         // Define the Terraform tool installation
//         terraform 'Terraform'
//     }

//     environment {
//         // Define environment variables to store AWS credentials
//         AWS_ACCESS_KEY_ID     = credentials('Naveenhaswani_aws')
//         AWS_SECRET_ACCESS_KEY = credentials('Naveenhaswani_aws')
//     }

//     stages {
//         stage('Terraform init') {
//             steps {
//                 // Initialize Terraform
//                 sh 'terraform init'
//             }
//         }

//          stage('Terraform Format') {
//             steps {                
//                     // Format Terraform configuration files
//                     sh 'terraform fmt'
//             }
//         }
        
//         stage('Terraform Validate') {
//             steps {
//                    // Validate Terraform code
//                     sh 'terraform validate'
//             }
//         }
//         stage('Terraform Plan') {
//             steps {
//                     sh 'terraform plan '
//             }
//         }
// // -out tfplan.out
//         stage('Apply / Destroy') {
//             steps {
//                     script {
//                         if (params.ACTION == 'apply') {
//                             sh 'terraform apply -auto-approve'
//                         } else if (params.ACTION == 'destroy') {
//                             input message: 'Do you want to destroy the infrastructure?',
//                                   parameters: [booleanParam(name: 'confirm', defaultValue: false, description: 'Confirm destroy')]
//                             sh 'terraform destroy -auto-approve'
//                         } else {
//                             error "Invalid action selected. Please choose either 'apply' or 'destroy'."
//                         }
//                     }
//                 }
//             }
//         }
// }
//         // stage('Proceed with Terraform action') {
//         //     input {
//         //         message "Do you want to apply this Terraform plan?"
//         //         ok "Yes"
//         //     }
//         //     steps {
//         //         // Apply Terraform changes using the generated plan
//         //         sh 'terraform apply tfplan.out'
//         //     }
//         // }        
// //         stage('Terraform Action') {
// //             steps {
// //                 script {
// //                     def action = params.ACTION

// //                     switch (action) {
// //                         case 'Apply Infrastructure':
// //                             sh 'terraform apply --auto-approve'
// //                             break
// //                         case 'Destroy Infrastructure':
// //                             sh 'terraform destroy --auto-approve'
// //                             break
// //                         default:
// //                             echo "Invalid action selected"
// //                     }
// //                 }
// //             }
// //         }
// //     }
// // }

// // pipeline {
// //     agent any

// // parameters {
// //         choice(name: 'action', choices: ['apply', 'destroy'], description: 'Select the action to perform')
// //     }
// //     environment {
// //         AWS_ACCESS_KEY_ID     = credentials('Naveenhaswani_aws')
// //         AWS_SECRET_ACCESS_KEY = credentials('Naveenhaswani_aws')

// //          tools {
// //         // Define the Terraform tool installation
// //         terraform 'Terraform'
// //     }
// //     }
// //     stages {
// //         stage('Cloning repo') {
// //             steps {
// //                 // Checkout your source code from version control
// //                 git 'https://github.com/Kiran-dehlikar/HaProxy.git'
// //             }
// //         }
        
// //         stage('Terraform Init') {
// //             steps {
// //                 // Change directory to the infra folder
// //                 dir('infra') {
// //                     // Initialize Terraform
// //                     sh 'terraform init'
// //                 }
// //             }
// //         }
        
// //         stage('Terraform Format') {
// //             steps {
// //                 // Change directory to the infra folder
// //                 dir('infra') {
// //                     // Format Terraform configuration files
// //                     sh 'terraform fmt'
// //                 }
// //             }
// //         }
        
// //         stage('Terraform Validate') {
// //             steps {
// //                 // Change directory to the infra folder
// //                 dir('infra') {
// //                     // Validate Terraform code
// //                     sh 'terraform validate'
// //                 }
// //             }
// //         }
        
// //         stage('Terraform Plan') {
// //             steps {
// //                 // Change directory to the infra folder
// //                 dir('infra') {
// //                     // Generate an execution plan
// //                     sh 'terraform plan'
// //                 }
// //             }
// //         }
// //         stage('Apply / Destroy') {
// //             steps {
// //                 dir('infra') {
// //                     script {
// //                         if (params.action == 'apply') {
// //                             sh 'terraform apply -auto-approve'
// //                         } else if (params.action == 'destroy') {
// //                             input message: 'Do you want to destroy the infrastructure?',
// //                                   parameters: [booleanParam(name: 'confirm', defaultValue: false, description: 'Confirm destroy')]
// //                             sh 'terraform destroy -auto-approve'
// //                         } else {
// //                             error "Invalid action selected. Please choose either 'apply' or 'destroy'."
// //                         }
// //                     }
// //                 }
// //             }
// //         }
