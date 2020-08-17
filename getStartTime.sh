#!/bin/bash
goDeployerPod="$(kubectl get pods -n scaler | grep go-deployer | awk '{print $1}')"
timeStarted="$(kubectl logs $goDeployerPod -n scaler |  tr -d '\000' | grep 'Time start:'| tail -n 1 | grep -oE '[^ ]+$')"
echo "$(ssh -i test.pem ubuntu@172.19.111.27 sudo ./getDockerTiming.sh $timeStarted)"
