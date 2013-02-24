class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :badge_name
      t.string :badge_url
      t.integer :user_id

      t.timestamps
    end
    add_index :badges, [:user_id, :badge_name, :created_at]
  end
end
