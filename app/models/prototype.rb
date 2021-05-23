class Prototype < ApplicationRecord
  #アソシエーションで belongs_to を指定した場合は、相手のモデルのid(user_id)
  #が存在するというバリデーションは不要になる。
  belongs_to  :user
  has_many    :comments, dependent: :destroy
  has_one_attached :image

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :user, presence: true
  validates :image, presence: true
end
