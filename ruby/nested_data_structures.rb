swim_team = {
  beginners: {
    fun_name: 'Tadpols',
    yardage_goal: 1500,
    member_list: {
      total_members: 24,
      spots_available: 6
    },
    practice_theme: [
      "kicking", "pulling", "drills", "games"
      ]
  },
  intermediate: {
    fun_name: 'Barracudas',
    yardage_goal: 3000,
    member_list: {
      total_members: 26,
      spots_available: 14
    },
    practice_theme: [
      "kicking", "pulling", "distance", "sprint", "technique"
      ]
  },
  advanced: {
    fun_name: 'Gold Team',
    yardage_goal: 6000,
    member_list: {
      total_members: 32,
      spots_available: 8
    },
    practice_theme: [
      "kicking", "pulling", "distance", "sprint", "technique", "starts and dives"
      ]
  },
}

p swim_team[:beginners][:fun_name]
p swim_team[:intermediate][:member_list][:total_members]
p swim_team[:intermediate][:yardage_goal]
p swim_team[:advanced][:practice_theme][3]