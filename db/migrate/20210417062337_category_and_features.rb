class CategoryAndFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.datetime :created_at
      t.datetime :updated_at
    end

   
    create_table :offerings do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :featueres do |t|
      t.string :name
      t.text :description
      t.boolean :active 
      t.datetime :created_at
      t.datetime :updated_at
    end    

  end
end
