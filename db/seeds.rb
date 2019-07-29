# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Page.destroy_all 
User.destroy_all
Podcast.destroy_all
PodcastGroup.destroy_all
 

  
  pages = [
    { name: "AFC Bournemouth", twitter:"afcbournemouth", youtube: "https://www.youtube.com/playlist?list=PLDSAlkBZMWj6HxQaOIwvWYWmrN-UMal93"},
    { name: "Arsenal FC", twitter:"Arsenal", youtube: "https://www.youtube.com/playlist?list=PLvuwbYTkUzHexAhSfsCRzKU0WVut5jE_S"},
    { name: "Aston Villa", twitter:"AVFCOfficial", youtube: "https://www.youtube.com/playlist?list=PLiR0-7AEE2HrHpy3MQyPvsWhgjWJc99fC"},
    { name: "Brighton & Hove Albion", twitter:"OfficialBHAFC", youtube: "https://www.youtube.com/playlist?list=PLU4NF13Grb9HXwr0ijDpE1G7gxdbRuOWO"},
    { name: "Burnley FC", twitter:"BurnleyOfficial", youtube: "https://www.youtube.com/playlist?list=UUhvUXuSDeEFSQZS8GcPMtkg"},
    { name: "Chelsea FC", twitter:"ChelseaFC", youtube: "https://www.youtube.com/playlist?list=UUU2PacFf99vhb3hNiYDmxww"},
    { name: "Crystal Palace F.C.", twitter:"CPFC", youtube: "https://www.youtube.com/playlist?list=PL18wCAmgRhL-HGQcH-DdV9Rfldd3ttvVx"},
    { name: "Everton", twitter:"Everton", youtube: "https://www.youtube.com/playlist?list=UUtK4QAczAN2mt2ow_jlGinQ"},
    { name: "Leicester City", twitter:"LCFC", youtube: "https://www.youtube.com/playlist?list=UUBkRQtxofyXr09mWtgoUUqw"},
    { name: "Liverpool FC", twitter:"LFC", youtube: "https://www.youtube.com/playlist?list=UU9LQwHZoucFT94I2h6JOcjw"},
    { name: "Manchester City", twitter:"ManCity", youtube: "https://www.youtube.com/playlist?list=UUkzCjdRMrW2vXLx8mvPVLdQ"},
    { name: "Manchester United", twitter:"ManUtd", youtube: "https://www.youtube.com/playlist?list=PL5-QUghxmluLMkbbPv2xW8jGkgyXam1nP"},
    { name: "Newcastle United FC", twitter:"NUFC", youtube: "https://www.youtube.com/playlist?list=UUywGl_BPp9QhD0uAcP2HsJw"},
    { name: "Norwich City FC", twitter:"NorwichCityFC", youtube: "https://www.youtube.com/playlist?list=UUzdkZv6--BWsUQ9rKUtQ1TQ"},
    { name: "Sheffield United", twitter:"SheffieldUnited", youtube: "https://www.youtube.com/playlist?list=UUVER_UoBt84YUrA6s402Q-g"},
    { name: "Southampton FC", twitter:"SouthamptonFC", youtube: "https://www.youtube.com/playlist?list=UUxvXjfiIHQ2O6saVx_ZFqnw"},
    { name: "Tottenham Hotspur F.C.", twitter:"SpursOfficial", youtube: "https://www.youtube.com/playlist?list=UUEg25rdRZXg32iwai6N6l0w"},
    { name: "Watford Football Club", twitter:"WatfordFC", youtube: "https://www.youtube.com/playlist?list=UUptKljTrbdMTgmuekGKhRug"},
    { name: "West Ham United", twitter:"WestHamUtd", youtube: "https://www.youtube.com/playlist?list=UUCNOsmurvpEit9paBOzWtUg"},
    { name: "Wolves", twitter:"Wolves", youtube: "https://www.youtube.com/playlist?list=UUQ7Lqg5Czh5djGK6iOG53KQ"},
  ]

 
  
  pages.each do |page|
    Page.create page
    puts "Created a page #{page[:name]}, twitter: #{page[:twitter]}, youtube: #{page[:youtube]}"
  end

 users = [
    { username: "Daniel", password: "daniel123", page_id: Page.all.sample.id},
    { username: "Gabriel", password: "gabriel123", page_id: Page.all.sample.id },
    { username: "Lucy", password: "lucy123", page_id: Page.all.sample.id} ,
  ]
  

  
  users.each do |user|
    createdUser = User.create user
    createdUser.save
    puts "Created user #{user[:username]}, password: #{user[:password]}, page #{user[:page_id]}"
    puts createdUser
    puts createdUser.username
    puts createdUser.password
    puts createdUser.page_id
  end

  podcastGroup = [
    {name: "football"},
    {name: "college_basketball"},
    {name: "nba"},
  ]


  podcastGroup.each do |podcastname|
    PodcastGroup.create podcastname
    
  end



  podcasts = [
    football = [
          {name: "World Football", url:"https://tunein.com/embed/player/p1854/", podcast_group_id: PodcastGroup.where(name: "football")[0].id},
          {name: "ESPN FC", url:"https://tunein.com/embed/player/p478539/", podcast_group_id: PodcastGroup.where(name: "football")[0].id}
    ],
    collegeBasketball = [
      {name: "ESPNU: College Basketball", url:"https://tunein.com/embed/player/p307305/", podcast_group_id: PodcastGroup.where(name: "college_basketball")[0].id},
      {name: "Podcast On The Brink", url:"https://tunein.com/embed/player/p399843/", podcast_group_id: PodcastGroup.where(name: "college_basketball")[0].id}
    ],
    nba = [
      {name: "The Woj Pod", url:"https://tunein.com/embed/player/p824073/", podcast_group_id: PodcastGroup.where(name: "nba")[0].id},
    ]
  ]
 

  podcasts.each do |podcast|
    Podcast.create podcast
  
  end


 

  puts "Finished user creation"
  puts "Finished seeding"