class User < ActiveRecord::Base

  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile

  validates :name, :email, :password, presence: true
end


