require_relative '../app/models/person'


# def find_by_state
#   # require relative "app"
#     org = Person.where(state: "AL")
#     sen = []
#     rep = []
#     org.each do |p|
#       if p.title == "Sen"
#         sen << p
#       else
#         rep << p
#       end
#     end

#     sen.sort_by! do |x|
#       x[:lastname]
#     end

#     rep.sort_by! do |x|
#       x[:lastname]
#     end

#     sen.each do |p|
#       puts  "#{p.title} #{p.firstname} #{p.lastname} (#{p.party}) #{p.id}"
#     end
#     rep.each do |p|
#       puts  "#{p.title} #{p.firstname} #{p.lastname} (#{p.party}) #{p.id}"
#     end
# end

def gender_actively_in_office
  in_office = Person.where(in_office: 1)
  sen = []
  rep = []
  in_office.each do |p|
    if p.title == "Sen"
      sen << p
    else
      rep << p
    end
  end

men_in_office = 0
women_in_office= 0

  rep.each do |p|
    if p.gender == "M"
      men_in_office += 1
    else
      women_in_office += 1
    end
  end
percentage = 0.0
percentage = (men_in_office.to_f/in_office.length)

puts percentage
puts men_in_office
puts "total #{in_office.length} "
puts "there are " + (percentage*100).to_s + "% men in office."



end
gender_actively_in_office