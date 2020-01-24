class Changecolumndefaulttodate < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :dob, to: null
    change_column_default :users, :followers, to: []
    change_column_default :users, :followings, to: []

  end
end
