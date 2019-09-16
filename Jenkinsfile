pipeline{
    agent any
    stages{
    	stage('GIT Clone'){
    	    steps{
    		    git credentialsId: 'GitHubCreden', url: 'https://github.com/vijaya-bo/InfosysTest.git'
    	    }
    	}
    	stage('DockerBuild'){
    	    steps {
    		    sh "docker build -t my-python-app:v${BUILD_NUMBER} ."
    		    sh 'docker stop \$(sudo docker ps -aq) || echo "No containers to stop!!!"'
    		    sh 'docker rm \$(sudo docker ps -aq) || echo "No containers to delete!!"'
    		    sh "docker run -itd  -p 8081:8080 --name my-running-app${BUILD_NUMBER} my-python-app:v${BUILD_NUMBER}"
    	    }
    	}
    }
	post{
	    always{
	        echo "I will say hello always"
	    }
	
	}
}



















