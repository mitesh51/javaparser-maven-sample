pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn clean package'
        archiveArtifacts(artifacts: '**/*.jar', onlyIfSuccessful: true, fingerprint: true)
      }
    }

  }
}
