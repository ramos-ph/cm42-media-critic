# Media Critic

A simple project built to users be able to post their book, movie, or game critics online.

## Built with

**Backend**
- Ruby 3.2.2
- SQLite 3

**Frontend**
- Next.js 13.4.19
- Tailwindcss

## Installing

```
$ git clone git@github.com:ramos-ph/cm42-media-critic.git
$ cd cm42-media-critic
$ cd backend
$ bundle
```

## Running the server

```
$ cd backend
$ bin/rails server
```

## Testing

Run all the tests with `bundle`:

```
$ bundle exec rspec
```

This will automatically generate the test coverage. To check it, open `coverage/index.html` on your web browser. If you prefer, you can open it with your installed browser:

```
# If you're using Linux
$ xdg-open coverage/index.html

# If you are using Mac or Windows
$ firefox coverage/index.html
```

## Contributing

### How to create branch

```sh
git checkout -b [frontend|backend|infra]/[type]/complete-shared-header
```

### How to write commit message

```sh
git commit -m [type]: your message
```

**Types**
- **feat**: New feature/functionality
- **fix**:  Correction of a bug/error
- **refactor**: Refactoring a piece of code that does not add new functionality
- **chore**: work in progress
- **perf**: performance adjustments
- **docs**: changes/creation of docs
- **ci**: adjustments/additions to Continuous integration
- **build**: adjustments to the app's build configurations

## Figma wires

[Click here](https://www.figma.com/file/t4GIPRiWWJf9htg5Qv9cQT/cm42-media-critic?type=design&node-id=0%3A1&mode=design&t=QHgPcB6sbZQh6LaU-1)
