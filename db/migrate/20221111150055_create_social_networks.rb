class CreateSocialNetworks < ActiveRecord::Migration[5.2]
  def change
    create_table :social_networks do |t|
      t.string :icon
      t.string :url
      t.references :sociable, polymorphic: true
      t.text :description

      t.timestamps
    end
  end
end
