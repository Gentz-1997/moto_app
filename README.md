# サービス概要
Moto Mapは、バイク乗り同士がツーリングに関する情報を共有できるアプリケーションです。
お気に入りのツーリングスポットを記録・共有することで、他のユーザーにとってモデルコースとしての参考になり、新たなツーリングスポットとの出会いを促します。また、ツーリング初心者には、ツーリングを始めるための「入り口」となることを目指しています。

# ターゲットユーザー
本アプリケーションは、ツーリング初心者からベテランライダーまで、あらゆるバイク乗りを対象としています。
幅広い年齢層が直感的に使えるデザインを意識し、誰もが簡単にスポット情報を検索・共有できる仕組みを提供します。

# サービス作成の背景
多くのバイク乗りは、ツーリングの行き先を決める際、目的地だけでなく経路選びにも強いこだわりを持っています。
「走っているときの気持ちよさ」や「景観の美しさ」などが、経路選択の重要な要素です。
私自身、父とツーリングをする中で、地図アプリには載っていないスポットや、ツーリングに最適な道を教えてもらい、走ることがよくありました。このような、バイク乗りにとって価値のある情報を共有できるプラットフォームを作りたいと思い、このサービスを開発しました。

# サービスのポイント
一般的な地図アプリには、ツーリングに不要な情報が多く含まれているため、バイカーが本当に必要とする情報を簡単に見つけられるようにMoto Mapを開発しました。
例えば、経路の快適さや景観の良さ、休憩に適した場所などをタグとして設定し、ツーリングに特化した情報を提供しています。この工夫により、外出先でも効率的に最適なツーリング計画を立てることができます。

# 本アプリケーションの機能
- 新規登録、ログイン機能
 →新規登録、ログインをすることで、本アプリケーションを利用することができるようにしています。ユーザー情報編集で、ユーザー画像からその他の情報を編集することが可能です。
- スポット登録機能
→スポット名、住所を入力しスポット登録をします。スポットにタグ付けして登録することが可能です。編集は全てのユーザーが可能で、削除については作成したユーザーのみができます。
- 投稿機能
→スポットに紐づいて感想を投稿することができます。
- 投稿一覧機能
- 検索機能
→住所、スポット名、タグなどから検索ができます。
- スポットお気に入り機能
※パスワード再設定機能については未実装

# 技術スタック
|カテゴリ|技術|
|:-|:-|
|フロントエンド|Rails 7.1.3, Javascript, TailwindCSS, DaisyUI|
|バックエンド|Rails7.1.3, Ruby3.3.1|
|データベース|PostgreSQL|
|環境構築|Docker|
|インフラ|Fly.io|
|Web API|Google Maps API( Maps Javascript API / Geocoding API )|

# 画面遷移図
https://www.figma.com/design/UeUDjMl3Cpn3yzV0njQzU2/%E3%83%89%E3%83%A9%E3%82%A4%E3%83%96%E3%83%BB%E3%83%84%E3%83%BC%E3%83%AA%E3%83%B3%E3%82%B0%E3%82%A2%E3%83%97%E3%83%AA?t=GuTqbLYtt3VyRPuV-0
※本画面遷移図は設計初期の段階で作成したもので、現在のデザインとは一部異なります。

# ER図
