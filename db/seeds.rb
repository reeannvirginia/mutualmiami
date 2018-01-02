# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Donation.destroy_all
Fund.destroy_all
Organization.destroy_all


health = Fund.find_or_create_by!(
  category: 'Health/Human Services'
)

education = Fund.find_or_create_by!(
  category: 'Education'
)

animals = Fund.find_or_create_by!(
  category: 'Animals'
)

p "created #{Fund.count} funds!"



org1 = Organization.create!(
  funds: [health],
  name: 'Better Way of Miami',
  category: 'Health/Human Services',
  address: '800 NW 28 Street Miami, FL 33127',
  description: 'Better Way of Miami Inc., a non-profit community based organization, is committed to providing shelter, residential care, treatment, housing, and services on a continuum to indigent, homeless, and addicted persons and those with co-occurring disorders, their families and supporters, in order to maximize their chances for a productive, healthy and fulfilling life in recovery.',
  website: 'http://betterwaymiami.org'
)

org2 = Organization.create!(
  funds: [health],
  name: 'Amigos for Kids',
  category: 'Health/Human Services',
  address: '2153 Coral Way, Suite 405 Miami, FL 33145',
  description: 'Amigos For Kids is a nonprofit organization dedicated to preventing child abuse and neglect by valuing children, strengthening families and educating communities.',
  website: 'http://www.amigosforkids.org'
)

org3 = Organization.create!(
  funds: [health],
  name: 'Miami Diaper Bank',
  category: 'Health/Human Services',
  address: '4770 Biscayne Blvd Suite 980 Miami, FL 33137',
  description: 'In lieu of a comprehensive national poverty policy to specifically address this need, which can take years to realize, the Miami Diaper Bank works locally to provide immediate relief, filling the gap in resources by fundraising as well as collecting and distributing diapers and diaper supplies to local institutions designed to support low-income and poverty-stricken families care for their children. Our goal is to keep South Florida babies clean, dry and healthy!',
  website: 'http://www.miamidiaperbank.com'
)

org4 = Organization.create!(
  funds: [education],
  name: '100 Black Men of South Florida',
  category: 'Education',
  address: '5825 Sunset Dr Ste. 201 South Miami, FL 33143-5222',
  description: 'To improve the quality of life of our communities and enhance educational and economic opportunities for all African Americans',
  website: 'http://www.100blackmensf.org'
)

org5 = Organization.create!(
  funds: [education],
  name: 'CODEART',
  category: 'Education',
  address: '6440 SW 98TH St. Miami, FL 33156',
  description: 'Our mission is to increase the number of girls studying computer science by delighting and inspiring them with the creative possibilities of computer programming. We use art to inspire girls in grades 4-12 to code! We hold workshops where we teach students how to write computer programs to generate art and hold an annual event, Code/Art Miami, where student computer-generated art is displayed and awards are given for the top coded art submissions.',
  website: 'http://www.code-art.com'
)

org6 = Organization.create!(
  funds: [education],
  name: 'Shake-a-Leg Miami',
  category: 'Education',
  address: '2620 S Bayshore Dr Coconut Grove, FL 33133-5424',
  description: 'Our Mission is to use the marine environment to improve the health, education and independence of people with disabilities, disadvantaged youth and their families.',
  website: 'http://shakealegmiami.org'
)

org7 = Organization.create!(
  funds: [animals],
  name: 'The Cat Network',
  category: 'Animals',
  address: 'PO BOX 347228 Coral Gables, FL 33234-7228',
  description: 'The Cat Network, Inc. (CN) is a 501(c)3, Florida not-for-profit corporation dedicated to humanely reducing cat overpopulation by educating the public about the need to sterilize their pets and strays; providing access to low-cost spay/neuter services for stray, homeless and abandoned cats; helping members in their efforts to place adoptable cats in loving homes; and advocating non-lethal population control and humane public policy.',
  website: 'http://www.thecatnetwork.org'
)

org8 = Organization.create!(
  funds: [animals],
  name: 'Everglades Angels Dog Rescue',
  category: 'Animals',
  address: '2637 E. Atlantic Blvd # 269 Pompano Beach, FL 33062',
  description: 'Everglades Angels Dog Rescue is a Non Profit 100% Volunteer organization. Our Mission is to end the suffering of thousands of abandoned dogs in the Everglades. Our goal is to treat the rescued dogs medically, including sterilization and microchip identification. Also, to provide psychological training and placement in qualified homes. Our organization is unique because our dedication is to all dogs that have no shelter, food, and no chance of survival. We seek out the tortured, sick and debilitated dogs, in the most remote areas of Florida. Everglades Angels Dog Rescue solely survives on donations, please help us spread our mission.',
  website: 'http://www.evergladesangelsdogrescue.org/'
)

org9 = Organization.create!(
  funds: [animals],
  name: 'Pet Project for Pets',
  category: 'Animals',
  address: '2200 NW 9th Avenue Wilton Manors, FL 33311',
  description: 'The Pet Project for Pets is a nonprofit organization that provides pet food, pet supplies , pet vaccines and reduced cost veterinarian care to individuals who are financially challenged due to a terminal illness, disability, aging, (seniors) or victims of crime so that they can “KEEP THEIR PETS AND PROVIDE FOR THEM”',
  website: 'http://www.thepetprojectfl.org'
)

