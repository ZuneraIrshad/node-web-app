genericbuild(target:"node-npm-app")









// delete that - thats just for testing 
node('NODE-NPM-APP'){
	stage('SCM'){
		checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/ZuneraIrshad/node-web-app']]])
	}
	stage('Build'){
		//try{
		//sh 'dotnet build ConsoleApp1'
		//}finally{
		//archiveArtifacts artifacts: 'ConsoleApp1/*.*'
		//}
    		echo 'build test'
	}
	stage('Test'){
		echo 'Execute unit tests'
	}
	stage('Package'){
		echo 'Zip it up'
	}
	stage('Deploy'){
		echo 'Push to deployment'
	}
}
