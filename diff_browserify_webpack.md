## 前提知識(モジュール定義や依存解決のAPI仕様)
### CommonJS
* JavaScriptでサーバサイドやコマンドラインツール、GUIツールなど色んなアプリを開発するための標準的なAPIの仕様のこと


### AMD(RequireJS)
* AMDとはAsynchronous Module Definitionの略で、モジュールを非同期でロードする仕組みや、そのための定義などのAPI仕様のこと
* AMDのブラウザ実装が、RequireJS
* 実行時に依存関係を解決する


## browserifyの特徴
* CommonJSのモジュール仕様に沿って書いたJavaScriptを、ブラウザ上で動かせるようにしたモジュールシステムのこと

* 依存関係の解決タイミング
  - ビルド時に依存関係を解決する
* 出力結果
  - 単一のJSファイルになる
* タスクランナーとの関係
  - Gulpなどのタスクランナーと合わせて使うのが一般的


## webpackの特徴
* CommonJSとAMDの両方のスタイルを同時にサポートするモジュールシステムのこと

* 依存関係の解決タイミング
  - ビルド時に依存関係を解決する
* 出力結果
  - 出力結果を複数のJSファイルに分けることができる(エントリーポイントで設定可能)
* タスクランナーとの関係
  - タスクランナーなしでも、同じようなことができる


## 参考
* [JavaScriptのモジュール管理(CommonJSとかAMDとかBrowserifyとかwebpack)](https://tsuchikazu.net/javascript-module/)
* [browserifyとwebpack](http://blog.uu59.org/2015-01-03-browerify-webpack.html)
* [BrowserifyからWebpackへの移行時の注意点](http://qiita.com/derui@github/items/5233b4ef8fbde1e80d33)
