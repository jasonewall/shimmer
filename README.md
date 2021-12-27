# Shimmer

A simple package manager you can use to "install" downloaded packages from the internet.

## Why?

I got the idea to do this when I was setting up a java dev environment on a new machine. I've spent some time over the past few years building some
Ruby inspired toolkits for making some Java tasks feel as easy as they do in Ruby.

> As an example, my [ivy-cli wrapper](https://github.com/jasonewall/ivy-cli) is a bundler-esque cli tool for simplifying the interaction with the Ivy dependency manager.
>
> This tool even started it's life as part of the ivy-cli, then I realized there's a more broader application for this beyond a Java specific tool.

But what I didn't have yet was a way to setup things like `ant` quickly. There's a number of package out there (not just in the Java world) that require you to decompress that package to an arbitrary location on your system, and then add the `bin` directory from that location to your path. This is:
1. Repetitive
1. Boring
2. Difficult to manage, with multiple version of the same library, which may be required depending on how many projects you work on.

With shimmer, you can just `shimmer install <downloaded package location>` and it will automatically add executables to your path. You can even delete the source files after since `shimmer install` copies the library to a dedicated packages directory, so everything is in one place, easy for you to keep track of.
