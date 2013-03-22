class AddWelcomeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :welcome, :integer
  end
end
