# dotfiles
**You really should look at [jessfraz/dotfiles](https://github.com/jessfraz/dotfiles)**, this is primarily based on that repo but with some changes for me.

### Installing

```console
$ ./install.sh
```

### Customizing

Save env vars, etc in a `.extra` file, that looks something like
this:

```bash
###
### Git credentials
###

GIT_AUTHOR_NAME="Your Name"
GIT_AUTHOR_EMAIL="email@you.com"
GH_USER="nickname"

GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
git config --global github.user "$GH_USER"
```

## Resources

### Again, Check the OG Repo
https://github.com/jessfraz/dotfiles
