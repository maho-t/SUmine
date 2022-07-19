# アプリケーション名
#### **mine**
![minelogo](https://user-images.githubusercontent.com/102218486/179115974-66f4f42d-3e77-4ea7-a135-eca3a1ed1f14.png)

# アプリケーション概要
業務マニュアルや、対応した事柄をストックすることで、円滑な引き継ぎやノウハウの蓄積ができる。

# URL
https://sumine.herokuapp.com/

# テスト用アカウント
- Basic認証パスワード：
- Basic認証ID：
- メールアドレス：
- パスワード：

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

## ユーザー
- ユーザー登録
[![Image from Gyazo](https://i.gyazo.com/c495c207e86f78d62c41a015d2591572.gif)](https://gyazo.com/c495c207e86f78d62c41a015d2591572)
- ユーザー管理
[![Image from Gyazo](https://i.gyazo.com/a1f43fbb79203eb69c7418083892488e.gif)](https://gyazo.com/a1f43fbb79203eb69c7418083892488e)

## チーム
- チーム作成
[![Image from Gyazo](https://i.gyazo.com/7a5539f36676fde03cae6ea6f4d8b422.gif)](https://gyazo.com/7a5539f36676fde03cae6ea6f4d8b422)
- チーム管理
[![Image from Gyazo](https://i.gyazo.com/e3147161fe010ef7997f7e82ea85ea67.gif)](https://gyazo.com/e3147161fe010ef7997f7e82ea85ea67)

## マニュアル
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

## 問い合わせ
- 遷移
- 投稿
- タグ
- 検索

## メール
- 遷移
- 投稿
- 検索
- PDF資料へのアクセス

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
- インフラ：
- テスト：
- テキストエディタ：Visual Studio Code
- タスク管理：GitHub

# ローカルでの動作方法

# 工夫したポイント
現職の業務内での使用を想定しているため、他部署間連携を図り易くするために、チームと投稿内容の紐付けを特に意識して開発を進めた。<br>
また、各管理画面に検索機能を実装することで、より参照の手間を省く工夫を施した。<br>
業務内容という機密文書を取り扱う都合上、ユーザーは全て、登録ユーザー同士によって監視管理する体制をアプリに持たせることで、安全性を向上させた。

# 制作背景
アプリケーション制作において、ペルソナの声を反映させながら、使い勝手のよさを向上させる努力をした。<br>
Gemの導入などカリキュラムでは学ぶことがなかった実装方法についても、可能な限り調べアプリに反映させることができた。<br>
日常において、日々の学習を習慣付けるため、始業前と就業後に合計３時間を費やし、アプリケーション開発や言語学習に充てた。