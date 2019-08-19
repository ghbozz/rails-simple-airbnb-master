class AddUserIdToFlats < ActiveRecord::Migration[5.1]
  def change
    add_reference :flats, :user, index: true
  end
end
