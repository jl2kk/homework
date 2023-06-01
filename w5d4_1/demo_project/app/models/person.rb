
class CreatePerson < ActiveRecord::Migration[7.0]
    def change
      create_table :persons do |t|
        t.string :name
        t.string :person_id
  
        t.timestamps
      end
    end
  end

belongs_to :house

class Person < ApplicationRecord
    has_many(
      :Persons,
      class_name: 'Person',
      foreign_key: :person_id,
      primary_key: :id
    )
  end

