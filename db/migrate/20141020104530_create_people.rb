require_relative '../config'

class CreatePeople< ActiveRecord::Migration
  def change
      create_table :people do |t|
      t.string :title
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :name_suffix
      t.string :nickname
      t.string :party
      t.string :state
      t.string :district
      t.string :in_office
      t.string :gender
      t.integer :phone
      t.integer :fax
      t.string :website
      t.string :webform
      t.string :congress_office
      t.integer :bioguide_id
      t.integer :votesmart_id
      t.integer :fec_id
      t.integer :govtrack_id
      t.integer :crp_id
      t.integer :twitter_id
      t.string :congresspedia_url
      t.string :youtube_url
      t.integer :facebook_id
      t.string :official_rss
      t.string :senate_class
      t.integer :birthdate

      t.timestamps
    end
  end
end