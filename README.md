# Start using sceptre
```
docker run -d -it -e AWS_ACCESS_KEY_ID=YOUR_AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY=YOUR_AWS_SECRET_ACCESS_KEY --name sceptre mihailivanov/sceptre-docker:0.1
docker exec -it sceptre bash
sceptre --version
```