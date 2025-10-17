# dotfiles

Managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

## Getting Started

### Prerequisites

* homebrew
  ```sh
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
  ```shell
  eval "$(/opt/homebrew/bin/brew shellenv)"
  ```
* chezmoi
  ```sh
  brew install chezmoi
  ```

### Installation

```bash
chezmoi init ysato --apply
```