INSERT INTO category (id, name)
VALUES 
(1, 'Luxury'),
(2, 'Apartment Hotel'),
(3, 'Motel'),
(4, 'Bed and Breakfast'),
(5, 'Resort');

INSERT INTO room_type (id, description, occupancy)
VALUES
(1, 'Single', 1),
(2, 'Double', 2),
(3, 'Suite', 2),
(4, 'Presidential Suite', 6);

INSERT INTO authority (id, role)
VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_COMMENT_MODERATOR'),
(3, 'ROLE_HOTEL_MANAGER'),
(4, 'ROLE_ADMIN');

INSERT INTO `user`(id, email, name, password, username, authority_id)
VALUES
(1, 'lamyaa@gmail.com','lamyaa belhadi', 'pass', 'lamyaa', 4),
(2, 'ikhlass@gmail.com','ikhlass nouri', 'pass', 'ikhlass', 2),
(3, 'ouidad@gmail.com','ouidad elgaout', 'pass', 'ouidad', 1),
(4, 'nouha@gmail.com','nouha rani', 'pass', 'nouha', 3),
(5, 'sara@gmail.com','sara dodo', 'pass', 'sara', 3);



INSERT INTO hotel (id, address, name, rating, category_id, manager_id, status)
VALUES
(1, 'Anfa Casablanca 149, Casablanca','Relax', 5, 1, 4, true),
(2, 'Mosque hassan II, Casablanca','Lido', 4, 2, 4, true),
(3, 'Anfa Place 36, Casablanca','Onomo', 2, 3, 5, true),
(4, 'Sidi Belyout, Casablanca', 'Windsor', 5, 5, 5, false);

insert into room (id, floor, room_number, hotel_id, type_id, price) values (1, 1, '101', 1, 1, 50);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (2, 1, '102', 1, 2, 75);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (3, 1, '103', 1, 3, 100);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (4, 1, '104', 1, 4, 200);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (5, 1, '105', 1, 1, 50);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (6, 2, '201', 1, 2, 75);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (7, 2, '202', 1, 3, 100);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (8, 2, '203', 1, 4, 200);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (9, 2, '204', 1, 1, 50);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (10, 2, '205', 1, 2, 75);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (11, 1, '101', 2, 1, 50);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (12, 1, '102', 2, 2, 75);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (13, 1, '103', 2, 3, 100);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (14, 1, '104', 2, 4, 200);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (15, 1, '105', 2, 1, 50);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (16, 2, '201', 2, 2, 75);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (17, 2, '202', 2, 3, 100);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (18, 2, '203', 2, 4, 200);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (19, 2, '204', 2, 1, 50);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (20, 2, '205', 2, 2, 75);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (21, 1, '101', 3, 1, 50);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (22, 1, '102', 3, 2, 75);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (23, 1, '103', 3, 3, 100);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (24, 1, '104', 3, 4, 200);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (25, 1, '105', 3, 1, 50);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (26, 2, '201', 3, 2, 75);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (27, 2, '202', 3, 3, 100);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (28, 2, '203', 3, 4, 200);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (29, 2, '204', 3, 1, 50);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (30, 2, '205', 3, 2, 75);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (31, 1, '101', 4, 1, 50);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (32, 1, '102', 4, 2, 75);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (33, 1, '103', 4, 3, 100);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (34, 1, '104', 4, 4, 200);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (35, 1, '105', 4, 1, 50);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (36, 2, '201', 4, 2, 75);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (37, 2, '202', 4, 3, 100);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (38, 2, '203', 4, 4, 200);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (39, 2, '204', 4, 1, 50);
insert into room (id, floor, room_number, hotel_id, type_id, price) values (40, 2, '205', 4, 2, 75);

