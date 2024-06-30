お問い合わせフォーム

■環境構築
Dockerビルド
1.git clone リンク
2.dorker-compose up -d-build
*MySQLは、OSによって起動しない場合があるのでそれぞれのPCに合わせてdocker-compose.ymlファイルを編集してください。

Laravel環境構築
1.docker-compose exec php bash
2.composer install
3.enc.exampleファイルから.envを作成し、環境変数を変更
4.php artisan migrate
5.php artisan db:seed

■使用技術
・PHP 8.0
・Laravel 10.0
・MySQL 8.0

■ER図
index.drawio.png

■URL
・開発環境:http://localhost/
・phpMyAdmin：http://localhost:8080/

※時間が足りず、お問い合わせフォーム入力・確認画面しか作成できておりません。
　大変申し訳ございません。
