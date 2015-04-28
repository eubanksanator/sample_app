class AddIndexToUsersEmail < ActiveRecord::Migration
  ### This adds an index to the users table for the email attribute
  ### Makes sure that on DB level the email is unique and cant be duplicated
  def change
    add_index :users, :email, unique: true
  end
end
