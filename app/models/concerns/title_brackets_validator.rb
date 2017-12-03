require 'set'

class TitleBracketsValidator < ActiveModel::Validator
	   def validate(subject)
	   	t = subject.title

	 		if t.include? "()"
			subject.errors.add(:title, "has two empty brackets - not saving")
			end


			if t.include? ")"
				if t.exclude? "("
				subject.errors.add(:title, "has two empty brackets - not saving")
				end
			end

			if t.include? "("
				if t.exclude? ")"
				subject.errors.add(:title, "has two empty brackets - not saving")
				end
			end

			if /(.*?)\)(.*?)\(.*/.match(t)
				subject.errors.add(:title, "has two empty brackets - not saving")					
			end


			if /(.*?)\((.*?)\(.*/.match(t)
				subject.errors.add(:title, "has two empty brackets - not saving")					
			end

			if /(.*?)\)(.*?)\).*/.match(t)
				subject.errors.add(:title, "has two empty brackets - not saving")					
			end

	end
 end

