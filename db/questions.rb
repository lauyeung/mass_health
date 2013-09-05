# What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.select("name, aged_sixty_five_plus").where.not( name: "Massachusetts Total" ).order("aged_sixty_five_plus DESC").first(3)


# What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.select("name, aged_zero_through_nineteen").where.not( name: "Massachusetts Total" ).order("aged_zero_through_nineteen DESC").first(3)


# What 5 towns have the lowest per capita income?
TownHealthRecord.select("name, per_capita_income").order("per_capita_income ASC").first(5)


# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.select("name, teen_birth_rate").where.not( name: ["Massachusetts Total", "Boston", "Becket", "Beverly"]).order("teen_birth_rate DESC").first


# Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.select("name, infant_deaths").where.not( name: ["Massachusetts Total", "Boston"]).order("infant_deaths DESC").first
