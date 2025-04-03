pipeline
{
    agent any
    stages{
        stage("hey there"){
        steps{git'https://github.com/pradyumn12j/war-web-project.git'}
    }
    
        stage(" step")
    {
    steps{withMaven(globalMavenSettingsConfig: '', jdk: 'HOME_JAVA', maven: 'HOME_MVN', mavenSettingsConfig: '', traceability: true) {
    sh('mvn -f /.pom.xml clean install')
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