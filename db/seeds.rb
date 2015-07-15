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


project1 = Project.create(name: "Scarf", difficulty_level: 1)

project2 = Project.create(name: "Pullover", difficulty_level: 3)

project3 = Project.create(name: "Beanie", difficulty_level: 2)

stage1 = Stage.create(title: "Casting on", image: "scarf_casting_on")
stage2 = Stage.create(title: "Second row", image: "knitting_scarf_rows")
stage3 = Stage.create(title: "Continuing", image: "lengthening scarf")
stage4 = Stage.create(title: "Casting off",  image: "casting_off_scarf")


instruction1 = Instruction.create(name: "casting on", content: "Using 8 ply wool and size 10 needles, cast on 35 stitches.", info_video: "https://www.youtube.com/embed/N_PK5ezwKfU")
instruction2 = Instruction.create(name: "swapping needles to start knitting", content: "When you finish casting on the 35 stitches, put the needle that you have been casting onto into your left hand, and insert your empty needle into the back of the first loop that you have made opposite.", info_video: "https://www.youtube.com/embed/dshWwDtiOCA")
instruction3 = Instruction.create(name: "starting normal knit", content: "Knit to the end of the row! Go on, you can do it! Take it slowly", info_video: "https://www.youtube.com/embed/7eTpGAX06aE")
instruction4 = Instruction.create(name: "normal knit", content: "Now repeat until you have knitted 300 rows, or reached your desired scarf length", info_video: "https://www.youtube.com/embed/7eTpGAX06aE")
instruction5 = Instruction.create(name: "casting off", content: "Now cast off and you are finished! Well done!", info_video: "https://www.youtube.com/embed/1WbpwXyjTdo")

project1.stages << stage1 << stage2 << stage3 << stage4

stage1.instructions << instruction1
stage2.instructions << instruction2 << instruction3
stage3.instructions << instruction4
stage4.instructions << instruction5

puts 'seeded!'

