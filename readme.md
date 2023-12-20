# トレーナーチェック1 難易度：中（2問）
### 1問目
- 受講生像1
- エラー内容：resourcesのあとのbooksを単数形に
### 2問目
- 受講生像3
- エラー内容：booksコントローラーのcreateアクションが二重に定義されている（追加質問する）
- 追加質問：

# 練習場
## マナー　難易度：低（2問）
### 1問目
- 受講生像2
- エラー内容：インスタンス変数・ローカル変数（追加質問する）
### 2問目
- 受講生像2
- エラー内容：syntax error

## 対応 難易度：高（2問）
### 1問目
- 受講生像3
- エラー内容：favorited_by?がない
### 2問目
- 受講生像3
- エラー内容：param is missing

## 両方 難易度：中（2問）
### 1問目
- 受講生像1
- エラー内容：link_toのhttpメソッドのdeleteが抜けてる（ログアウトボタン）
### 2問目
- 受講生像1
- エラー内容：sessions/new.html.erbのnameの入力欄がemilかつemail_fieldになっている


# トレーナーチェック2 難易度：高（2問）
### 1問目
- 受講生像1
- エラー内容：routesの順番からなる無限リダイレクト
### 2問目
- 受講生像3
- エラー内容：param is missing（コメント）


# トレーナーチェック2（再研修）難易度：高（2問）
### 1問目
- 受講生像1
- エラー内容：application_controllerのdevise_parameter_sanitizerがname
> 正しくは、email
- devise.rbのpermitted_parameterの設定がemailのまま
> 正しくは 、name
### 2問目
- 受講生像3
- エラー内容：book_comment.rb
- belongs_to :users, belongs_to :booksとなっている。
- Users must exist, Books must exist}