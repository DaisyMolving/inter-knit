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


project1 = Project.create(name: "Scarf", difficulty_level: 1, image: "scarf_title.png", modal_image: , description: )

project2 = Project.create(name: "Pullover", difficulty_level: 3, image: "pullover_title.png", modal_image: , description: )

project3 = Project.create(name: "Beanie", difficulty_level: 2, image: "beanie_title.png", modal_image: , description: )

stage1 = Stage.create(title: "Casting on", image: "/assets/step-one-scarf.png")
stage2 = Stage.create(title: "Second row", image: "/assets/scarf-step-2.png")
stage3 = Stage.create(title: "Continuing", image: "lengthening scarf")
stage4 = Stage.create(title: "Casting off",  image: "casting_off_scarf")


instruction1 = Instruction.create(name: "Casting On", content: "Using 8 ply wool and size 10 needles, cast on 35 stitches.", info_video: "https://www.youtube.com/embed/N_PK5ezwKfU")
instruction2 = Instruction.create(name: "First Row", content: "When you finish casting on the 35 stitches, put the needle that you have been casting onto into your left hand, and insert your empty needle into the back of the first loop that you have made opposite.", info_video: "https://www.youtube.com/embed/dshWwDtiOCA")
instruction3 = Instruction.create(name: "First Row", content: "Knit to the end of the row! Go on, you can do it! Take it slowly", info_video: "https://www.youtube.com/embed/7eTpGAX06aE")
instruction4 = Instruction.create(name: "Knit, Knit, Knit!", content: "Now repeat until you have knitted 300 rows, or reached your desired scarf length", info_video: "https://www.youtube.com/embed/7eTpGAX06aE")
instruction5 = Instruction.create(name: "Casting Off", content: "Now cast off and you are finished! Well done!", info_video: "https://www.youtube.com/embed/1WbpwXyjTdo")

project1.stages << stage1 << stage2 << stage3 << stage4

stage1.instructions << instruction1
stage2.instructions << instruction2 << instruction3
stage3.instructions << instruction4
stage4.instructions << instruction5

puts 'seeded!'

