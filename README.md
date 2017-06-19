# Updater for macOS 💻

It is a script for updating `macOS` and other stuff.


## Manual usage

Execute script with some arguments.

```bash
$ sh updater_for_macos.sh --macos --brew
```


### Available arguments

- `--macos`
- `--brew`
- `--gem`
- `--apm`


## Automated usage

Tweak parameters (remember about changing `PATH` and `ProgramArguments`) in `com.albinek.updater_for_macos.plist` file then load it using `launchctl`.


## Parallel usage 🏎️

Use [parallel](https://www.gnu.org/software/parallel/) shell tool to update software in parallel manner.

```bash
$ parallel sh updater_for_macos.sh ::: --macos --brew --gem --apm
```
