class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :blogs, dependent: :destroy
         has_many :comments, dependent: :destroy

         def names_joined
           fullname = "#{first_name} #{last_name}"
         end
end
