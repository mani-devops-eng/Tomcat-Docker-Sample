pipeline{
    agent any
    stages{
        stage('Build Application') {
            steps{
                sh 'mvn -f pom.xml clean install package'
                //sh 'mvn --f time-tracker/pom.xml clean package'
                //buildInfo = rtMaven.run pom: 'time-tracker/pom.xml', goals: 'clean package'
            }
            post{
                success{
                    echo 'Now Archiving the Artifacts....'
                    archiveArtifacts artifacts:'**/*.war'
                }
            }
        }
       stage('create tomcat docker image '){
           steps{
               /* groovylint-disable-next-line GStringExpressionWithinString */
              sh 'docker build /var/lib/jenkins/workspace/Build_Tomcat_Docker_Image/ -t tomcatsamplewebapp:${BUILD_ID}'
               //sh 'docker build Dockerfile'
           }
       }
    }
}
