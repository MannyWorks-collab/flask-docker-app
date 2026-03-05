pipeline {
agent any

```
stages {

    stage('Build') {
        steps {
            echo 'Building the app...'
            sh 'mkdir -p build && echo "artifact" > build/output.txt'
        }
    }

    stage('Test') {
        steps {
            echo 'Running tests...'
            sh 'test -f build/output.txt'
        }
    }

    stage('Deploy') {
        steps {
            echo 'Deploying...'
            sh 'echo "Deployed at $(date)"'
        }
    }

}
```

}
