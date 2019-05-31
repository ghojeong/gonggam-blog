INSERT INTO board.member (memberid, name, password, regdate)
VALUES
("id", "name", "pw", now() ),
("아이디1", "이름1", "비밀번호1", now() ),
("아이디2", "이름2", "비밀번호2", now() ),
("아이디3", "이름3", "비밀번호3", now() );

INSERT INTO board.article (writer_id, writer_name, title, regdate, moddate, read_cnt)
VALUES
("아이디1", "이름1", "제목1", now(), now(), 1 ),
("아이디2", "이름2", "제목2", now(), now(), 2 ),
("아이디3", "이름3", "제목3", now(), now(), 3 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 ),
("id", "name", "title", now(), now(), 1 );

INSERT INTO board.article_content (article_no, content)
VALUES
(1, "본문1"),
(2, "본문2"),
(3, "본문3"),
(4, "content"),
(5, "content"),
(6, "content"),
(7, "content"),
(8, "content"),
(9, "content"),
(10, "content"),
(11, "content"),
(12, "content"),
(13, "content"),
(14, "content"),
(15, "content"),
(16, "content"),
(17, "content"),
(18, "content"),
(19, "content"),
(20, "content"),
(21, "content");
