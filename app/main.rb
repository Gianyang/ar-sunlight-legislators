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

rep_men_in_office = 0
rep_women_in_office= 0

  rep.each do |p|
    if p.gender == "M"
      rep_men_in_office += 1
    else
      rep_women_in_office += 1
    end
  end
rep_percentage = (rep_men_in_office.to_f/(rep_men_in_office +rep_women_in_office))



puts "There are " + (rep_percentage*100).to_s + "% men in rep office."



sen_men_in_office = 0
sen_women_in_office= 0

  sen.each do |p|
    if p.gender == "M"
      sen_men_in_office += 1
    else
      sen_women_in_office += 1
    end
  end
sen_percentage = (sen_men_in_office.to_f/(sen_men_in_office +sen_women_in_office))



puts "There are " + (sen_percentage*100).to_s + "% men in sen office."



end
# gender_actively_in_office

def states_with_rep
  active_in_office = Person.group('state').where(in_office: 1).count
  active_in_office = active_in_office.sort_by {|key, count| count}.reverse

   active_in_office.each do |key, value|
    sen = Person.where(state: key).where(title: "Sen") .count
    p "#{key} :#{sen} is senator #{value - sen} is rep."
   end
end

states_with_rep

# Person.new = state(CreatePeople)
# state = []
# puts state.where(title: 'Rep').count
