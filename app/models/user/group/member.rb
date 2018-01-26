class User
  class Group
    class Member < ActiveRecord::Base
      belongs_to :group
      belongs_to :user
    end
  end
end