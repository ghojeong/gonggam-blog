ALTER DATABASE board DEFAULT CHARACTER SET utf8;

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
("아이디1", "이름1", "비밀번호1", now() ),
("아이디2", "이름2", "비밀번호2", now() ),
("아이디3", "이름3", "비밀번호3", now() );

INSERT INTO article (writer_id, writer_name, title, regdate, moddate, read_cnt)
VALUES
("아이디1", "이름1", "제목1", now(), now(), 1 ),
("아이디2", "이름2", "제목2", now(), now(), 2 ),
("아이디3", "이름3", "제목3", now(), now(), 3 );

INSERT INTO article_content (article_no, content)
VALUES
(1, "본문1"),
(2, "본문2"),
(3, "본문3");
