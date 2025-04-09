# CONTRIBUTING

<!--toc:start-->

- [CONTRIBUTING](#contributing)
  - [git branch names](#git-branch-names)
  - [conventional commits](#conventional-commits)
  - [todo-comments](#todo-comments)
  - [how to run tests](#how-to-run-tests)
  <!--toc:end-->

All work is being done on `develop` branch and
eventually merged to `main` branch via fast-forward merge.  
Send your pull request to `develop` branch. **_NOT_** `main` branch.

---

## git branch names

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

| abbr        | description                              |
| ----------- | ---------------------------------------- |
| `feat:`     | Introduce new feature                    |
| `fix:`      | Fix a bug                                |
| `docs:`     | Update documentation                     |
| `refactor:` | Refactor code without changing behavior  |
| `chore:`    | Maintenance tasks and dependency updates |
| `test:`     | Add or update tests                      |
| `build:`    | Update build system or dependencies      |
| `ci:`       | Modify CI/CD configuration               |
| `perf:`     | Optimize performance                     |
| `revert:`   | Undo previous commit                     |
| `style:`    | Adjust code style (formatting, linting)  |

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

`INFO:`  
Linux _fonts directory_: `$HOME/.local/share/fonts`
MacOS _fonts directory_: `$HOME/Library/Fonts`

- LOCAL TESTING

  - be on Linux or MacOS.
  - fork the repo.
  - create new branch, let's call it `refactor/install-script` for example.
  - make changes.
  - run this:

  ```bash
    nerd_font_name="Agave" bash ./install.sh
  ```

  - if font appears in your _fonts directory_, install.sh script worked.

- REMOTE TESTING

  - be on Linux or MacOS.
  - fork the repo.
  - create new branch, let's call it `refactor/install-script` for example.
  - make changes.
  - test via `LOCAL TESTING`.
  - push changes to **your** repository.
  - then running this should work:

  ```bash
  nerd_font_name="Hack" bash <(curl -fsSL https://raw.githubusercontent.com/_YOUR_GITHUB_USERNAME_/nefoin/refactor/install-script/install.sh)
  ```

  - `_YOUR_GITHUB_USERNAME_` being your Github username.
  - `refactor/install-script` being example branch name.
