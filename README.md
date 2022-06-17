## users テーブル

|Column                |Type   |Options                    |
|----------------------|-------|---------------------------|
|last_name             |string |null: false                |
|first_name            |string |null: false                |
|lastname_kana         |string |null: false                |
|firstname_kana        |string |null: false                |
|email                 |string |null: false, unique: true  |
|password              |string |null: false                |
|password_confirmation |string |null: false                |

### Association

- has_many :team_users
- has_many :teams, through: :team_users
- has_many :manuals
- has_many :askings
- has_many :schedules
- has_many :comments


## teams テーブル

|Column     |Type    |Options      |
|-----------|--------|-------------|
|name       |string  |null: false  |
|prof       |string  |null: false  |
|email      |string  |             |

### Association

- has_many :team_users
- has_many :users, through: :team_users
- has_many :manuals
- has_many :askings
- has_many :schedules


## team_users テーブル

|Column |Type       |Options                        |
|-------|-----------|-------------------------------|
|team   |references |null: false, foreign_key: true |
|user   |references |null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :team


## manuals テーブル

|Column      |Type       |Options                        |
|------------|-----------|-------------------------------|
|title       |string     |null: false                    |
|manual_text |text       |null: false                    |
|team        |references |null: false, foreign_key: true |
|user        |references |null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :team
- has_many :comments


## askings テーブル

|Column    |Type       |Options                        |
|----------|-----------|-------------------------------|
|question  |text       |null: false                    |
|answer    |text       |null: false                    |
|team      |references |null: false, foreign_key: true |
|user      |references |null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :team


## schedules テーブル

|Column    |Type       |Options                        |
|----------|-----------|-------------------------------|
|title     |string     |null: false                    |
|team      |references |null: false, foreign_key: true |
|user      |references |null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :team


## comments テーブル

|Column    |Type       |Options                        |
|----------|-----------|-------------------------------|
|comment   |text       |null: false                    |
|manual    |references |null: false, foreign_key: true |
|team      |references |null: false, foreign_key: true |
|user      |references |null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :manual


## mails テーブル

|Column      |Type       |Options                        |
|------------|-----------|-------------------------------|
|title       |string     |null: false                    |
|text        |text       |null: false                    |
|team        |references |null: false, foreign_key: true |
|user        |references |null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :team