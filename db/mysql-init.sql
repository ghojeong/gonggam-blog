USE board;

CREATE TABLE member (
    memberid varchar(50) PRIMARY KEY,
    name varchar(50) NOT NULL,
    password varchar(10) NOT NULL,
    regdate datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT="board member";

CREATE TABLE article (
    article_no int auto_increment PRIMARY KEY,
    writer_id varchar(50) NOT NULL,
    writer_name varchar(50) NOT NULL,
    title varchar(255) NOT NULL,
    regdate datetime NOT NULL,
    moddate datetime NOT NULL,
    read_cnt int
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT="board article";

CREATE TABLE article_content (
    article_no int PRIMARY KEY,
    content text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT="board article_content";

INSERT INTO member (memberid, name, password, regdate)
VALUES
("id1", "name1", "pw1", now() ),
("id2", "name2", "pw2", now() ),
("id3", "name3", "pw3", now() );

INSERT INTO article (writer_id, writer_name, title, regdate, moddate, read_cnt)
VALUES
("id1", "name1", "title1", now(), now(), 1 ),
("id2", "name2", "title2", now(), now(), 2 ),
("id3", "name3", "title3", now(), now(), 3 );

INSERT INTO article_content (article_no, content)
VALUES
(1, "content1"),
(2, "content2"),
(3, "content3");
