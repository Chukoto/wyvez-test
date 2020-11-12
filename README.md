# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| first_name         | string  | null: false |
| last_name          | string  | null: false |
| birthday           | date    | null: false |
| gender             | integer | null: false |

### Association

- has_many :questions
- has_many :comments
- has_many :bookmarks
- has_many :papas
- has_one  :profile

## questions テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| category_id | integer    | null: false                    |
| title       | string     | null: false                    |
| text        | string     | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- has_many :bookmarks

## comments テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| text         | string     | null: false                    |
| user         | references | null: false, foreign_key: true |
| question     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :question

## bookmarks テーブル

| Column       | Type    | Options     |
| ------------ | ------- | ----------- |
| user_id      | integer | null: false |
| question_id  | integer | null: false |

### Association

- belongs_to :user
- belongs_to :question

## profiles テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| trans_exp _id         | integer    | null: false                    |
| papa_exp_id           | integer    | null: false                    |
| text                  | text       | null: false                    |
| user                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## papas テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| name                  | string     | null: false                    |
| age_id                | string     | null: false                    |
| marriage_id           | string     | null: false                    |
| child_id              | string     | null: false                    |
| memo                  | string     | null: true                     |
| user                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user