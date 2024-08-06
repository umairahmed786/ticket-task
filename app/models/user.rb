class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  acts_as_tenant :organization

  belongs_to :role, class_name: 'LookUp', foreign_key: 'role_id'
end
