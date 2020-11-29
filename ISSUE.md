- [x] #1 ansibleを導入。apt updateを走らせるまでやる。
  - a5a6645fa0cc2d0e407e8c81699c530c8ecc1597
- [x] #2 Ubuntu 18とか指定して、挙動調べる
  - skipされた。正しく機能している。
```
$ ansible-playbook main.yml -k
SSH password:
[WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not match 'all'

PLAY [Setup environments] *******************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************
ok: [localhost]

TASK [Update apt] ***************************************************************************************************************************************************************
skipping: [localhost]

TASK [install via apt] **********************************************************************************************************************************************************
skipping: [localhost]

PLAY RECAP **********************************************************************************************************************************************************************
localhost                  : ok=1    changed=0    unreachable=0    failed=0    skipped=2    rescued=0    ignored=0
```
- [ ] #3 事前にインストールするものをshell scriptではなく、ansibleにする。install.shは最小化
- [ ] #4 role neovimでneovim入れる。
- [ ] #5 moleculeでのテストする(cfgに軽いもの入れてやってみる)
- [ ] #6 moleculeを理解するためにcfgでやってみる。
  - [molecule init後の各ディレクトリの内容](https://docs.ansible.com/ansible/2.9/user_guide/playbooks_reuse_roles.html)
  - defaults: varsと近い。デフォルトの変数を入れる
  - files: このroleでdeployされるファイル
  - handlers: このroleで使用されるハンドラ
  - meta: roleについてのmetaデータ
  - molecule: ?
  - tasks: roleのmain部分となるtask定義
  - templates: template部分
  - tests: ?
  - vars: defaultsと近い。defaults以外の変数を入れる。
  - travis.yml: test用のCI。今回は無視。
  - .yamlint: ?
  - README.md: そのroleについてのREADME?