ALTER DATABASE board DEFAULT CHARACTER SET utf8;

CREATE TABLE board.member (
    memberid varchar(50) PRIMARY KEY,
    name varchar(50) NOT NULL,
    password varchar(10) NOT NULL,
    regdate datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT="board member";

CREATE TABLE board.article (
    article_no int auto_increment PRIMARY KEY,
    writer_id varchar(50) NOT NULL,
    writer_name varchar(50) NOT NULL,
    title varchar(255) NOT NULL,
    regdate datetime NOT NULL,
    moddate datetime NOT NULL,
    read_cnt int
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT="board article";

CREATE TABLE board.article_content (
    article_no int PRIMARY KEY,
    content text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT="board article_content";