org10 = Organization.create!(
  name: "American Children's Orchestra for Peace",
  category: 'Arts, Culture & Humanities',
  address: '2150 Coral Way Suite 3-C, Miami, FL 33145',
  description: "American Children's Orchestras for Peace's mission is to create for our children, through music, an environment free of violence.",
  website: 'http://www.americanchildrensorchestras.org'
)

org11 = Organization.create!(
  name: "Arts & Business Council of Miami",
  category: 'Arts, Culture & Humanities',
  address: '1637 SW 8th Street, Ste 212, Miami, FL 33135',
  description: "The Arts & Business Council of Miami is leading the movement to build a sustainable cultural community through advancing high-impact partnerships between business, foundations and the arts. Through research, training and arts engagement, ABC serves as an effective catalyst for building synergistic partnerships that give business a competitive advantage. As Miami's official association to leverage the arts for economic vitality, ABC provides meaningful engagement opportunities with the arts to inspire employees, stimulate innovation and foster creativity.",
  website: 'http://www.artsbizmiami.org'
)

org12 = Organization.create!(
  name: "Heroes Unite, Inc.",
  category: 'Arts, Culture & Humanities',
  address: '14703 west dixie highway, Miami, FL 33181',
  description: "Heroes Unite produces culturally diverse artistic projects, programs and events providing opportunities which nurture and empower individuals and communities. With the arts at our core, we utilize creative collaborations, mentoring, volunteerism and leadership. Our participants and productions enrich society with shared values, goals and outcomes. Vision: Art and culture has, and always will, support the evolutionary ascension of individuals and the societies in which they live and work. Heroes Unite is dedicated to providing grass root movements to target populations in need of opportunity and direction. Our programs are transformative and have the potential to be replicated on a National level.",
  website: 'http://www.heroesunite.org'
)

org13 = Organization.create!(
  name: "Miami Waterkeeper",
  category: 'Environment & Public Spaces',
  address: '2103 Coral Way, 2nd Floor, Miami, FL 33145',
  description: "Miami Waterkeeper (formerly Biscayne Bay Waterkeeper) is a non-profit organization that advocates for South Florida's watershed and wildlife. Our goal is to educate locals and visitors about the vital role of clean water in Miami's clean water economy, and to empower them to take an active role in community decision making. We hope to ensure a vibrant coastal culture and ecosystem for generations to come. Launched in 2011, MWK is the first Waterkeeper in South Florida and the only advocacy organization solely dedicated to protecting Biscayne Bay and its surrounding watershed.",
  website: 'http://miamiwaterkeeper.org'
)

org14 = Organization.create!(
  name: "Everglades Law Center",
  category: 'Environment & Public Spaces',
  address: '331 W. Central Ave. Ste. 213, Winter Haven, FL 33880',
  description: "The Everglades Law Center is a nonprofit public interest law firm dedicated to preserving the natural landscape of Florida. We advocate, negotiate, and when necessary, litigate to protect Florida's special places.",
  website: 'http://www.evergladeslaw.org'
)

org15 = Organization.create!(
  name: "Miami Beach Botanical Garden",
  category: 'Environment & Public Spaces',
  address: '2000 Convention Center Dr, Miami Beach, FL 33139-1806',
  description: "Miami Beach Botanical Garden's mission is to provide free public access to a subtropical botanical oasis. We offer environmental programs for all ages, preserve a habitat for native plants and pollinators, and provide visitors with a peaceful place to relish in nature. Our year round calendar of cultural programs inspires the artist in all of us, from music, visual arts and performances. Visitors come from around the world and around the block.",
  website: 'http://www.mbgarden.org'
)

org15 = Organization.create!(
  name: "Surfrider Foundation Miami Chapter",
  category: 'Environment & Public Spaces',
  address: '12800 Old Cutler Rd, Pinecrest, FL 33156',
  description: "The Surfrider Foundation is dedicated to the protection and enjoyment of the world's ocean, waves and beaches through a powerful activist network. The Miami Chapter programs include: - Rise Above Plastics is designed to eliminate the impacts of plastics in the marine environment by raising awareness about the dangers of plastic pollution and by advocating for a reduction of single-use plastics and the recycling of all plastics. - Dune Restorations - restore local beach dunes as closely as possible to original native/natural state to create a nicer beach environment and strong natural buffer from storm surge & tropical weather events. - Blue Water Task Force - regular testing of local beach water for bacteria levels using rigid scientific protocols. Negative readings are reporting broadly to public, media and government so that source polluters are identified and the problems addressed. CLEAN WATER = HEALTHY BEACHES",
  website: 'https://miami.surfrider.org/'
)

org16 = Organization.create!(
  name: "Make Miami Makerspace",
  category: 'Science & Technology',
  address: '8347 NW 54 Street, Doral, FL 33166',
  description: "MakeMIA Makerspace strives to create a community in which every member is a creator, student, and teacher by providing infrastructure and resources to facilitate engagement and collaboration on diverse projects. We promote education in science, technology, engineering, art and math (STEAM) through hands-on experience.",
  website: 'http://www.makemia.com'
)

