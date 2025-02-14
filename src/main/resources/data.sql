-- -- INSERT INTO Users (id, login, password, role_id, lastName, firstName, patronymic, appointment, birthday, avatarPath) VALUES (01, 'testuser', 'testpassword', 'user', 'aaa', 'aaa', 'aaa', 'aaa', '09.09.2003', ' ');
--
-- -- Вставка данных в таблицу roles
-- INSERT INTO roles (name)
-- VALUES ('USER');
--
-- -- Вставка данных в таблицу users
-- INSERT INTO users (login, password, role_id, last_name, first_name, patronymic, appointment, birthday, avatar_path)
-- VALUES ('testuser', 'testpassword', '1', 'Doe', 'John', 'A.', 'Developer', '2000-01-01', 'path/to/avatar.jpg');
--

-- Вставка данных в таблицу roles
-- Вставка данных в таблицу Role
INSERT INTO Roles (name) VALUES ('ROLE_USER');
INSERT INTO Roles (name) VALUES ('ROLE_ADMIN');

-- Вставка данных в таблицу User
INSERT INTO Users (login, password, last_Name, first_Name, patronymic, appointment, birthday, avatar_Path) VALUES
                                                                                                           ('user1', 'password1', 'Doe', 'John', 'Middle', 'Developer', '1990-01-01', 'path/to/avatar1.jpg'),
                                                                                                           ('user2', 'password2', 'Smith', 'Jane', 'Middle', 'Manager', '1985-05-15', 'path/to/avatar2.jpg');

-- Вставка данных в таблицу Post
INSERT INTO Post (created_When, user_id, title, text) VALUES
                                                         ('2023-10-01 10:00:00', 1, 'First Post', 'This is the first post.'),
                                                         ('2023-10-02 11:00:00', 2, 'Second Post', 'This is the second post.');

-- Вставка данных в таблицу Like
INSERT INTO Likes (user_id, post_id) VALUES
                                         (1, 1),
                                         (2, 2);

-- Вставка данных в таблицу Repost
INSERT INTO Repost (post_id, user_id, target_Chat_Id) VALUES
                                                        (1, 2, 1),
                                                        (2, 1, 2);

-- Вставка данных в таблицу Comment
INSERT INTO Comment (post_id, created_When, user_id, text, answer_To_Comm) VALUES
                                                                                  ( 1,'2023-10-01 12:00:00', 1, 'This is a comment on the first post.', NULL),
                                                                                  (2,'2023-10-01 13:00:00', 2, 'This is a comment on the second post.', NULL);

-- Вставка данных в таблицу Chat
INSERT INTO Chat (chat_Type, chat_Name, created_When, created_by) VALUES
                                                                   ('GROUP', 'Group Chat', '2023-10-01 14:00:00', 1),
                                                                   ('PRIVATE', 'Private Chat', '2023-10-02 15:00:00', 2);

-- Вставка данных в таблицу Message
INSERT INTO Message (chat_id, user_id, text, created_When, status) VALUES
                                                                      (1, 1, 'Hello, this is a message in the group chat.', '2023-10-01 16:00:00', 'SENT'),
                                                                      (2, 2, 'Hello', '2023-10-01 17:00:00', 'SENT');
