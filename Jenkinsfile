pipeline {
    agent any
    tools {
        maven 'Maven363'
    }
    options {
        timeout(10)
        buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '5', numToKeepStr: '5')
    }
    stages {
        stage{            
            steps{withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MAVEN_HOME', mavenSettingsConfig: '', traceability: true) {
                sh 'mvn test'

}}
        
    }
}