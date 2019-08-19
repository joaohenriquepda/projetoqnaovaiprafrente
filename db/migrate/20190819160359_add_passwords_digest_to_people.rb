class AddPasswordsDigestToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :password_digest, :string
    add_column :people, :recovery_password_digest, :string
    add_column :people, :transaction_password_digest, :string
  end
end
