# elmagain

Scaffold: Elm 0.19 + Vite + Tailwind v4 + daisyUI + Bun + mise.

## Use this scaffold

```bash
bunx degit marshallformula/elmagain my-new-app
cd my-new-app

# Init version control
jj git init --colocate

# Fix the package name
sed -i '' 's/"name": "elmagain"/"name": "my-new-app"/' package.json

# Install and run
mise run dev
```

Or create a new GitHub repo directly from the template:

```bash
gh repo create my-new-app --template marshallformula/elmagain --clone
cd my-new-app
mise run dev
```

## Update the scaffold

```bash
# make changes, then:
jj describe -m "what changed"
jj git push --remote origin --bookmark main
```

`degit` always pulls `HEAD` of `main`, so all future scaffolds pick up the change automatically.

## Tasks

| Command | Description |
|---|---|
| `mise run dev` | Start Vite dev server |
| `mise run build` | Production build |
| `mise run install` | Install dependencies |
