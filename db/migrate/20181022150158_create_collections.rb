class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
			t.string :name
    end
  end
end
