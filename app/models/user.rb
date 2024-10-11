class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  validates :avatar,
  content_type: {in: %w[image/jpeg image/gif image/png], message: "は有効な形式のファイルをファイルを選択して下さい。" },
  size:{ less_than: 5.megabytes,message:"5MB以下のファイルを選択して下さい。"}
end
