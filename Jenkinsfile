pipeline {
  agent any
  environment {
    PATH = "${PATH}:${getTerraformPath()}"
  }

  stages{
    stage('terraform init and apply - dev'){
      steps{
        sh "returnStatus: true, script: 'terraform workspace new dev'"
        sh "terraform init"
      }
    }
    stage('terraform init and apply - prod'){
      steps{
        sh "returnStatus: true, script: 'terraform workspace new prod'"
        sh "terraform init"
      }
    }

  }
}

def getTerraformPath() {
  def tfhome = tool name: 'Terraform12', type: 'terraform'
  return tfhome
}
