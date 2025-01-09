pipeline {
    agent any
    stages 
    {
        stage("test")
        {
            steps{withMaven(globalMavenSettingsConfig: '', jdk: 'JAVA_HOME', maven: 'MAVEN_HOME', mavenSettingsConfig: '', traceability: true) {
                sh 'mvn install'
            }
        }
        }
        stage('deploy to tomcat dev1')    //5 min

        {
            steps { sshagent (credentials: ['test']) 
     {
      sh 'scp -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/maven/target/wwp-1.0.0.war ec2-user@172.31.28.105:/usr/share/tomcat/webapps'
    } }}
    }
}