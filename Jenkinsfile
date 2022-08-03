pipeline {
    agent any
    environment{
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')


    }

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/kamranch24/teraformcicd']]])
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
        stage('Terraform apply') {
            steps {
                sh ('terraform apply --auto-approve')
            }    
        }
        
    }
}
}