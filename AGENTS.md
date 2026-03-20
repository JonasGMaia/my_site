# AGENTS.md

## Cursor Cloud specific instructions

This is a Django 6.0.3 personal blog application using Python 3.12+ and SQLite.

### Services

| Service | Command | Notes |
|---------|---------|-------|
| Django dev server | `python3 manage.py runserver 0.0.0.0:8000` | Main app; serves "Hello, World!" at `/` and admin at `/admin/` |

### Quick reference

- **Install deps:** `pip install -r requirements.txt`
- **Migrate:** `python3 manage.py migrate`
- **Run tests:** `pytest -v` (configured in `pytest.ini`, uses `config.settings`)
- **Dev server:** `python3 manage.py runserver 0.0.0.0:8000`

### Known caveats

- The `Post` model in `blog/models/post.py` has `abstract = True`, which prevents ORM instantiation. The migration (`0001_initial`) created a concrete table, so the schema exists but `PostFactory` and the model test (`tests/models/test_post.py`) fail at runtime. This is a pre-existing issue.
- The `blog/admin.py` imports `PostAdmin` but never calls `admin.site.register(Post, PostAdmin)`, so the Post model does not appear in Django admin.
- There are two Django project configs: `config/` (active, used by root `manage.py` and `pytest.ini`) and `my_site/` (unused legacy scaffold). Always use `config.settings`.
- `pip install` goes to `~/.local/`; ensure `~/.local/bin` is on `PATH` for `pytest`, `django-admin`, etc.
