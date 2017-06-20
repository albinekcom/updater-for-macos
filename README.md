# Updater for macOS 💻

It is a script for updating `macOS` and other stuff.

## Usage

### Normal

Execute script with some arguments. The arguments are matched with file names located in `lib` directory.

```bash
$ ./updater_for_macos.sh --macos --brew
```

### Parallel 🏎️🏎️🏎️

Use [parallel](https://www.gnu.org/software/parallel/) shell tool to update software in a parallel manner.

```bash
$ parallel ./updater_for_macos.sh ::: --macos --brew --gem --apm
```

### Automated

Tweak parameters (remember about changing `PATH` and `ProgramArguments`) in `com.albinek.mac.updater_for_macos.plist` file, move it to `~/Library/LaunchAgents/` directory and load using `launchctl`.

```bash
$ launchctl load com.albinek.mac.updater_for_macos.plist
```

## Need more updaters?

Just add a new file in `lib` directory, fill with update commands and invoke this script with new file's name as an argument.
