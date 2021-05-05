class Prototype < ApplicationRecord
  #アソシエーションで belongs_to を指定した場合は、相手のモデルのid(user_id)
  #が存在するというバリデーションは不要になる。
  belongs_to :user
end
