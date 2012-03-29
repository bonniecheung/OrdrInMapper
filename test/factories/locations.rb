# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    street '1 Main Street'
    city 'College Station'
    zip '77840'
    street2 'Suite 200'
    state 'TX'
    phone '4044099661'
    nick 'Home'
  end
end
