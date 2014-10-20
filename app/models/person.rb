require_relative '../../db/config'

class Person < ActiveRecord::Base

  def name
    "#{firstname} #{middlename} #{lastname} #{name_suffix}"
  end

end





# CREATE TABLE people (
#   title varchar(255)
#   firstname VARCHAR(255) NOT NULL,
#   middlename varchar(255)
#   lastname varchar(255)
#   name_suffix varchar(255)
#   nickname varchar(255)
#   party varchar(255)
#   state varchar(255)
#   district varchar(255)
#   in_office varchar(255)
#   gender varchar(255)
#   phone integer NOT NULL,
#   fax integer NOT NULL,
#   website  (100) NOT NULL,
#   webform varchar(255)
#   congress_office varchar(255)

#   gender VARCHAR (10) NOT NULL,
#   birthdate integer NOT NULL,
#   twitter_id integer (15) NOT NULL
#   );




# LOAD DATA INFILE 'db/data/legislators.csv'
# INTO TABLE senator
# FIELDS TERMINATED BY ','
# ENCLOSED BY '"'
# LINES TERMINATED BY '\n'
# IGNORE 1 ROWS;


# CREATE TABLE "senators" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, , , ", ", ", ", ", ", ", ", ", , ", ", "bioguide_id" integer, "votesmart_id" integer, "fac_id" integer, "govtrack_id" integer, "crp_id" integer, "twitter_id" integer, "congresspedia_url" varchar(255), "youtube_url" varchar(255), "facebook_id" integer, "official_rss" varchar(255), "senate_class" varchar(255), "birthdate" integer, "created_at" datetime, "updated_at" datetime);
