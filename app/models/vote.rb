# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  link_id    :integer
#  up         :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ActiveRecord::Base
	attr_accessible :link_id, :up
	validates :user_id, :uniqueness => { :scope => :link_id }

  belongs_to :user
  belongs_to :link
end
