class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
	  t.string :description
	  t.integer :approved
	  t.integer :spam
	  t.string :facebook_id
	  t.string :email
	  t.string :thumb_id
	  t.string :thumb_original_id
	  t.string :thumb_url
	  t.string :thumb_mime_type
	  t.string :thumb_basename
	  t.string :thumb_extension
	  t.string :video_filename
	  t.string :video_id
	  t.string :video_original_id
	  t.string :video_duration
	  t.string :video_extension
	  t.string :video_mime_type
	  t.string :video_url
	  t.integer :video_file_size
	  t.datetime :video_updated_at
      t.timestamps
    end
	add_index :videos, :email
	add_index :videos, :video_id
  end
end
