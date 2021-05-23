class UsersController < ApplicationController

  def show
    #usersテーブルから該当のレコードを1行取得している。
    @user = User.find(params[:id])
    # usersテーブルとアソシエーションを組んでいるので、Prototypesテーブルから
    # @userで取得したレコードに紐づくprototypeを取得している。
    @prototype = @user.prototypes
  end

end