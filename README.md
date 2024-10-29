# py-sql-bencher

Command line SQL queries' performance comparator written in Python.

See <https://realpython.com/python-application-layouts/> for the directory structure and <https://python-packaging.readthedocs.io/en/latest/index.html>.

Supports only <https://www.postgresql.org/>.

## Installation

If you plan to fork or modify code, use pip install in editable (developer) mode using the `venv` virtual environment:

```bash
git clone git@github.com:romulusFR/py-sql-bencher.git
cd py-sql-bencher/
python3 -m venv .venv
. .venv/bin/activate
pip install --editable .
```

Otherwise, in a demo virtual environment:

```bash
mkdir demo
cd demo
python3 -m venv .venv
. .venv/bin/activate
pip install git+https://github.com/romulusFR/py-sql-bencher
```

## Usage

Executable is `.venv/bin/py-sql-bencher`.
Connection has to be defined in `./.env` dotfile or via PostgresSQL's environment variables, see [34.15. Environment Variables](https://www.postgresql.org/docs/current/libpq-envars.html).

```bash
# using examples
py-sql-bencher -vv  examples/agg_*.sql
```
