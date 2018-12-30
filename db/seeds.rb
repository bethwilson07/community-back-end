# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

himym = Group.create(name: "HIMYM Cast", photo:"https://thoughtcatalog.files.wordpress.com/2016/07/howimet.jpg?w=1140&h=855", description: "Ted, Marshall, Lily, Barney and Robin." )

barney = Member.create(name: "Barney Stinson", age: 34 , email: "barney@hmail.com", photo: "https://www.sheknows.com/wp-content/uploads/2018/08/NPH-Barney_komvse.jpeg", bio: "Suit up! It's going to be--wait for it--....lengendary!", group: himym, password: "barney" )
robin = Member.create(name: "Robin Scherbatsky", age: 42, email:"robin@hmail.com", photo: "https://vignette.wikia.nocookie.net/loveinterest/images/4/48/Robin-robin-scherbatsky-29437383-1920-2560-600x800.jpg/revision/latest?cb=20121115061619", bio: "Let's go to the mall, eh?", group: himym, password: "robin"  )
marshall = Member.create(name: "Marshall Eriksen", age: 28, email:"marshall@hmail.com", photo: "http://i.imgur.com/DaiE7.png", bio: "College, Ted, Lily, Law School, Drinks, Hockey.", group: himym, password: "marshall" )
lily = Member.create(name: "Lily Aldrin", age: 32, email:"lily@hmail.com", photo: "https://i.pinimg.com/originals/07/35/47/0735473133ac31fd134172c9b504bae8.jpg", bio: "I looooooooove people and my friends and especially Marshall.", group: himym, password: 'lily' )
ted = Member.create(name: "Ted Mosby", age: 27, email:"ted@hmail.com", photo: "http://images5.fanpop.com/image/photos/28800000/Ted-ted-mosby-28899319-400-598.jpg", bio: "I'm a sensitive guy who makes every relationship super complicated. But you'll love me!", group: himym, password: "ted")

bar_hangout = Event.create(name: "Hangout @ the Bar", description: "Hangout at our bar.", location: "MacLaren's Pub", :when => DateTime.strptime("01/14/2019 19:30", "%m/%d/%Y %H:%M"), group: himym)
teds_birthday = Event.create(name: "Ted's Birthday", description: "Celebrating Ted!", location: "MacLaren's Pub", :when => DateTime.strptime("02/02/2019 18:30", "%m/%d/%Y %H:%M"), group: himym)
shenanigans = Event.create(name: "Hangout @ Marshall's Apt", description: "Hanging out at Marshall & Lily's place.", location: "Marshall & Lily's Apt", :when => DateTime.strptime("01/12/2019 14:30", "%m/%d/%Y %H:%M"), group: himym)
dinner = Event.create(name: "Dinner @ the Bar", description: "Dinner @ the Bar", location: "MacLaren's Pub", :when => DateTime.strptime("01/08/2019 19:00", "%m/%d/%Y %H:%M"), group: himym)
talking = Event.create(name: "Hangout @ Ted's Apt", description: "Emotional discussions at Ted's place.", location:"Ted's Apt", :when => DateTime.strptime("01/11/2019 20:00", "%m/%d/%Y %H:%M"), group: himym)

MemberEvent.create(member_id: 1, event_id: 1, organizer: false, status: "going")
MemberEvent.create(member_id: 2, event_id: 1, organizer: false, status: "going")
MemberEvent.create(member_id: 3, event_id: 1, organizer: true, status: "going")
MemberEvent.create(member_id: 4, event_id: 1, organizer: false, status: "going")
MemberEvent.create(member_id: 5, event_id: 1, organizer: false, status: "going")

MemberEvent.create(member_id: 2, event_id: 2, organizer: false, status: "going")
MemberEvent.create(member_id: 4, event_id: 2, organizer: true, status: "going")
MemberEvent.create(member_id: 5, event_id: 2, organizer: false, status: "maybe")
MemberEvent.create(member_id: 3, event_id: 2, organizer: false, status: "maybe")
MemberEvent.create(member_id: 1, event_id: 2, organizer: false, status: "not going")

MemberEvent.create(member_id: 1, event_id: 3, organizer: false, status: "not going")
MemberEvent.create(member_id: 2, event_id: 3, organizer: false, status: "not going")
MemberEvent.create(member_id: 3, event_id: 3, organizer: true, status: "going")
MemberEvent.create(member_id: 4, event_id: 3, organizer: false, status: "going")
MemberEvent.create(member_id: 5, event_id: 3, organizer: false, status: "going")

MemberEvent.create(member_id: 5, event_id: 4, organizer: true, status: "going")
MemberEvent.create(member_id: 2, event_id: 4, organizer: false, status: "maybe")
MemberEvent.create(member_id: 1, event_id: 4, organizer: false, status: "going")

MemberEvent.create(member_id: 5, event_id: 5, organizer: true, status: "going")
MemberEvent.create(member_id: 3, event_id: 5, organizer: false, status: "going")
MemberEvent.create(member_id: 4, event_id: 4, organizer: false, status: "not going")
