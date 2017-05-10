json.array! @resumes.each do |resume|
  json.id resume.id
  json.first_name resume.first_name
  json.last_name resume.last_name
  json.email resume.email
  json.phone_number resume.phone_number
  json.short_bio resume.short_bio
  json.linkdin_url resume.linkdin_url
  json.twitter_handle resume.twitter_handle
  json.blog_url resume.blog_url
  json.resume_url resume.resume_url
  json.github_url resume.github_url
  json.photo_url resume.photo_url
  json.experiences resume.experiences.each do |experience|
    json.id experience.id
    json.start_date experience.start_date
    json.end_date experience.end_date
    json.job_title experience.job_title
    json.company_name experience.company_name
    json.details experience.details
    json.student_id experience.student_id
  end
  json.capstones resume.capstones.each do |capstone|
    json.id capstone.id
    json.name capstone.name
    json.description capstone.description
    json.url capstone.url
    json.screenshot_url capstone.screenshot_url
    json.student_id capstone.student_id
  end
  json.skills resume.skills.each do |skill|
    json.id skill.id
    json.skill skill.skill
  end
  json.educations resume.educations.each do |education|
    json.id education.id
    json.start_date education.start_date
    json.end_date education.end_date
    json.degree education.degree
    json.university_name education.university_name
    json.details education.details
    json.student_id education.university_name
  end
end 










