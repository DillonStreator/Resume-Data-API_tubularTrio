
  50.times do 
    skill = Skill.new(
      skill: Faker::Job.key_skill
    )
    skill.save
  end

20.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  start_date = Faker::Date.between(5.years.ago, Date.today)
  end_date = start_date + 1.year
  random = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  student = Student.new(
    first_name: first_name,
    last_name: last_name,
    email: "#{first_name}.#{last_name}@email.com",
    phone_number: Faker::PhoneNumber.phone_number,
    short_bio: Faker::Lorem.sentence,
    linkdin_url: "linkedin.com/#{first_name}#{last_name}",
    twitter_handle: "##{first_name}#{last_name}",
    blog_url: "medium.com/#{first_name}#{last_name}",
    resume_url: "resume.com/#{first_name}#{last_name}",
    github_url: "github.com/#{first_name}#{last_name}",
    photo_url: Faker::Avatar.image,
    password: "password"
  )
  student.save
  experience = Experience.new(
    start_date: start_date,
    end_date: end_date,
    job_title: Faker::Job.title,
    company_name: Faker::Company.name,
    details: Faker::Lorem.sentence,
    student_id: student.id
  )
  experience.save
  capstone = Capstone.new(
    name: Faker::Lorem.word,
    description: Faker::Lorem.sentence,
    url: "capstone.com/#{first_name}#{last_name}",
    screenshot_url: Faker::LoremPixel.image,
    student_id: student.id
  )
  capstone.save

  random.sample.times do
    student_skill = StudentSkill.new(
      skill_id: Skill.all.sample.id,
      student_id: student.id
    )
    student_skill.save
  end
  ed_start_date = Faker::Date.between(20.years.ago, 5.years.ago)
  [1, 2, 3, 4].sample.times do
    education = Education.new(
      start_date: ed_start_date,
      end_date: ed_start_date + 3.years,
      degree: Faker::Educator.course,
      university_name: Faker::Educator.university,
      details: Faker::Lorem.sentence,
      student_id: student.id
    )
    education.save
  end


end
puts "seeds complete"