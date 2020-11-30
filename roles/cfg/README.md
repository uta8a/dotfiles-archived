# cfg
- setup時の細かいconfig
- files, tasks, tests, varsのみの構成にする

# 分からない
- molecule.ymlでdocker driverなのでsudoを入れたいが、どうもsudoなしdocker使えるようにしておかないと動かなさそう(sudoを指定する場所が見当たらない)→sudoなしdockerは嫌なので、moleculeのdocker driverはおいておく。(vagrantで動かせばいいのかな)
- moleculeめっちゃ筋悪い気がする。Dockerコンテナ立てて、ansible流してgossで確認したほうがよくないか？gossによる確認だと実際のansible流した後の確認にも使えそうだし...
- docker driverだと実質やっていることは同じだしdocker+gossをしてみよう。

# License
- MIT
