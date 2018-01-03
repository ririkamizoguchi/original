class AddSmallAreaIdToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :smallarea
  end
end
