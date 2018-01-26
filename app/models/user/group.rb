class User
  class Group < ActiveRecord::Base
    has_many :users, through: :members

    scope :valuators, -> { where(kind: "valuators") }
  end
end