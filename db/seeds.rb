# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "csv"
require 'chronic'
require 'pp'

def read(fname)
  n=14
  
  CSV.foreach(fname) do |row|
    #puts row.size
    #puts "row#{n}=#{row[n]}"
    dt=Chronic.parse(row[1])
    #puts dt
    dk={
      #:post_id => row[0],
      :created_at => dt,
      :updated_at => dt,
      :name => row[2],
      :email => row[3],
      :title => row[4],
      :comment => row[5],
      :url => row[6],
      #:ip => row[7],
      :delete_key => row[8],
      #:photo_content_type => row[9],
      #:photo_width => row[10],
      #:photo_height => row[11],
      #:photo_upload_time => row[12],
      #:photo_viewable => row[13],
    }
    #pp dk
    article = Article.create(dk)
    puts article
  end
end

#read('db/img_csv.log')

def get_data()
  Article.all.each do |a|
    puts "id=#{a.id} title=#{a.title}"
  end
end

#get_data

def destroy_all()
  r=Article.destroy_all
  puts r
  puts "destory_all"
end
#destroy_all
