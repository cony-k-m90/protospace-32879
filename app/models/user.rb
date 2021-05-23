class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< Updated upstream
=======
  
  has_many  :prototypes
  has_many  :comments

  # emailとpasswordが空だと保存できないバリデーションは標準で用意されている。
  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true
>>>>>>> Stashed changes
end
