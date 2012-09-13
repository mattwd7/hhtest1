class QuartersCourses < ActiveRecord::Base
  attr_accessible :course_id, :quarter_id
  
  belongs_to :quarter
  belongs_to :course
end
