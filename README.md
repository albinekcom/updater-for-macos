# Updater for macOS 💻

It is a script for updating `macOS` and other stuff.


## Manual usage

Execute script with some arguments. The arguments are matched with file names located in `lib` directory.

```bash
$ ./updater_for_macos.sh --macos --brew
```

## Parallel usage 🏎️🏎️🏎️

Use [parallel](https://www.gnu.org/software/parallel/) shell tool to update software in parallel manner.

```bash
$ parallel ./updater_for_macos.sh ::: --macos --brew --gem --apm
```

## Automated usage

Tweak parameters (remember about changing `PATH` and `ProgramArguments`) in `com.albinek.updater_for_macos.plist` file then load it using `launchctl`.


## Need more updaters?

Just add a new file in `lib` directory, fill with update commands and invoke script with new file's name as an argument.
