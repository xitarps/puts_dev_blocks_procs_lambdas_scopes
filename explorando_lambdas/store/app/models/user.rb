class User < ApplicationRecord
  scope :only_actives, -> { where(active: true) }
  scope :only_non_actives, -> { where(active: false).joins.limit(10) }
end
