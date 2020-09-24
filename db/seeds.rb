# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
UserWorkout.destroy_all
# Category.destroy_all


# c1 = Category.create(name: "arms")
# c2 = Category.create(name: "legs")
# c2 = Category.create(name: "abs")

u1 = User.create(name: "a")
u2 = User.create(name: "b")
u3 = User.create(name: "c")

w1 = Workout.create(name: "Pilates", url:"https://www.youtube.com/embed/H2U3HwAyBXg", time: "2020-09-18 15:43:11")
w2 = Workout.create(name: "Arms", url:"https://www.youtube.com/embed/JkVHrA5o23o", time: "2020-09-18 16:11:51")
w3 = Workout.create(name: "Legs", url:"https://www.youtube.com/embed/1vRto-2MMZo", time: "2020-09-18 17:22:45")
w4 = Workout.create(name: "Squats", url:"https://www.youtube.com/embed/2pLT-olgUJs&t=63s", time: "2020-09-18 18:45:30")
w5 = Workout.create(name: "Back", url:"https://www.youtube.com/embed/_Zem0_qsDg0&t=1419s", time: "2020-09-18 19:23:15")
w6 = Workout.create(name: "Thighs", url:"https://www.youtube.com/embed/hI-JSz2Iv-k", time: "2020-09-18 20:14:04")

# w1 = Workout.create(name: "Pilates", url:"https://www.youtube.com/embed/H2U3HwAyBXg", time: "2020-09-18 15:43:11", category_id: 2)
# w2 = Workout.create(name: "Arms", url:"https://www.youtube.com/embed/JkVHrA5o23o", time: "2020-09-18 16:11:51", category_id: 1)
# w3 = Workout.create(name: "Legs", url:"https://www.youtube.com/embed/1vRto-2MMZo", time: "2020-09-18 17:22:45", category_id: 1)
# w4 = Workout.create(name: "Squats", url:"https://www.youtube.com/embed/2pLT-olgUJs&t=63s", time: "2020-09-18 18:45:30", category_id: 3)
# w5 = Workout.create(name: "Back", url:"https://www.youtube.com/embed/_Zem0_qsDg0&t=1419s", time: "2020-09-18 19:23:15", category_id: 3)
# w6 = Workout.create(name: "Thighs", url:"https://www.youtube.com/embed/hI-JSz2Iv-k", time: "2020-09-18 20:14:04", category_id: 3)


uw1 = UserWorkout.create(user_id: 1, workout_id: 1, date: "2020-09-18")
uw2 = UserWorkout.create(user_id: 1, workout_id: 2, date: "2020-09-19")
uw3 = UserWorkout.create(user_id: 2, workout_id: 3, date: "2020-09-20")
uw4 = UserWorkout.create(user_id: 2, workout_id: 4, date: "2020-09-20")
uw5 = UserWorkout.create(user_id: 2, workout_id: 5, date: "2020-09-21")
uw6 = UserWorkout.create(user_id: 3, workout_id: 6, date: "2020-09-18")