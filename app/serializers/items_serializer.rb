class ItemsSerializer < ActiveModel::Serializer
  attribute :item, :id,
            :image_url,
            :description,
            :name

end
