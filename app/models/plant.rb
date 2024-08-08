class Plant < ApplicationRecord
  belongs_to :garden
  has_many :completions
  has_many :chores, through: :completions

  validates :name, presence: true


  def last_chore_name
    self.chores.last.name
  end
end
