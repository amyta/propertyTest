class UserSerializer < ActiveModel::Serializer
    attributes :id, :email, :remember_created_at
  end