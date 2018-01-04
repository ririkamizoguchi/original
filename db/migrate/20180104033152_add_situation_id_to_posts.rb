class AddSituationIdToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :situation
  end
end