org17 = Organization.create!(
  name: "Refresh Miami",
  category: 'Science & Technology',
  address: '1040 NE 85 Street, Miami, FL 33138',
  description: "To educate, inspire and grow South Florida's tech and startup community. Each month, we bring together hundreds of technology professionals and entrepreneurs to learn from industry innovators and pioneers, while also connecting with other like-minded individuals. We also host ongoing workshops to provide the community with the latest skills needed to be competitive in today's workforce. Quite simply, we are the hub of Miami Tech.",
  website: 'http://www.refreshmiami.com'
)

org18 = Organization.create!(
  name: "Philip and Patricia Frost Museum of Science",
  category: 'Science & Technology',
  address: '1101 Biscayne Blvd, Miami, FL 33132',
  description: "Frost Science inspires and connects people of all ages and backgrounds to enjoy science and technology, to better understand ourselves and our world.",
  website: 'http://www.frostscience.org'
)

org19 = Organization.create!(
  name: "Bots for All",
  category: 'Science & Technology',
  address: '89 Corydon Drive, Miami Springs, FL 33166',
  description: "Expose interested students and parents in traditionally under-served areas to engineering and related technology careers.",
  website: 'http://www.botsforall.org'
)

org20 = Organization.create!(
  name: "Accion in Miami",
  category: 'Housing & Affordability',
  address: '2828 Coral Way, Suite 200, Coral Gables, FL 33145',
  description: "Accion's mission is to empower low- to moderate-income business owners through access to capital and financial education. With economic opportunity, these entrepreneurs - often minorities and women - can build assets, better provide for their families, create employment and strengthen their communities.",
  website: 'https://us.accion.org/'
)

org21 = Organization.create!(
  name: "Miami Habitat",
  category: 'Housing & Affordability',
  address: '3800 NW 22 Avenue, Miami, FL 33142-5318',
  description: "Habitat for Humanity of Greater Miami is an ecumenical ministry that transforms lives and communities by providing low-income families with an opportunity to help build and then purchase an affordable home.",
  website: 'http://www.miamihabitat.org'
)

org22 = Organization.create!(
  name: "Favela Miami",
  category: 'Housing & Affordability',
  address: '1441 Lincoln Rd., Ste. 201, Miami Beach, FL 33139',
  description: "Our mission at Favela Miami is to assist the Homeless to transition out of homelessness by covering their basic needs and giving them a reason to look forward to achieving the ultimate goal: permanent housing. When a person becomes homeless, it only takes 3 weeks of living on the streets to lose their sense of rational thinking and self-respect. Once someone is labeled “homeless,” they become invisible to society. Our intention is for the community to see, respect and assist the Homeless, helping build confidence and lift their spirits to encourage them to seek help in finding shelter, jobs, education, and mental health. Society is measured by how it treats the weak and vulnerable. We must give the Homeless access to opportunities. We must give the Homeless the right to choose the kind of services they receive. We succeed when we think and act collectively. No one rests until everyone has a home! We need your support and donations to make this happen.",
  website: 'http://favelamiami.org'
)

org23 = Organization.create!(
  name: "Miami Homes for All",
  category: 'Housing & Affordability',
  address: '140 W. Flagler Street, Suite 105, Miami, FL 33130',
  description: "Miami Homes For All is dedicated to promoting community collaboration to prevent and end homelessness in South Florida. Through grant writing, advocacy, coordinating resources, and developing & supporting prevention initiatives on local, state and federal levels, we seek to eliminate experiences of homelessness for all.",
  website: 'http://www.miamihomesforall.org'
)
p "created #{Organization.count} organizations!"



samantha_peanuts =
  DonorLogin.find_by(
    first_name: "Samantha",
    last_name: "Peanuts",
    email: "samantha@peanuts.com"
    ) ||
  DonorLogin.create!(
    first_name: "Samantha",
    last_name: "Peanuts",
    email: "samantha@peanuts.com",
    password: 'PASSWORD',
  )

peter_segal =
    DonorLogin.find_by(
      first_name: "Bobby",
      last_name: "Tables",
      email: "bobby@tables.com"
      ) ||
  DonorLogin.create!(
    first_name: "Bobby",
    last_name: "Tables",
    avatar: File.open("#{Rails.root}/public/images/bobby_tables.jpg"),
    email: "bobby@tables.com",
    password: 'PASSWORD',
  )

10.times do
  fund = Fund.all.sample
  donation = Donation.create!(
    amount: (rand(1..10)).round(2),
    fund: fund,
    donor_login: samantha_peanuts,
  )
end

10.times do
  fund = Fund.all.sample
  donation = Donation.create!(
    amount: (rand(1..10)).round(2),
    fund: fund,
    donor_login: peter_segal,
  )
end

p "#{samantha_peanuts.first_name} now has #{samantha_peanuts.donations.count} donations"
p "#{peter_segal.first_name} now has #{peter_segal.donations.count} donations"
