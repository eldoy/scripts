# Command line scripts and aliases for everyday use

These are some of the aliases and short cuts we use on a daily basis for software development.

At the moment it contains short cut for git, docker and some utilities. The locations included are local to our machines, so you'll need to customize them to fit your system.

There is a ruby runner included, check out the git commands in the `/lib` directory for an example.

### Installation
```
# Clone the repo. Fork it first if you plan to keep customizing it
git clone https://github.com/fugroup/scripts.git

# Add this line to your .zshrc or .bashrc, and start a new shell
source ~/your/path/to/clone/aliases.sh
```
### Usage
```
# Git command is 'g'
g 'Readme' # => git add --all && git commit -m "Readme" && git push
g          # => Will ask for message if you forget it
```

For other aliases, see the source
* [Aliases](https://github.com/fugroup/scripts/blob/master/aliases.sh)
* [Scripts](https://github.com/fugroup/scripts/tree/master/lib)
```

Created and maintained by [Fugroup Ltd.](https://www.fugroup.net) We are the creators of [CrowdfundHQ.](https://crowdfundhq.com)

`@authors: Vidar`
