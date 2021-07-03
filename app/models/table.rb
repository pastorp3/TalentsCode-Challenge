class Table < ApplicationRecord
  has_many :rows
  belongs_to :user

  validates_presence_of :title, :user_id
end
