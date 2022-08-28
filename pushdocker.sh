echo ===========[Pushing docker files]============

docker login -u cssbyalizaw -p a1383t1116

docker build -t cssbyalizaw/ubuntu_novnc:0.1

docker push cssbyalizaw/ubuntu_novnc:0.1

echo =============================================
