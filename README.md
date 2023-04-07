# airbnb_db_iu
The objective of my project is to establish a database for renting out apartments and bedrooms, similar to the use case of Airbnb. The platform serves as a mediator between the host and guest, handling all booking procedures. Transactions are conducted through the platform, with guests paying for their bookings using credit cards. Hosts receive payment only after 24 hours of the guest's arrival to ensure that the accommodation meets the platform's description. 

During the conception phase, I utilized DrawSQL software to create an entity relationship model (ERM) that outlines data tables and their attributes, as well as relationships between entities. This ERM serves as a foundation for developing a database using MySQL database management system.

The requirements specification for my project Airbnb: 
After analyzing the Airbnb website and mobile app, I found that there are 2 main roles, each goes through different user experience:
-	Guest 
-	Host

The actions the guest perform are login, create a profile page, search for a desired place, book the place from the host, pay after 24 hours from arrival, finally provide a review on the host and the place.
The actions the host perform are login, create a profile page, create a hosting place list, identify the rooms and spaces, the place highlights, the place offer, place location, the price, then receive the payments after 24 hours from the guest arrival, finally, providing a review on the guest.

During the development phase, The SQL code sets the session mode to ANSI and creates a database called IU_Airbnb. It then creates 23 tables with specific fields and constraints, such as guest_profile, host_profile, login_guest, login_host, guest_about, guest_card_details, identity_verification, emergency_contact, host_place, rooms_spaces, place_location, place_highlight, property_guests, place_offer, reservation, guest_payment_type, setup_payouts, transaction_approval, host_payment_type, payout_methods, price_calculator, review_guest, and review_host. The code also inserts data into each table, update some columns, alter some tables, modifying columns data types, drop foreign key from a table and runs SQL test for each table. Overall, this code sets up a database for an Airbnb-like platform.

