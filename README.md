# figlet_animated

This code will convert the input text and output it colorfully with ASCII font using [FIGlet](http://www.figlet.org/) and [lolcat](https://github.com/jaseg/lolcat).

`WAIT` can be optionally set with an environment variable as the delay in seconds between frames (default value is 0.04).

## How to use

```
docker run --rm weitecklee/figlet_animated Colorful Message
docker run --rm -e WAIT=0.01 weitecklee/figlet_animated Colorful Message at 100 FPS
```
