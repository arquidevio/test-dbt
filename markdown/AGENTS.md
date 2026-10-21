# Markdown fixture

Entry point: `src/app.fsx`. Settings live in `config/`.
See the [guide](docs/guide.md#setup) and [dbt](https://github.com/arquidevio/dbt).

Template tokens are ignored: `<app>/main.fsx`, `src/*.fsx`, `../outside.md`.

Code blocks are ignored:

```
`other/notes.txt`
```
change referenced file and the doc
change only the doc
