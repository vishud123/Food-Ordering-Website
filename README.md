# Food-Ordering-Website
A food ordering website made using Java, JDBC, Servlet, JSP, HTML, CSS, JavaScript and mysql.

I create this project after complition of my java full statck training to understand the concepts. The aim to create this webpage is to use, all the three tiers i.e, the presentation tier or user interface; the aplication tier, where data is processed; and the data tier, where the data associated with the application is stored and managed.

i will now walk you through the different webpages and features of the website. All the images used for the project were copyright free when I used them. If they do belong to someone let me know and i will remove them.

# Login Page
This is a simple Login form which is created using the HTML for frontend and uses 'post' method to pass on the form values to LoginCheck.java for validating login. If the user don't have an existing account then they can also rgister a new account. 

![Screenshot (1)](https://github.com/vishud123/Food-Ordering-Website/assets/158056998/5b30c8eb-6b67-47c0-964f-06069447d8dc)

# Registration Page
This page contains a Registration form which is created to take the user information for further process and it will take the user information using post method to pass on the form values to RegisterInput.java for registering the new user and correspondinglly add all the data into the database. Certain constraints were  put on values being entered for the email and password to verify they are in the correct format and adequate length using regex.

![Screenshot (4)](https://github.com/vishud123/Food-Ordering-Website/assets/158056998/4479dfd8-99ca-44e8-bd17-e2fdb7f62b82)

After entering all the required information and clicking on the Register button all the data will be saved in the database and the user is redirected to the login page using their registered email id and password.

![Screenshot (1)](https://github.com/vishud123/Food-Ordering-Website/assets/158056998/b2687404-4017-4acd-9c1a-a5c1197be680)

# Welcome Page
Once the user has successfully logged in they will be taken to the menu page i.e. welcome.jsp and the users session will start. This page has a navigation bar with a logout button and a button to go to the cart. Further it has multiple containers with the name of food, images with buttons to add them to cart. If a user clicks on logout their session ends and they're redirected to the login page. If a user clicks on the Add to Cart button a value is passed to addToCart.jsp this program adds the item to cart while the user is still on the menu page. A user can add multiple items to their cart.

https://github.com/vishud123/Food-Ordering-Website/assets/158056998/e6bfeb18-7ab0-44cb-a3ec-ab411adf725e

# Cart Page
When the user click on Cart button, they are taken them to cart.jsp where the added items are shown with their name, price per item, quantity and total price. On the navigation bar there are three buttons one is for to continue shopping or to add more items in cart, one is for to confirm order and other is for logout.

![Screenshot (14)](https://github.com/vishud123/Food-Ordering-Website/assets/158056998/5aafec79-6430-4010-9aa9-6e1df6220a27)

# Checkout Page
When the user click on Checkout button, they are taken to Checkout.jsp page. This page shows the order_id of user, reaching time of order and the total amount to pay and there is only one option to out from this page is logout.

![Screenshot (6)](https://github.com/vishud123/Food-Ordering-Website/assets/158056998/261a7b07-064f-4f92-97a5-3b3f46124acf)

# customer table

![Screenshot (8)](https://github.com/vishud123/Food-Ordering-Website/assets/158056998/78c31328-a87f-40b1-99bd-d6b735a3ef86)

# drink table

![Screenshot (10)](https://github.com/vishud123/Food-Ordering-Website/assets/158056998/57a85d67-f0cd-4e8c-a41a-9d7c1410ed1a

# food table

![Screenshot (11)](https://github.com/vishud123/Food-Ordering-Website/assets/158056998/ff42cdd8-fcc6-41ac-acf4-41fbe8e61fd5)

# drinkorder table

![Screenshot (9)](https://github.com/vishud123/Food-Ordering-Website/assets/158056998/f71f55c0-e1fd-4295-85f1-6298d4e869be)

# foodorder table

![Screenshot (12)](https://github.com/vishud123/Food-Ordering-Website/assets/158056998/4cb68894-c10b-43a7-95e5-9177327c96b8)

# totalorder

![Screenshot (13)](https://github.com/vishud123/Food-Ordering-Website/assets/158056998/a70a55fe-961f-4507-a2c4-050fd9d920ab)







# database tables
Now comming to the database part, there are some tables I used to store the data. Here I used the mysql database which is connected to the java using JDBC.

Following are the tables which were created in the database:

![Screenshot (7)](https://github.com/vishud123/Food-Ordering-Website/assets/158056998/232224c0-df80-4f64-910c-9927ae86cefa)
