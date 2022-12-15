# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
Company.delete_all
Company.reset_pk_sequence
Company.create([
                 {name:'MoGo', location: 'New York'},
                 {name: 'Wirkkle', location: 'London'},
                 {name:'Artesis', location: 'Saint-Petersburg'},
                 {name:'BuildEmpire', location: 'London'},
               ])

Job.delete_all
Job.reset_pk_sequence
Job.create([
             {name:'Sinatra React', place:'Remote', company_id:1},
             {name:'Ruby React', place:'Contract', company_id:2},
             {name:'React', place:'Remote', company_id:3},
             {name:'Node React', place:'Permanent', company_id:1},
             {name:'Ruby on Rails', place:'Remote', company_id:4},
             {name:'Node', place:'Permanent', company_id:4},
             {name:'Javascript CSS HTML', place:'Permanent', company_id:4},
           ])

Geek.delete_all
Geek.reset_pk_sequence
Geek.create([
              { name: "Mike", stack: "Sinatra React", resume: "Working in EFT 5 years" },
              { name: "Alex", stack: "Ruby React", resume: "Bachelor, MGTU, Moscow." },
              { name: "Martha", stack: "Rails", resume: "Hello! I am a new one in IT!" },
              { name: "Juri", stack: "Java", resume: "Worked in gamedevelopment studio about 12 years." },
              { name: "Andrew", stack: "PHP", resume: "Was teaching PHP for kids 2 years." },
              { name: "Nina", stack: "Node", resume: "I love coding! Please, i want money!" },
              { name: "Bob", stack: "Front end", resume: "Hello! I am good at all!" },
              { name: "Kate", stack: "PHP", resume: "Hello! Do you have Ruby on Rails projecy?" },
              { name: "Boris", stack: "Full stack", resume: "Sry, i will send you file with info about me some later!" },
            ])

Apply.delete_all
Apply.reset_pk_sequence
Apply.create([
               { job_id: 1, geek_id: 1, read: true, invited: true },
               { job_id: 1, geek_id: 2, read: false, invited: false },
               { job_id: 5, geek_id: 5, read: true, invited: false },
               { job_id: 6, geek_id: 8, read: false, invited: false },
             ])