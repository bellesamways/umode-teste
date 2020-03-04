class FabricVariant < ApplicationRecord
  belongs_to :fabric
  has_many :fabric_variant_supplier, dependent: :destroy
end
