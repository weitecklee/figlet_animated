# figlet_animated

This code will convert the input text and output it colorfully with ASCII font using [FIGlet](http://www.figlet.org/) and [lolcat](https://github.com/jaseg/lolcat).

`WAIT` can be optionally set with an environmental variable as the delay between frames.

## How to use

```
docker run --rm weitecklee/figlet_animated Colorful Message
docker run --rm -e WAIT=.01 weitecklee/figlet_animated Colorful Message at 100 FPS
```
