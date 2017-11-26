# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  released_at :datetime
#  avatar      :string
#  genre_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Movie < ApplicationRecord
	  include ActiveModel::Validator
  belongs_to :genre
    validates_with TitleBracketsValidator



 #    def SquareBraceValidator 
 #    	if title.include? "[["
	# 		puts "has two square brace - not saving"
	# 		id = false
	# 	elsif title.include? "]]"
	# 		puts "has two square brace - not saving"
	# 		id = false
	# 	elsif title.include? "["
	# 	puts "has opening square brace, now checking the closing brace... "
	# 		if title.include? "]"
	# 			puts "has closing square brace - saving"
	# 			else
	# 		id = false
	# 		puts "does not have a closing square brace - not saving"
			
	# 	end
	# end


 #  end
end
