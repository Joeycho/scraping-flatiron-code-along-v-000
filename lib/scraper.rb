require 'nokogiri'
require 'open-uri'

require 'pry'

require_relative './course.rb'

class Scraper

    def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

  def get_page
    binding.pry
    html = open("http://learn-co-curriculum.github.io/site-for-scraping/courses/")

    doc = Nokogiri::HTML(html)
  end

  def get_courses
  #  self.get_page.css(.block)
  end

  def make_courses
    course = Course.new()
  #  binding.pry
  #  course.title = self.get_courses.
  end
end
