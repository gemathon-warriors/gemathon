class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :git_url
      t.string :classification

      t.timestamps
    end
  end
end
