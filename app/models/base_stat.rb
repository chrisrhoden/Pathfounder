class BaseStat < ActiveRecord::Base
  belongs_to :stat
  belongs_to :player
  attr_accessible :value, :stat
  delegate :name, :short_name, to: :stat
  default_scope includes(:stat)
end