INSERT INTO `comment` (`id`, `date`, `status`, `text`, `hotel_id`, `user_id`, `is_answer`) VALUES
(6, '2020-09-30', 1, 'Friendly and helpful staff. Great pool. Not in the city centre of Casablanca but close to the tram station.', 4, 9, 0),
(5, '2020-09-30', 1, 'Shower head moves all over the place. Boiler is noisy even though its in an outside cupboard its still next to the bed. Be good if the wall could be insulated.', 3, 8, 0),
(4, '2019-09-30', 1, 'The location of the Hotel is great. Its only a view kms from the Airport, there is the great shopping centre Morroco mall in front of the hotel and the tram station is next door as well.', 2, 3, 0),
(3, '2020-10-20', 0, 'We loved the nice quiet location, the wonderful hospitality of the proprietor and superbly attentive staff. Breakfast always well presented and varied. Beautiful apartment with excellent facilities!', 1, 3, 0),
(1, '2021-02-15', 1, 'The best thing about this hotel were the owners. They were lovely friendly people. laila asked us what he could cook for us. In no time we had a delicious pasta all amatriciana and a mixed meat dish. It was very nice.', 1, 3, 0),
(2, '2020-10-18', 1, 'Really helpful staff, suite room was perfect.', 1, 6, 0);



INSERT INTO `image` (`id`, `insertion_date`, `hotel_id`, `path`) VALUES
(1, '2020-10-22', 1, 'hotel1.jpg'),
(2, '2020-10-22', 1, 'hotel2.jpg'),
(3, '2020-10-22', 1, 'hotel3.jpg'),
(4, '2020-10-22', 2, 'hotel4.jpg'),
(5, '2020-10-22', 2, 'hotel5.jpg'),
(6, '2020-10-22', 3, 'hotel6.jpg'),
(7, '2020-10-22', 3, 'hotel7.jpg'),
(8, '2020-10-22', 4, 'hotel8.jpg'),
(9, '2020-10-22', 4, 'hotel9.jpg');
INSERT INTO `booking` (`id`, `begin_date`, `end_date`, `state`, `user_id`) VALUES
(1, '2020-12-03', '2020-12-05', 1, 15),
(2, '2020-12-04', '2020-12-07', 1, 9),
(3, '2020-11-29', '2020-12-02', 1, 3),
(4, '2020-11-27', '2020-11-29', 0, 3),
(5, '2020-12-05', '2020-12-07', 0, 6),
(6, '2020-12-21', '2020-12-23', 0, 8),
(7, '2020-11-23', '2020-11-24', 1, 9),
(8, '2020-12-01', '2020-12-03', 1, 11),
(9, '2020-12-23', '2020-12-25', 0, 4),
(10, '2020-11-27', '2020-11-28', 0, 3),
(11, '2020-12-05', '2020-12-09', 1, 12),
(12, '2020-11-30', '2020-12-04', 1, 13),
(13, '2020-11-28', '2020-12-01', 1, 14);

insert into booking_rooms (bookings_id, rooms_id) values (1, 1);
insert into booking_rooms (bookings_id, rooms_id) values (2, 2);
insert into booking_rooms (bookings_id, rooms_id) values (3, 5);
insert into booking_rooms (bookings_id, rooms_id) values (4, 7);
insert into booking_rooms (bookings_id, rooms_id) values (5, 12);
insert into booking_rooms (bookings_id, rooms_id) values (6, 13);
insert into booking_rooms (bookings_id, rooms_id) values (7, 18);
insert into booking_rooms (bookings_id, rooms_id) values (8, 19);
insert into booking_rooms (bookings_id, rooms_id) values (9, 25);
insert into booking_rooms (bookings_id, rooms_id) values (10, 26);
insert into booking_rooms (bookings_id, rooms_id) values (11, 27);
insert into booking_rooms (bookings_id, rooms_id) values (12, 31);
insert into booking_rooms (bookings_id, rooms_id) values (13, 33);
insert into booking_rooms (bookings_id, rooms_id) values (4, 9);
insert into booking_rooms (bookings_id, rooms_id) values (5, 15);
insert into booking_rooms (bookings_id, rooms_id) values (6, 11);