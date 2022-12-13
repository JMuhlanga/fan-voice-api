# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create([
    {"username":"user", "email":"adminuser@email.com", "password_digest":"12345678"},
    {"username":"user1", "email":"test1user@email.com", "password_digest":"87654321"},
    {"username":"user2", "email":"test2user@email.com", "password_digest":"87651234"}
])

Article.create([
    {"user_id":1,"title":"Lorem ipsum dolor sit amet","content":"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sollicitudin nibh sit amet commodo nulla facilisi nullam. Eros in cursus turpis massa. Erat pellentesque adipiscing commodo elit at imperdiet. Ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas. Faucibus purus in massa tempor nec feugiat nisl pretium. Est ante in nibh mauris cursus mattis. Massa vitae tortor condimentum lacinia quis vel. Sed nisi lacus sed viverra tellus in. Aliquam vestibulum morbi blandit cursus. Ac placerat vestibulum lectus mauris ultrices eros in. Eu consequat ac felis donec. Tortor consequat id porta nibh venenatis cras. Neque laoreet suspendisse interdum consectetur libero id faucibus nisl. Eget mauris pharetra et ultrices. Pulvinar etiam non quam lacus suspendisse faucibus interdum posuere. Diam quam nulla porttitor massa. Bibendum arcu vitae elementum curabitur vitae nunc sed. Eget nunc scelerisque viverra mauris in aliquam sem fringilla ut. Fringilla urna porttitor rhoncus dolor.","img":"https://images.pexels.com/photos/14145385/pexels-photo-14145385.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "category_id":1},
    {"user_id":2,"title":"Viverra adipiscing at in tellus","content":"Viverra adipiscing at in tellus. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Elementum pulvinar etiam non quam lacus. Aliquam sem et tortor consequat id porta nibh venenatis. Amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus. Nec nam aliquam sem et tortor consequat id porta. Sem fringilla ut morbi tincidunt. Scelerisque varius morbi enim nunc faucibus. Interdum varius sit amet mattis vulputate enim nulla. Sed blandit libero volutpat sed cras. Aliquam ultrices sagittis orci a. Sed ullamcorper morbi tincidunt ornare massa eget egestas purus. Nulla pellentesque dignissim enim sit amet venenatis. Sed augue lacus viverra vitae congue. Sit amet commodo nulla facilisi. Vulputate ut pharetra sit amet. Volutpat odio facilisis mauris sit. Magna fringilla urna porttitor rhoncus dolor. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet risus.","img":"https://images.pexels.com/photos/13057049/pexels-photo-13057049.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "category_id":2},
    {"user_id":2,"title":"Est pellentesque elit ullamcorper dignissim cras tincidunt","content":"Est pellentesque elit ullamcorper dignissim cras tincidunt. Ridiculus mus mauris vitae ultricies. Dui vivamus arcu felis bibendum ut tristique et egestas quis. Viverra maecenas accumsan lacus vel facilisis volutpat. Commodo nulla facilisi nullam vehicula. Nunc scelerisque viverra mauris in aliquam sem fringilla. Mi in nulla posuere sollicitudin aliquam ultrices sagittis orci a. Lacus laoreet non curabitur gravida arcu ac tortor dignissim. Nunc non blandit massa enim. Amet consectetur adipiscing elit pellentesque.","img":"https://images.pexels.com/photos/12900278/pexels-photo-12900278.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "category_id":3}
])

Comment.create([
    {"article_id":1,"user_id":2,"comment":"Auctor urna nunc id cursus. Velit aliquet sagittis id consectetur purus. Fusce ut placerat orci nulla pellentesque dignissim enim sit. Enim sit amet venenatis urna. Volutpat sed cras ornare arcu dui vivamus. "},
    {"article_id":2,"user_id":3,"comment":"Sit amet dictum sit amet justo donec enim diam vulputate. Magna fringilla urna porttitor rhoncus dolor purus non."},
    {"article_id":3,"user_id":2,"comment":"Dolor morbi non arcu risus quis varius quam quisque id. Odio pellentesque diam volutpat commodo sed egestas. Nunc consequat interdum varius sit amet mattis."}
])

Category.create([
    {"name":"Sports"},
    {"name":"Pop-Culture"},
    {"name":"Gaming"}
])


