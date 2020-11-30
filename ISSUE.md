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
- [x] #3 事前にインストールするものをshell scriptではなく、ansibleにする。install.shは最小化
  - 56bcf7189c4030a57bc569ebcf8410b6e20a7358
  - cb69ef347f3b024dfd5e44d22094c971a6429970
  - moleculeやめたことに伴い、Dockerの必要性がなくなりansible preをしなくて良くなった
- [ ] #4 role neovimでneovim入れる。
- [x] #5 moleculeでのテストする(cfgに軽いもの入れてやってみる)
  - 820c1f4487fa2d3e7c3c34b42cc99ac7e4ebba36
  - moleculeの採用をやめた(Docker+gossに変更)
- [x] #6 moleculeを理解するためにcfgでやってみる。
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
  - 820c1f4487fa2d3e7c3c34b42cc99ac7e4ebba36
  - moleculeの採用をやめた(Docker+gossに変更)
- [x] #7 Dockerfile for goss testを作る
  - f4f98a9ac6671efe8ad787c346a081a0259267a0
  - 以下のようにきちんとテストが通り、Failすることも確認した
```shell
$ sudo docker-compose up
Starting dotfiles_test_dotfiles_1 ... done
Attaching to dotfiles_test_dotfiles_1
test_dotfiles_1  | F.
test_dotfiles_1  |
test_dotfiles_1  | Failures/Skipped:
test_dotfiles_1  |
test_dotfiles_1  | Title: installed emacs
test_dotfiles_1  | Package: emacs: installed:
test_dotfiles_1  | Expected
test_dotfiles_1  |     <bool>: false
test_dotfiles_1  | to equal
test_dotfiles_1  |     <bool>: true
test_dotfiles_1  |
test_dotfiles_1  | Total Duration: 0.005s
test_dotfiles_1  | Count: 2, Failed: 1, Skipped: 0
dotfiles_test_dotfiles_1 exited with code 1
```
- [x] #8 gossのconfig fileを作る
  - fbd8a73c7a84fbca4370b823a8a5c175bf9b9216
  - 20203f803b6587b617f349339c743e87f99a31ed
- [x] #9 role cfgで一般的にほしい物入れる(主にapt, git config?)
  - 0299056b9a7f9f330b48f46297f274acc448ef00
  - file追加もここでやりたい
- [ ] #10 