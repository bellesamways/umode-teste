class Fabric < ApplicationRecord
  validates_presence_of :name
  has_many :fabric_variant
end
