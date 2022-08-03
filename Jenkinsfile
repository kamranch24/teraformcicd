pipeline {
    agent any
   

    stages {
        stage('test AWS credentials') {
            steps {
                withAWS(credentials: 'kamranch', region: 'eu-central-1') {
                    sh 'echo "hello Jenkins">hello.txt'
                    sh 'cat hello.txt'
                }
            }
        
        stage('Terraform init') {
            steps {
                sh ('terraform init')
            }
        }
        stage('Terraform plan') {
            steps {
                sh ('terraform plan')
            }
         }
        stage('Terraform apply') {
            steps {
                sh ('terraform apply --auto-approve')
            }    
        }
        
    }
}
