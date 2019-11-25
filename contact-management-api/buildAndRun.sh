mvn clean package

docker build -t contact-management-api -f dockerFile .

docker run -v /Users/Jinson/AnypointStudio/mule-root/apps:/opt/mule/apps -v /Users/Jinson/AnypointStudio/mule-root/conf:/opt/mule/conf -v /Users/Jinson/AnypointStudio/mule-root/logs:/opt/mule/logs -it --rm -p 8081:8081 contact-management-api