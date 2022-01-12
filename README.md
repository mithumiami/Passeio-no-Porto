# Passeio no Porto

## サイト概要
ポルトの観光地や名産品のシェア。
ユーザーは自身でポルト市の地区を選択し、写真と共にその地区の観光地・その観光地の名産品を投稿することができる。
また、他のユーザーが投稿した観光地や名産品を地区一覧・観光地一覧・名産品一覧・検索窓から探し、閲覧することができる。
このアプリケーションによって、ユーザーはポルト市を観光、ショッピングする際に人気の観光スポットやお土産品を閲覧でき、また自身のポルト市での体験をリアルタイムでシェアできる。
管理者は、ユーザーの投稿を閲覧することで、新たな観光スポットをいち早く認知することができる。
加えて、管理者・ユーザーの双方からの投稿によって、戦略的に観光誘致ができる。


### サイトテーマ
様々なユーザーがポルトの観光地や名産品を閲覧、共有できるアプリケーション。

### テーマを選んだ理由
ポルトガルのポルトへ留学した際に、観光スポットやレストラン、おすすめのお土産品などを調べたいと思いました。
しかしポルトガル観光サイトの主要地はリスボンが多く、ポルトの魅力が充分伝わるようなサイトがありません。
様々な人がポルトの魅力に触れ、ポルトの良さを知るきっかけになるサイトを作りたいと思い、このテーマにしました。

### ターゲットユーザー
ポルトガル・旅行・ヨーロッパ文化に興味がある人。

### 主な利用シーン
旅行の下調べの時、ヨーロッパ文化のリサーチを行う時など。

### 機能一覧
#### 全体
- ヘッダーに検索窓を設置する。
- 地区ごとにジャンル分けを行い、投稿が閲覧できるようにする。
- 一年以上前の投稿は自動的に削除される。（可能であれば実装したい。）
- トップページにおすすめの投稿が表示される。

#### ユーザー
- 会員登録、ログイン・ログアウト、退会ができる。
- ログインはメールアドレスとパスワードで行う。
- ログイン後、ページのヘッダー表示が変更されユーザー名が表示される。
- トップページ・aboutページはログインなしで行える。
- 自身の投稿に関して、新規登録、編集、閲覧、削除ができる。
- 投稿は下記の情報をもつ。
  - タイトル（観光地名/商品名）
  - 説明文
  - 地区名
  - 画像
  - いいね（非同期通信を実装する予定。）
  - 公式HPのURL
  - タグ

- 他者の投稿に対し、いいねすることができる。なお投稿の編集・削除は行えない。

- ユーザーはマイページから下記が行える。
  - ユーザー情報の閲覧・編集・退会
  - 投稿履歴の閲覧

- 投稿履歴一覧では下記の情報が表示される。
  - 投稿画像
  - タイトル

- 投稿履歴詳細画面では下記の情報が表示される。
  - 投稿日
  - 投稿画像
  - タイトル
  - 説明文
  - タグ

- アプリケーションについて問い合わせフォームから問い合わせが行える。（メール通知は実装しない予定。）

- 会員情報登録の際、下記の情報をユーザー情報として登録できる。
  - 名前（姓・名）
  - アカウント名
  - メールアドレス
  - 電話番号
  - パスワード


#### 管理者
- 管理者用メールアドレスとパスワードでログインできる。
- 投稿の新規登録、編集、閲覧ができる。
- 投稿は下記の情報をもつ。
  - タイトル（観光地名/商品名）
  - 説明文
  - 地区名
  - 画像
  - いいね（非同期通信を実装する予定。）
  - タグ

- 会員登録されているユーザーの情報の閲覧、編集、退会処理が行える。
- ユーザーの投稿履歴を一覧・詳細で閲覧できる。
- ユーザーごとの投稿履歴が閲覧できる（可能であれば実装したい。）
- ユーザーの投稿履歴には以下の情報が表示される。
  - 投稿日時
  - 投稿者名
  - 投稿画像
  - 投稿内容
  - 地区名

- ユーザーからの問い合わせ内容を閲覧できる。（メール通知は実装しない予定。）



## 設計書（後日更新します）
### ER図

### テーブル定義書
https://docs.google.com/spreadsheets/d/1QdboKez4aRx9LvrMvtp5lXUy2ub0J4pzS-vied-wk70/edit#gid=375051428

### アプリケーション詳細設計書
https://docs.google.com/spreadsheets/d/1Raf1Kffht-c62BYZErpKtIPC6jmTvT8p/edit#gid=549108681

## チャレンジ要素一覧
<https://docs.google.com/spreadsheets/d/1lW6UQAL9_4BBHfmx9qFglWuXn0uXGXPr6Jl6kWCVtcA/edit#gid=0>

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9
