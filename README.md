# dotfiles
![CI](https://github.com/uta8a/dotfiles/workflows/Test%20dotfiles%20on%20GitHub%20Actions/badge.svg?branch=master)

## Usage
```shell
$ git clone 
$ chmod +x install.ubuntu-20.sh
$ ./install.ubuntu-20.sh
$ ansible-playbook main.yml -K
```

## Generate new role
```shell
$ mkdir roles/<new_role>
$ tree roles/<new_role>
roles/<new_role>/
├── files
├── README.md
├── tasks
│   └── main.yml
├── tests
│   └── goss.yml
└── vars
    └── main.yml
```

## Test
- requirements: docker, docker-compose
```shell
sudo docker-compose build
sudo docker-compose up # run goss validate
```