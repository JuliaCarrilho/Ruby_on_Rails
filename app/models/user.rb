class User < ApplicationRecord
    attr_accessor :bio, :email, :full_name, :location, :password

    validates_presence_of :email, :full_name, :location, :password
end
