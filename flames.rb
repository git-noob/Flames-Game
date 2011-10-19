#!/usr/bin/ruby
# encoding: utf-8
puts "Enter Your Name"
@yourname = gets.chomp
puts "Enter Your Partner's Name"
@partnername = gets.chomp
@string = "FLAMES"

@yourname.upcase!
@partnername.upcase!

@yourname.gsub!(/\s+/, "")
@partnername.gsub!(/\s+/, "")

@yourcount = @yourname.count(@partnername)
@partnercount = @partnername.count(@yourname)
@total_similarity = @yourcount + @partnercount

@string = @string * @total_similarity

@your_answer = @yourcount.to_i - 1
@partner_answer = @partnercount.to_i - 1
@flames_answer = @total_similarity.to_i - 1

@your_score = @string[@your_answer].chr
@partner_score = @string[@partner_answer].chr
@answer = @string[@flames_answer].chr

if @your_score == "F"
	puts "Your Score: Friends"
elsif @your_score == "L"
	puts "Your Score: Lovers"
elsif @your_score == "A"
	puts "Your Score: Angry"
elsif @your_score == "M"
	puts "Your Score: Married"
elsif @your_score == "E"
	puts "Your Score: Engaged"
elsif @your_score == "S"
	puts "Your Score: Sweet"
end

if @partner_score == "F"
	puts "Partner Score: Friends"
elsif @partner_score == "L"
	puts "Partner Score: Lovers"
elsif @partner_score == "A"
	puts "Partner Score: Angry"
elsif @partner_score == "M"
	puts "Partner Score: Married"
elsif @partner_score == "E"
	puts "Partner Score: Engaged"
elsif @partner_score == "S"
	puts "Partner Score: Sweet"
end

if @answer == "F"
	puts "Both Score: Friends"
elsif @answer == "L"
	puts "Both Score: Lovers"
elsif @answer == "A"
	puts "Both Score: Angry"
elsif @answer == "M"
	puts "Both Score: Married"
elsif @answer == "E"
	puts "Both Score: Engaged"
elsif @answer == "S"
	puts "Both Score: Sweet"
end

puts "This is an application made by " + "Andrew Duque Vicente.".upcase + "\n©2011 ADV Production. All Rights Reserved."
