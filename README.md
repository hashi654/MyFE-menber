# README

## Users テーブル
| Colum              | Type     | Options     |
| ------------------ | -------- |------------ |
| user_id            | integer  | null: false, unique: true |
| user_name          | string   | null: false |
| email              | string   | null: false, unique: true |
| encrypted_password | string   | null: false |
| user_sex           | string   | null: false |
| favorite_game      | string   |             |
| favorite_unit      | string   |             |
| favorite_weapon    | string   |             |

### Association

- has_many :Deployments

## Deployments テーブル

| Colum          | Type       | Options           |
| -------------- | ---------- |------------------ |
| title          | string     | null: false       |
| chapter        | string     | null: false       |
| visible        | boolean     | null: false       |
| view           | integer    | null: false       |
| user           | references | null: false, foreign_key: true |

### Association

 belongs_to :User
 has_many :DeploymentsUnits  

## deploymentsUnits テーブル

| Colum            | Type       | Options           |
| ---------------- | ---------  |------------------ |
| unitname      | string     | null: false       |
| lv            | integer    | null: false       |
| hp            | integer    | null: false       |
| power         | integer    | null: false       |
| magicpower    | integer    | null: false       |
| skill         | integer    | null: false       |
| speed         | integer    | null: false       |
| luck          | integer    | null: false       |
| defense       | integer    | null: false       |
| magicdefense  | integer    | null: false       |
| charm         | integer    | null: false       |
| move          | integer    | null: false       |
| deployment    | references | null: false, foreign_key: true |

### Association

- belongs_to :Deployments
- belongs_to :Users

## units テーブル
| Colum            | Type       | Options           |
| ---------------- | ---------  |------------------ |
| title         | string     | null: false       |
| unitname      | string     | null: false, unique: true  |
| lv            | integer    | null: false       |
| hp            | integer    | null: false       |
| power         | integer    | null: false       |
| magicpower    | integer    | null: false       |
| skill         | integer    | null: false       |
| speed         | integer    | null: false       |
| luck          | integer    | null: false       |
| defense       | integer    | null: false       |
| magicdefense  | integer    | null: false       |
| charm         | integer    | null: false       |
| move          | integer    | null: false       |
| hp_grow        | float    | null: false       |
| power_grow     　| float    | null: false       |
| magicpower_grow    | float    | null: false       |
| skill_grow         | float    | null: false       |
| speed_grow         | float    | null: false       |
| luck_grow          | float    | null: false       |
| defense_grow       | float    | null: false       |
| magicdefense_grow  | float    | null: false       |
| charm_grow         | float    | null: false       |
| move_grow          | integer    | null: false       |

### Association

- has_many :UnitsSkills
- has_many :UnitsJobs
- has_many :UnitsWeapons

## supports テーブル

| Colum          | Type      | Options           |
| -------------- | --------- |------------------ |
| unit1          | string    | null: false       |
| unit2          | string    | null: false       |
| support_level  | string    | null: false       |
| support_effect | string    | null: false       |

### Association

## unitsSkills テーブル

| Colum          | Type       | Options           |
| -------------- | ---------- |------------------ |
| id             | integer    | null: false, unique: true   |
| skill          | string     | null: false       |
| unit           | references | null: false, foreign_key: true |

### Association

- belongs_to :Units
- belongs_to :Skills

## Skills テーブル

| Colum          | Type       | Options           |
| -------------- | ---------- |------------------ |
| condition      | string     | null: false       |
| effect         | string     | null: false       |
| skill_id       | references | null: false, foreign_key: true |

### Association

- has_many :UnitsSkills

## unitsJobs テーブル

| Colum          | Type       | Options           |
| -------------- | ---------- |------------------ |
| id             | integer    | null: false, unique: true  |
| job            | string     | null: false       |
| unit           | references | null: false, foreign_key: true |

### Association

- belongs_to :Units
- belongs_to :Jobs

## Jobs テーブル

| Colum          | Type       | Options           |
| -------------- | ---------- |------------------ |
| move           | string     | null: false       |
| ability        | string     | null: false       |
| lank           | string     | null: false       |
| job_id         | references | null: false, foreign_key: true |

### Association

- has_many :UnitsJobs

## unitsWeapons テーブル

| Colum          | Type       | Options           |
| -------------- | ---------- |------------------ |
| id             | integer    | null: false, unique: true |
| weapon         | string     | null: false       |
| unit           | references | null: false, foreign_key: true |

### Association

- belongs_to :Units
- belongs_to :Weapons

## weapons テーブル

| Colum          | Type       | Options           |
| -------------- | ---------- |------------------ |
| power          | integer    | null: false       |
| range          | integer    | null: false       |
| type           | string     | null: false       |
| effect         | string     | null: false       |
| id             | references | null: false, foreign_key: true |

### Association

- has_many :UnitsWeapons

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
