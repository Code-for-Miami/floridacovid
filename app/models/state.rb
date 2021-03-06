class State < ApplicationRecord
  belongs_to :country
  has_many :state_stats
  has_many :age_stats
  has_many :counties
end

# == Schema Information
#
# Table name: states
#
#  id         :bigint           not null, primary key
#  lat        :string
#  long       :string
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  country_id :bigint
#
# Indexes
#
#  index_states_on_country_id  (country_id)
#
# Foreign Keys
#
#  fk_rails_...  (country_id => countries.id)
#
