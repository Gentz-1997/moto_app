class Post < ApplicationRecord
  belongs_to :spot
  belongs_to :user

  has_many_attached :images

  validates :content, presence: true
  validates :images,
  content_type: {in: %w[image/jpeg image/gif image/png], message: "は有効な形式のファイルをファイルを選択して下さい。" },
  size:{ less_than: 20.megabytes,message:"20MB以下のファイルを選択して下さい。"}
end
