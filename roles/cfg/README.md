# cfg
- setup時の細かいconfig

# 達成
- ok
  - meta
  - tasks
  - templates, defaults, files, handlers, varsはとりあえず無視

# 分からない
- molecule.ymlでdocker driverなのでsudoを入れたいが、どうもsudoなしdocker使えるようにしておかないと動かなさそう(sudoを指定する場所が見当たらない)→sudoなしdockerは嫌なので、moleculeのdocker driverはおいておく。(vagrantで動かせばいいのかな)
- moleculeめっちゃ筋悪い気がする。Dockerコンテナ立てて、ansible流してgossで確認したほうがよくないか？gossによる確認だと実際のansible流した後の確認にも使えそうだし...

# License
- MIT
