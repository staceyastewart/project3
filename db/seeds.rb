# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
User.destroy_all

User.create([
  { email: "stacey.alicia.stewart@gmail.com",


  }

  ])


Event.create([
  { title: "Rally for Clean Air",
    date: "5/5/2017",
    start_time: "9:00AM",
    end_time: "10:00AM",
    content: "Come join us and discuss ways we can promote more clean air regulations",
    topic: "Clean Air",
    price: "Free",
    type_of_event: "Discussion",
    user_id: 1,
  },

   { title: "Save NYC Parks",
    date: "5/6/2017",
    start_time: "10:00AM",
    end_time: "11:00AM",
    content: "Bring awareness to some of NYC's forgotten parks",
    topic: "NYC Parks",
    price: "Free",
    type_of_event: "Discussion",
    user_id: 1,
  },

    { title: "Debate Team",
    date: "5/7/2017",
    start_time: "5:00PM",
    end_time: "7:00PM",
    content: "Come practice your debate skills in a firnedly way",
    topic: "Debate",
    price: "Free",
    type_of_event: "Debate",
    user_id: 1,
  },

  ])
