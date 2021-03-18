# bash_syncer

```
git clone git@github.com:p-geon/bash_syncer.git
cd bash_syncer
make init
```

- for bash (`make init`)
- for zsh (`make init-zsh`)
- `.bashrc`/`.zshrc` が空の場合、
  - `mv bash/.bashrc ~/.bashrc`
  - `mv bash/.zshrc ~/.zshrc`

## Overview

実は結構違う

<img src="img/overview.png">

<img src="img/flow.png">

## Main Command

reloader

- `SET` && `RR`

search

- `A | grep {command}`
    - = `SS {command}`