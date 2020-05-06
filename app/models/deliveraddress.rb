class Deliveraddress < ApplicationRecord
    belongs_to :user , class_name: "user"
    belongs_to :order, class_name: "order"
    has_ancestry
end
