#リポジトリ名
## kakeibo app


## 概要

月ごとの収支を管理できるシンプルな家計簿アプリ


## 機能説明

- 月ごとに収入、支出、その差額をそれぞれ管理できる
- ユーザー登録ができる
- カテゴリーごとに管理できる


## 使い方

### ユーザー登録機能
- ヘッダーの新規登録からユーザー登録をする。もしくは登録されたユーザーでログインする。

### 収支確認及び月、カテゴリーごとの確認
- ログインできたら、ヘッダーの収入ページへと支出ページへで収入と支出のページを切り替えられる。
- ヘッダーに見ている月の収支が表示される。
- 収入と支出のページで入力したデータを月、カテゴリー別で金額を確認できる。
- カテゴリー名の左にある三角形をクリックするとカテゴリーごとの内容を確認できる。
- 右のサイドバーの月を選択すると、その月のページへ遷移できる。

### 金額入力機能
- ヘッダーの右にある金額入力へから金額入力ページへ遷移する。
- 金額入力ページでカテゴリー、月、内容、金額を入力し、登録する。
なお、金額入力ページは収入と支出で分かれており、収入の入力は収入ページから、支出の入力は支出ページから遷移できる。


## インストール
 
```
$ git clone https://github.com/hetiman0524/kakeibo.git
$ cd kakeibo
```


## 開発環境

- html5
- Haml 5.1.2
- scss 3.7.4
- ruby 2.5.1
- rails 5.2.3
- jQuery 3.1.0


## データベース

## userテーブル
|column|Type|Option|
|------|----|------|
|name|string|null: false|
|email|string|null: false|
|password|string|null:false|

### Association
- has_many :expense_contents
- has_many :income_contents


## income_content
|column|Type|Option|
|------|----|------|
|content|string|null: false|
|money|string|null: false|
|income_categoty_id|string|null:false|
|month_id|string|null:false|
|user_id|string|null:false|

### Association
- belongs_to_active_hash :income_category
- belongs_to_active_hash :month
- belongs_to :user


## expense_content
|column|Type|Option|
|------|----|------|
|content|string|null: false|
|money|string|null: false|
|expense_categoty_id|string|null:false|
|month_id|string|null:false|
|user_id|string|null:false|

### Association
- belongs_to_active_hash :expense_category
- belongs_to_active_hash :month
- belongs_to :user


## 作者

[@mjhettiman](https://twitter.com/mjhettiman)
mail to: heti0524.jdi@gmail.com
