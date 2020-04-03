# docker build -t demo:add .
# docker run --rm --name my-running-app -p 8080:80 demo:add
# docker exec -it my-running-app bash 
# cd /usr/local/apache2/htdocs/

FROM httpd:2.4
ADD https://www.dropbox.com/s/q1ew8rb44ud2wum/7-Days-Workout-by-Workout-Motivation.pdf?dl=0 /usr/local/apache2/htdocs/
