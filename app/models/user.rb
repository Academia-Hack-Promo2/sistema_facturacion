class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :invoices, dependent: :destroy
  has_many :associateds, dependent: :destroy
  has_many :products, dependent: :destroy
  validates :username, length: { maximum: 20 }, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	def full_name
    username.blank? ? email : username
	end
end
