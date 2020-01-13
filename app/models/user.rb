class User < ApplicationRecord
  def self.search(search) #ここでのself.はUser.を意味する
    if search
      where(['name LIKE ?', "%#{search}%"]) #検索とnameの部分一致を表示。User.は省略
    else
      all #全て表示。User.は省略
    end
  end
  
  
  
  validates :name, presence: true
  validates :email, presence: true

  has_secure_password
  
  has_many :topics
end