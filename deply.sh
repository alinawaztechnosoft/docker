sudo git pull origin main
sudo docker stop web
sudo docker rm web
sudo docker system prune -fa
sudo docker system df -v
sudo docker build -t simple-nginx .
sudo docker run -d --name web -p 80:80 simple-nginx
