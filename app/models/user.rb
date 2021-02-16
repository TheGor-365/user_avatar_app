class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  add_one_attached :avatar

  def avatar_thumbnail
    avatar.variant(resize: '150x150!').processed
  end

end
