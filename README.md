# figlet_color

This code will convert the input text and output it colorfully with ASCII font using [FIGlet](http://www.figlet.org/).

## How to use

```
docker build . -t figlet_color
docker run --rm figlet_color Colorful Message
docker run --rm -e FPS=60 figlet_color Colorful Message at 60 FPS
```
