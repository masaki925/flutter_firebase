# firebase init

- nvm, npm あたりのバージョン管理が面倒なのでdocker で操作する
- firebase login がredirect でlocalhost:9005 を指定する都合で、docker でポートを開けておく必要がある
  - firebase login やlogin:ci コマンドでfirebase がポートをlisten するので、あとはdocker がそこにポートを通しておけばよいだけ

