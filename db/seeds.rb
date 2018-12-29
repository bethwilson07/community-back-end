# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

himym = Group.create(name: "HIMYM Cast", photo:"https://thoughtcatalog.files.wordpress.com/2016/07/howimet.jpg?w=1140&h=855", description: "Ted, Marshall, Lily, Barney and Robin." )

barney = Member.create(name: "Barney Stinson", age: 34 , email: "barney@hmail.com", photo: "https://www.sheknows.com/wp-content/uploads/2018/08/NPH-Barney_komvse.jpeg", bio: "Suit up! It's going to be--wait for it--....lengendary!", group: himym, password: "barney" )
robin = Member.create(name: "Robin Scherbatsky", age: 42, email:"robin@hmail.com", photo: "https://www.sheknows.com/wp-content/uploads/2018/08/himym-robin-sparkes-ps-i-love-you_o6zyc6.jpeg", bio: "Let's go to the mall, eh?", group: himym, password: "robin"  )
marshall = Member.create(name: "Marshall Eriksen", age: 28, email:"marshall@hmail.com", photo: "https://thepostculture.files.wordpress.com/2014/03/daisy.png", bio: "College, Ted, Lily, Law School, Drinks, Hockey.", group: himym, password: "marshall" )
lily = Member.create(name: "Lily Aldrin", age: 32, email:"lily@hmail.com", photo: "https://upload.wikimedia.org/wikipedia/en/f/fe/Lily_aldrin.jpg", bio: "I looooooooove people and my friends and especially Marshall.", group: himym, password: 'lily' )
ted = Member.create(name: "Ted Mosby", age: 27, email:"ted@hmail.com", photo: "https://img.thedailybeast.com/image/upload/c_crop,d_placeholder_euli9k,h_1439,w_2560,x_0,y_0/dpr_2.0/c_limit,w_740/fl_lossy,q_auto/v1492718113/articles/2013/09/22/is-how-i-met-your-mother-s-ted-mosby-a-slut/130921-how-met-your-mother-tease_zdtauv", bio: "I'm a sensitive guy who makes every relationship super complicated. But you'll love me!", group: himym, password: "ted")

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
MemberEvent.create(member_id: 1, event_id: 1, organizer: false, status: "going")
MemberEvent.create(member_id: 2, event_id: 1, organizer: false, status: "going")
MemberEvent.create(member_id: 4, event_id: 4, organizer: false, status: "not going")
