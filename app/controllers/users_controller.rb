class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @tweets = user.tweets.page(params[:page]).per(5).order("created_at DESC")
  end
end

# 3行目では、コメント欄に表示されるユーザーをクリックすることで送られたidをparamsで取得して、
# そのユーザーのレコードをuserという変数に代入しています。5 行目ではアソシエーションを利用することで、そのユーザーが投稿したツイートを取得して、@tweetsに代入しています。