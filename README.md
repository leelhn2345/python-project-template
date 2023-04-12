# Python Project Template

Personal project template preference for python

uses the following for dev dependencies:

1. ruff
2. black
3. mypy
4. pre-commit

After installing the project dependencies, install pre-commit hooks into
`.git/hooks/pre-commit` with the following command:

```sh
pre-commit install
```

Has CI as well.

Pre-commit + CI for double lint checks. 🤩

Why `hooks` + `CI`?? Because `hooks` can be bypassed.
