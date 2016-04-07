class ChangePasswordColumnToDigest < ActiveRecord::Migration
  def change
    rename_column :heros, :password, :password_digest
  end
end
