# settimana-bianca
  ⛷🏂 website for rufusxx's skiing holiday

## Development environment setup

The following steps will guide you through the installation procedure.

### Miniconda

[Conda](https://docs.conda.io/en/latest/) is required for creating the development environment (it is suggested to install [Miniconda](https://docs.conda.io/en/latest/miniconda.html)).

### Setup the development environment

Use the setup script (`setup_dev_env.sh`) to install all the required development tools.

Use `source` to properly launch the script.

```
source setup_dev_env.sh
```

> [!IMPORTANT]
> The setup script will take care of setting up the development environment for you.
> The script installs:
> - 1 environment (`settimana-bianca` for development)

### Select the interpreter
After installing the environment, select it as the default interpreter in _Visual Studio Code_.  
Open the command palette and type `interpreter`.  
Choose `Python: Select Interpreter` and select the environment you just installed.

Now every terminal you will open from now on will start with the `settimana-bianca` environment activated.

> [!IMPORTANT]
> After selecting the interpreter close every terminal (trash icon) and then use the `Developer: Reload Window` command form the _command palette_. 

## `make` commands
### Run the test server

Run the following (`make`) command to start the development server.

```
make docs-serve
```

### Manually build the website

Use

```
make docs
```

to manually build the site.

> [!WARNING]
> The build command is not really required.  
> The deployment to github pages is made with _GitHub actions_.

### Clean temporary folders

Use

```
make clean
```

to clean temporary files.
