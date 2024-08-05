class Project < ApplicationRecord
  acts_as_tenant :organization
  belongs_to :user 
end
