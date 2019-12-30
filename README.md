# kakeibo app


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



