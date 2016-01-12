class AddGinIndexToEvent < ActiveRecord::Migration
  def change
  	add_index :events, :payload, using: :gin
  end
end
