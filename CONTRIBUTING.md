# CONTRIBUTING.md

<!--toc:start-->

- [CONTRIBUTING.md](#contributingmd)
  - [git branch names](#git-branch-names)
  - [conventional commits](#conventional-commits)
  - [todo-comments](#todo-comments)
  - [how to run tests](#how-to-run-tests)
  <!--toc:end-->

## git branch names

All work is being done on `develop` branch and eventually merged to `main`.  
Send your pull request to `develop` branch. **_NOT_** `main` branch.

| branch name | description                | example                           |
| ----------- | -------------------------- | --------------------------------- |
| main        | Production-ready code      | main                              |
| develop     | Ongoing development branch | develop                           |
| feature/    | New feature                | feature/user-authentication       |
| refactor/   | Refactoring                | refactor/extract-common-functions |
| bugfix/     | Bug fix                    | bugfix/fix-header-styling         |
| hotfix/     | Critical bug fix in prod   | hotfix/security-patch             |
| docs/       | Documentation updates      | docs/update-readme                |
| release/    | Preparing for new version  | release/v2.0.1                    |

## conventional commits

Project uses [Conventional Commits](https://www.conventionalcommits.org)
for commit names.

| abbr        | description                                   |
| ----------- | --------------------------------------------- |
| `feat:`     | A new feature or functionality.               |
| `fix:`      | A bug fix.                                    |
| `docs:`     | Changes to documentation only.                |
| `refactor:` | Code improvements without feature changes.    |
| `chore:`    | Maintenance tasks (e.g., dependency updates). |
| `test:`     | Adding or updating tests.                     |

Official examples

`feat: allow provided config object to extend other configs`

`feat(api)!: send an email to the customer when a product is shipped`

Add ! To abbr when committing breaking change

`fix!: removed api.get_user in index.js`

Template

`type:(optional_scope): description`

## todo-comments

For comments, use todo-comments convention

- FIX: FIXME: BUG: FIXIT: ISSUE:
- TODO:
- HACK:
- WARN: WARNING:
- PERF: PERFORMANCE: OPTIMIZE:
- NOTE: HINT: INFO:
- TEST: TESTING: PASSED: FAILED:

Example  
`# PERF: using it this way is faster`

**OR**
normal comment without any such keywords at the start.

## how to run tests

1. be on Linux or MacOS
1. fork the repo
1. create new branch, let's call it `refactor/install-script`
1. running this should work:

```bash
nerd_font_name="Hack" bash <(curl -fsSL https://raw.githubusercontent.com/_YOUR_GITHUB_USERNAME_/nefoin/refactor/install-script/install.sh)
```

- `_YOUR_GITHUB_USERNAME_` being your Github username.
- `refactor/install-script` being example branch name.

**OR**
you could use docker for testing.  
[README.md](./README.md) has a `TRY IT WITH DOCKER` example.
