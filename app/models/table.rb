class Table < ApplicationRecord
  has_many :rows

  validates_presence_of :title, :user_id
end
