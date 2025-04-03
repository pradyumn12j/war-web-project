pipeline
{
    agent any
    {
        tools {
    maven 'Maven 3.6.3'  // Update to the latest version compatible with Java 17
}
    }
    stages{
        stage("hey there"){
        steps{git'https://github.com/pradyumn12j/war-web-project.git'}
    }
    
        stage(" step")
    {
    steps{withMaven(globalMavenSettingsConfig: '', jdk: 'HOME_JAVA', maven: 'HOME_MVN', mavenSettingsConfig: '', traceability: true) {
    sh('mvn compile')
}
  }}
        stage("test")
        {
            steps{
                sh('mvn install -DSkiptests')
            }
        }
    
        
        stage("package")
        {
            steps{
                sh('mvn package')
            }
        }
        stage("validate")
        {
            steps{
                sh('mvn validate')
            }
        }
        stage('Docker image build')
        {
            steps{
                sh('docker buildx build -t java121:latest .')
            }
        }
    
    }
}