pipeline {
    agent { label "agent" }
    stages {
        stage('Clone Github Repo') {
            steps {
                git url: 'https://github.com/mdn/beginner-html-site-styled'
            }
        }
    }
}
