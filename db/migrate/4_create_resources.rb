class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources do |t|
			t.integer :song_id, default: 1
      t.string :name
      t.string :description
      t.string :format
			t.string :location
    end
  end
end
