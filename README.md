# dotfiles
<!-- CI badge -->

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

# Test
- requirements: docker, docker-compose
```shell
sudo docker-compose build
sudo docker-compose up # run goss validate
```