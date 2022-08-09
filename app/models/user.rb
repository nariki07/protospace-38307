class User < ApplicationRecord
  validates :position, presence: true
  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true

  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  
  has_many :prototypes
  has_many :comments, dependent: :destroy

end
