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

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| experience_id | integer    | null: false |
| text          | text       | null: true  |
| user_id       | references | null: false |

### Association

- belongs_to :user