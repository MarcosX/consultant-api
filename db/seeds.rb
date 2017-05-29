# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bh = Office.create(name: 'Belo Horizonte')
sao = Office.create(name: 'Sao Paulo')
rec = Office.create(name: 'Recife')

super_mario = Project.create(name: 'Project super_mario')
zelda = Project.create(name: 'Project zelda')
dk_country = Project.create(name: 'Project dk_country')
smash_bros = Project.create(name: 'Project smash_bros')
mk = Project.create(name: 'Project mk')

Consultant.create(name: 'Luigi', home_office: rec, working_office: rec, staffing_office: rec, current_project: super_mario, projects: [smash_bros, mk])
Consultant.create(name: 'Mario', home_office: bh, working_office: rec, staffing_office: rec, current_project: super_mario, projects: [smash_bros, mk])
Consultant.create(name: 'Zelda', home_office: sao, working_office: rec, staffing_office: bh, current_project: zelda, projects: [smash_bros])
Consultant.create(name: 'Link', home_office: sao, working_office: rec, staffing_office: rec, current_project: zelda, projects: [smash_bros])
Consultant.create(name: 'Sheik', home_office: sao, working_office: rec, staffing_office: sao, current_project: zelda, projects: [smash_bros])
Consultant.create(name: 'DK', home_office: bh, working_office: sao, staffing_office: bh, current_project: dk_country, projects: [mk])
Consultant.create(name: 'DK Jr', home_office: bh, working_office: sao, staffing_office: bh, current_project: dk_country, projects: [mk])
Consultant.create(name: 'Dixie', home_office: bh, working_office: sao, staffing_office: bh, current_project: dk_country, projects: [mk])

