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

super_mario = Project.create(name: 'Projeto super_mario')
zelda = Project.create(name: 'Projeto zelda')
dk_country = Project.create(name: 'Projeto dk_country')

Consultant.create(name: 'Luigi', home_office: rec, working_office: rec, staffing_office: rec, current_project: super_mario)
Consultant.create(name: 'Mario', home_office: bh, working_office: rec, staffing_office: rec, current_project: super_mario)
Consultant.create(name: 'Zelda', home_office: sao, working_office: rec, staffing_office: bh, current_project: zelda)
Consultant.create(name: 'Link', home_office: sao, working_office: rec, staffing_office: rec, current_project: zelda)
Consultant.create(name: 'Sheik', home_office: sao, working_office: rec, staffing_office: sao, current_project: zelda)
Consultant.create(name: 'DK', home_office: bh, working_office: sao, staffing_office: bh, current_project: dk_country)
Consultant.create(name: 'DK Jr', home_office: bh, working_office: sao, staffing_office: bh, current_project: dk_country)
Consultant.create(name: 'Dixie', home_office: bh, working_office: sao, staffing_office: bh, current_project: dk_country)

