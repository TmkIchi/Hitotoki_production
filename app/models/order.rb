class Order < ApplicationRecord
    belongs_to :user, class_name: "user"
    belongs_to :order, class_name: "order"
end
