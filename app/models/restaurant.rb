class Restaurant < ActiveRecord::Base
  validates :stars, inclusion: { in: [1,2,3], allow_nil: false }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true

  has_many :reviews, dependent: :destroy



end
