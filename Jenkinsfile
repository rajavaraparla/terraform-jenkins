pipeline {
  agent any
  environment {
    PATH = "${PATH}:${getTerraformPath()}"
  }

  stages{
    stage('terraform init'){
      steps{
        sh "terraform init"
      }
    }
  }
}

def getTerraformPath() {
  def tfhome = tool name: 'Terraform11', type: 'terraform'
  return tfhome
}
