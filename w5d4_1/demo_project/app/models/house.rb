 
class CreateHouses < ActiveRecord::Migration[7.0]
    def change
      create_table :houses do |t|
        t.string :address
        t.timestamps
      end
    end
  end



 
class House < ApplicationRecord
    has_many(
      :houses,
      class_name: 'House',
      foreign_key: :house_id,
      primary_key: :id
    )
  end

