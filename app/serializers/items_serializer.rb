class ItemsSerializer < ActiveModel::Serializer
  attribute :items, :id,
            :image_url,
            :description,
            :name

end
