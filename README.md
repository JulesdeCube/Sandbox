<h1 align="center">Sandbox - learning website 🎓</h1>

<p align="center">
  <img src="https://img.shields.io/github/v/tag/JulesdeCube/Sandbox?label=version&style=flat-square"/>
  <img src="https://img.shields.io/github/license/JulesdeCube/Sandbox?style=flat-square"/>
  <img src="https://img.shields.io/github/downloads/JulesdeCube/Sandbox/total?style=flat-square"/>
</p>

**Sandbox** is an online IT learning website

## ⭐ Feature

## ✔️ Require
- python >= 3.6
- pip3
- grep

## 📘 Usage
### Install
in `scripts` folder you will find the `install.sh`.
```sh
./scripts/install.sh
```
The script will che ck dependecies, install virtual environement python depencies. After that he will ask you the Django secret and the allowed hosts (separed by a comma `,`).

### Config
You found the configs file in `config` :
- `allowedHost.conf` : the allowed hosts separed by line
- `django.key` : the Djnago secret

### Launch
to run the server in debug/developement mode
```
./scripts/manage.py runserver --settings=sandbox.settings_debug
```

To use it in production see the [django deploy help page](https://docs.djangoproject.com/en/3.1/howto/deployment/).

## 📃 Licence
Licensed under the [GNU general public license](./LICENCE.md).

## 👪 Contributor
[![Contributor](https://contributors-img.web.app/image?repo=JulesdeCube/Sandbox)](https://github.com/JulesdeCube/Sandbox/graphs/contributors)
