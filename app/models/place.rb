# == Schema Information
#
# Table name: places
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  desc          :text
#  address       :string(255)
#  lat           :float
#  long          :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  area          :string(255)
#  time_slot     :string(255)
#  category      :string(255)
#  display_type  :string(255)
#  display_price :string(255)
#  image_name    :string(255)
#

class Place < ActiveRecord::Base
  attr_accessible :name, :desc

  # validates :address, presence: true
  # validates :desc, presence: true
  # validates :lat, presence: true
  # validates :long, presence: true
  # validates :name, presence: true
  # validates :area, presence: true
  # validates :time_slot, presence: true
  # validates :category, presence: true
  # validates :display_price, presence: true
  # validates :image_name, presence: true

end
