class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :name
      t.text :content
      t.string :summary

      t.timestamps
    end
  end
end
