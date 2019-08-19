class AddEmailToPerson < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :email, :string
  end
end
