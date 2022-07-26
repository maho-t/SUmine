# アプリケーション名
**mine**<br>
![minelogo](https://user-images.githubusercontent.com/102218486/179115974-66f4f42d-3e77-4ea7-a135-eca3a1ed1f14.png)

# アプリケーション概要
業務マニュアルや、対応した問い合わせ事柄などをストックすることで、円滑な引き継ぎやノウハウの蓄積ができる。

# URL
https://sumine.herokuapp.com/

# テスト用アカウント
- Basic認証パスワード：0829
- Basic認証ID：owner
- メールアドレス：taro@seisen-u.ac.jp
- パスワード：aaa111

# 利用方法
## 業務マニュアル管理
1. 所属するチームにマニュアルを投稿し、投稿者のみ編集削除が可能
2. チームへの所属が許可されているものについては、他チームのマニュアルを閲覧することが可能
3. 投稿されたマニュアルに対し、備考（コメント機能）を書き込むことで、不足情報を足すことが可能
4. 投稿されたマニュアルについてはタイトルキーワードに検索が可能

## 問い合わせ管理
1. 所属するチームに問い合わせを投稿し、投稿者のみ編集削除が可能
2. チームへの所属が許可されているものについては、他チームの問い合わせを閲覧することが可能
3. 投稿された問い合わせについてはキーワード検索が可能
4. 問い合わせにはタグ付けを行うことで、タグごとの問い合わせ表示をする

## メール管理
1. 所属するチームに保存したいメールをPDF形式で投稿し、投稿者のみ編集削除が可能
2. チームへの所属が許可されているものについては、他チームの管理するメールを閲覧することが可能

# アプリケーションを作成した背景
現職では、大学研究所の業務管理をおこなっているが、人員の入れ替わりが多くあり、また教育改革に伴う業務内容の変更やコロナ禍による業務形態の変化が著しいことが課題としてある。<br>
その中で、過去の業務変遷や他部署連携などによるノウハウの蓄積がされておらず、新しく入職する職員への引継ぎや、変更に伴う確認事項にかかる時間が膨大である。そうした問題を解決したくこのアプリケーションを開発することにした。<br>
また、前任者からの引継ぎだけでは理解が不十分な点や、実際に業務を行っていく中で生じる疑問を速やかに解決するためのツールとしても役立つことを期待している。

# 洗い出した要件
[要件定義シート](https://docs.google.com/spreadsheets/d/19Sq0bwh2_8sM7lnUHNr0b-MgYcXygPeYwqcr6gltdWY/edit#gid=982722306)


# 実装した機能についての画像やGIFおよびその説明

## ユーザー管理
ユーザー管理は、全ユーザー情報を一元化することを目的にしている。<br>
本アプリの使用者はユーザー登録が必須であり、登録されたユーザーは全てメンバー画面に表示される。サイドバーの下部から、マイページの確認とログアウトが可能。
- ユーザー登録
[![Image from Gyazo](https://i.gyazo.com/c495c207e86f78d62c41a015d2591572.gif)](https://gyazo.com/c495c207e86f78d62c41a015d2591572)
- ユーザー管理
[![Image from Gyazo](https://i.gyazo.com/a1f43fbb79203eb69c7418083892488e.gif)](https://gyazo.com/a1f43fbb79203eb69c7418083892488e)

## チーム管理
チーム管理は、アプリの情報機密性という点において、安全な運用を図ることを目的とし、チーム内のユーザー管理に役立つ。
サインイン（ログイン）後のトップページがチーム管理一覧画面で、自分が所属するチームが一覧で表示される。所属したいチームがある場合は、チームメンバーから新規追加をしてもらうか、新しく自分がチームを作成することができる。<br>なお、チームメンバーであれば誰もがチームの編集が可能。その際にチームメンバーを選択して作成する。
- チーム作成
[![Image from Gyazo](https://i.gyazo.com/7a5539f36676fde03cae6ea6f4d8b422.gif)](https://gyazo.com/7a5539f36676fde03cae6ea6f4d8b422)
- チーム管理
[![Image from Gyazo](https://i.gyazo.com/e3147161fe010ef7997f7e82ea85ea67.gif)](https://gyazo.com/e3147161fe010ef7997f7e82ea85ea67)

## マニュアル管理
マニュアル管理は、引き継ぎ事項等の情報分散を避けるため、情報の集約化を目的としている。<br>
所属するチーム詳細画面もしくはサイドバーの「マニュアル」より、マニュアル管理画面に遷移できる。マニュアル管理画面では、所属するチーム全てのマニュアルを閲覧することも可能であり、チームごとの閲覧も可能。<br>また、検索機能より、タイトルをキーワードで検索することも可能。
- 遷移
[![Image from Gyazo](https://i.gyazo.com/a33d4ef45d70370382d41ad3b98969cc.gif)](https://gyazo.com/a33d4ef45d70370382d41ad3b98969cc)
- 投稿
[![Image from Gyazo](https://i.gyazo.com/c5d69d2d66509623ae3a65dfd6db9bfa.gif)](https://gyazo.com/c5d69d2d66509623ae3a65dfd6db9bfa)
- コメント投稿
[![Image from Gyazo](https://i.gyazo.com/47f752f23140a6704a82dd4356eafc8d.gif)](https://gyazo.com/47f752f23140a6704a82dd4356eafc8d)
- 編集、削除
[![Image from Gyazo](https://i.gyazo.com/ac45002a5e2abaa0da00bcb0eec17139.gif)](https://gyazo.com/ac45002a5e2abaa0da00bcb0eec17139)
- 検索
[![Image from Gyazo](https://i.gyazo.com/c4cd24efe5aa4abd8813759f2aa0146c.gif)](https://gyazo.com/c4cd24efe5aa4abd8813759f2aa0146c)

## 問い合わせ管理
問い合わせ管理は、マニュアルでは管理していない突発的な問い合わせに対し、どのような対応を行ったかを記録することを目的としている。<br>
所属するチーム詳細画面もしくはサイドバーの「問い合わせ」より、問い合わせ管理画面に遷移できる。問い合わせは、チームを選択して一覧画面に遷移する。問い合わせにはタグをつけて作成することが可能で、タグづけされた問い合わせごとに閲覧することも可能。<br>また、検索機能によってチーム内で管理する問い合わせに対し、キーワード検索も可能。
- 遷移
[![Image from Gyazo](https://i.gyazo.com/4cbdddbc66165877e488e0cbea20d811.gif)](https://gyazo.com/4cbdddbc66165877e488e0cbea20d811)
- 投稿
[![Image from Gyazo](https://i.gyazo.com/60677b63c15d80db650b50ddfe2edb44.gif)](https://gyazo.com/60677b63c15d80db650b50ddfe2edb44)
- 編集、削除
[![Image from Gyazo](https://i.gyazo.com/4afd2d8ee894cce819f93dc41729cdea.gif)](https://gyazo.com/4afd2d8ee894cce819f93dc41729cdea)
- タグ
[![Image from Gyazo](https://i.gyazo.com/7889e784e9a751de8a9f519b907e74d4.gif)](https://gyazo.com/7889e784e9a751de8a9f519b907e74d4)
- 検索
[![Image from Gyazo](https://i.gyazo.com/9b2d9add21bd57c525e41ab9e9872449.gif)](https://gyazo.com/9b2d9add21bd57c525e41ab9e9872449)

## メール管理
メール管理は、業務で使用するGmailの保存を目的としており、ユーザーはPDF化したメール資料を本アプリ内に保存することができる。<br>
属するチーム詳細画面もしくはサイドバーの「メール管理」より、メール管理画面に遷移できる。メール管理は、チームを選択して一覧画面に遷移する。保存したいメールをPDF化し、そのPDFを添付し保存をすることが可能。作成日を指定することで、検索の際も日付で検索をかけることができる。
- 遷移
[![Image from Gyazo](https://i.gyazo.com/b6a6f6153d4a815eba29bca898a653f7.gif)](https://gyazo.com/b6a6f6153d4a815eba29bca898a653f7)
- 投稿
[![Image from Gyazo](https://i.gyazo.com/4f2b94ae1b98c413979bd3e8b2b82530.gif)](https://gyazo.com/4f2b94ae1b98c413979bd3e8b2b82530)
- 編集、削除
[![Image from Gyazo](https://i.gyazo.com/9951e558f6c91fededf8c09fe4caf253.gif)](https://gyazo.com/9951e558f6c91fededf8c09fe4caf253)
- 検索
[![Image from Gyazo](https://i.gyazo.com/fa240452f1baa71cae3ed6a9ffdd9c10.gif)](https://gyazo.com/fa240452f1baa71cae3ed6a9ffdd9c10)

# 実装予定の機能
現在、スケジュール管理機能を実装中。
月毎に各研究室が行なっている業務を可視化し、相互援助を可能にしやすくするため。<br>
また、テスト機能についても今後実装していく。

# データベース設計
![sumine](https://user-images.githubusercontent.com/102218486/179115991-12689dfb-82d1-4ad8-93be-73e681730e82.png)

# 画面遷移図
![transition_diagram](https://user-images.githubusercontent.com/102218486/179116024-30785e03-b0f9-463e-aac1-474d84129926.png)

# 開発環境
- フロントエンド：HTML、CSS
- バックエンド：Ruby on Rails
- テキストエディタ：Visual Studio Code
- タスク管理：GitHub

# 工夫したポイント
現職の業務内での使用を想定しているため、他部署間連携を図り易くするために、チームと投稿内容の紐付けを特に意識して開発を進めた。<br>
また、各管理画面に検索機能を実装することで、より参照の手間を省く工夫を施した。<br>
業務内容という機密文書を取り扱う都合上、ユーザーは全て、登録ユーザー同士によって監視管理する体制をアプリに持たせることで、安全性を向上させた。

# 制作背景
アプリケーション制作において、ペルソナの声を反映させながら、使い勝手のよさを向上させる努力をした。<br>
Gemの導入などカリキュラムでは学習しなかった実装方法についても、可能な限り調べてアプリに反映させることができた。<br>
日常において、日々の学習を習慣付けるため、毎日３時間をアプリケーション開発や言語学習に充てた。