FactoryGirl.define do
  factory :article do
    title         "How do I get a driver license for the first time?"
    content_main  "Monkeys are great"
    content_main_extra "extra monkeys are better"
    content_need_to_know "things you need to know about monkeys"
    preview       "Go to a driver license station with your proof of legal presence, take a written exam there as well as eye test, photograph, and fingerprints, pay fees, and schedule a road test appointment."
    tags          "driver license, drivers license, driver's license, driving license, license, driving, drive, driving test, written test, written exam, driving exam, road test, road exam, new driver license, new driver's license, new driving license"
    contact
    status        "Published"

    factory :article_no_tags do
      tags ""
    end

    factory :article_random do
      title SecureRandom.hex(16)
    end
  end

  factory :guide do
    title         "How do I get a driver license for the first time?"
    content_main  "Monkeys are great"
    content_main_extra "extra monkeys are better"
    content_need_to_know "things you need to know about monkeys"
    content       "Apply in person at a driver license station or Satellite City Hall.  Requirements at the station   Bring your proof of legal presence.   If you're between 15.5 and 17 years of age, bring a parental consent form.  Take written knowledge exam.   Take an eye test, and be fingerprinted and photographed.  Pay fees with cash, personal check, VISA, or MasterCard.    what you need to know  Study manuals for the written test are available online or at local bookstores and state libraries.  You also need to complete a road test before you can receive your driver license. You can schedule your road test online. If you already have a valid US driver license, the road test may be waived."
    preview       "Go to a driver license station with your proof of legal presence, take a written exam there as well as eye test, photograph, and fingerprints, pay fees, and schedule a road test appointment."
    tags          "driver license, drivers license, driver's license, driving license, license, driving, drive, driving test, written test, written exam, driving exam, road test, road exam, new driver license, new driver's license, new driving license"
    contact
    status        "Published"
    type          "Guide"
  end


  factory :guide_step do
    title   "Parking Guide"
    content "Let's find parking"
    preview "how do we find parking?"
    step    1
    article
  end

  factory :contact do
    # name
    # subname
    # number
    # url
    # address
    # department
    # description
  end

  factory :wordcount do
    article
    keyword
    count 10
  end

  factory :keyword do
    name "registration"
    metaphone ["RJST", "RKST"]
    stem "regist"
    synonyms ['enrollment', 'enrolment', 'adjustment', 'readjustment', 'body', 'calibration', 'certificate', 'certification', 'credential', 'credentials', 'entering', 'entrance', 'entry', 'incoming', 'ingress', 'sound property', 'standardisation', 'standardization']
  end

  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    password "Mahalo43"
    password_confirmation "Mahalo43"
    is_editor true
    is_writer true
  end
end
