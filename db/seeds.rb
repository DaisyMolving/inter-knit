# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Project.delete_all
Stage.delete_all
Instruction.delete_all


project1 = Project.create(name: "Scarf", difficulty_level: 1, image: "scarf_title.png", modal_image: "scarf/modal", description: "Let's start basic but bold with a nice scarf!")

project2 = Project.create(name: "Pullover", difficulty_level: 3, image: "pullover_title.png", modal_image: "pullover/modal", description: "Here's the big one, a super-great, warm pullover!")

project3 = Project.create(name: "Beanie", difficulty_level: 2, image: "beanie_title.png", modal_image: "beanie/modal", description: "Keep your head warm, keep your head wonderful.")

stage1 = Stage.create(title: "Casting on") 
stage2 = Stage.create(title: "Second row")
stage3 = Stage.create(title: "Continuing")
stage4 = Stage.create(title: "Casting off")


instruction1 = Instruction.create(name: "Casting On", content: "Using 8 ply wool and size 10 needles, cast on 35 stitches.", info_video: "/assets/casting_on.m4v", image: "/assets/cast-on-instruction-diagrams")
instruction2 = Instruction.create(name: "First Row", content: "When you finish casting on the 35 stitches, put the needle that you have been casting onto into your left hand, and insert your empty needle into the back of the first loop that you have made opposite.", info_video: "/assets/switching_over_and_second_row.m4v")
instruction3 = Instruction.create(name: "First Row", content: "Knit to the end of the row! Go on, you can do it! Take it slowly", info_video: "/assets/knit_knit_knit.m4v")
instruction4 = Instruction.create(name: "Knit, Knit, Knit!", content: "Now repeat until you have knitted 300 rows, or reached your desired scarf length", info_video: "/assets/knit_knit_knit.m4v")
instruction5 = Instruction.create(name: "Casting Off", content: "Now cast off and you are finished! Well done!", info_video: "/assets/casting_off_and_tying_end.m4v")

project1.stages << stage1 << stage2 << stage3 << stage4

stage1.instructions << instruction1
stage2.instructions << instruction2 << instruction3
stage3.instructions << instruction4
stage4.instructions << instruction5

puts 'seeded!'

