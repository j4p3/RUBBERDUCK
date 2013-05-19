# == Schema Information
#
# Table name: places
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  desc       :text
#  address    :string(255)
#  lat        :float
#  long       :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  area       :string(255)
#

class Place < ActiveRecord::Base
  attr_accessible :address, :desc, :lat, :long, :name, :area

  validates :address, presence: true
  validates :desc, presence: true
  validates :lat, presence: true
  validates :long, presence: true
  validates :name, presence: true
  validates :area, presence: true

end
