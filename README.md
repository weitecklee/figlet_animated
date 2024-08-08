# figlet_animated

This code will convert the input text and output it colorfully with ASCII font using [FIGlet](http://www.figlet.org/) and [lolcat](https://github.com/jaseg/lolcat).

`FPS` can be optionally set with an environmental variable.

## How to use

```
docker run --rm weitecklee/figlet_animated Colorful Message
docker run --rm -e FPS=60 weitecklee/figlet_animated Colorful Message at 60 FPS
```
