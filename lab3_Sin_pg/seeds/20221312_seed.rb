Sequel.seed(:development, :test) do # Applies only to "development" and "test" environments
  def run
    puts 'Start truncate for all models'
    DB[:applies].truncate(cascade: true, restart: true)
    DB[:geeks].truncate(cascade: true, restart: true)
    DB[:jobs].truncate(cascade: true, restart: true)
    DB[:companies].truncate(cascade: true, restart: true)
    puts 'Models truncated'

    DB[:companies].insert(name: "Lukoil", location: "Kogalym")
    DB[:companies].insert(name: "Rosneft", location: "Moscow")
    DB[:companies].insert(name: "Tatneft", location: "Kazan")
    DB[:companies].insert(name: "BelNeft", location: "Minsk")
    puts 'Companies seeded'

    DB[:jobs].insert(name: "FrontEnd Senior", place: "Kogalym", company_id: 1)
    DB[:jobs].insert(name: "Unity Middle", place: "Moscow", company_id: 2)
    DB[:jobs].insert(name: "BackEnd Junior", place: "Kazan", company_id: 3)
    DB[:jobs].insert(name: "UE5 Middle", place: "Kogalym", company_id: 1)
    puts 'Jobs seeded'

    DB[:geeks].insert(name: "Alex", stack: "Unity, C#", resume: "Working in EFT 5 years")
    DB[:geeks].insert(name: "Eugene", stack: "UE5, C++", resume: "Worked in gamedevelopment studio about 12 years.")
    DB[:geeks].insert(name: "Pavel", stack: "JS, React", resume: "I love coding! Please, i want money!")
    DB[:geeks].insert(name: "Oleg", stack: "C#, SQL", resume: "Sry, i will send you file with info about me some later!")
    puts 'Geeks seeded'

    DB[:applies].insert(job_id: 2, geek_id: 1)
    DB[:applies].insert(job_id: 4, geek_id: 2)
    DB[:applies].insert(job_id: 3, geek_id: 1)
    DB[:applies].insert(job_id: 1, geek_id: 3)
    puts 'DB seeded successfully!'
  end
end