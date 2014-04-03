class Game < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  belongs_to :player, class_name: "User"
end
