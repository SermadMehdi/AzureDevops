sudo npm install
sudo docker build -t techieslounge/node-web-app:0.1 .
sudo docker images
sudo docker run -p 3000:8080 -d techieslounge/node-web-app:0.1
