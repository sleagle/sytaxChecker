/* CREATE SCHEMA `SyntaxChecker` ; */

drop table verb;
drop table noun;
drop table object;
drop table time_adverb;
drop table tense;

CREATE TABLE tense(
	tense_id INT AUTO_INCREMENT PRIMARY KEY,
    tense VARCHAR(15)
);

CREATE TABLE noun(
	noun_id INT AUTO_INCREMENT PRIMARY KEY,
    content VARCHAR(100)
);

CREATE TABLE verb(
	verb_id INT AUTO_INCREMENT PRIMARY KEY,
    verb VARCHAR(100),
    tense_id INT,
    noun_id INT,
	CONSTRAINT FK_VERB_TENSE_ID FOREIGN KEY (tense_id) REFERENCES tense(tense_id),
    CONSTRAINT FK_NOUNT_TENSE_ID FOREIGN KEY (noun_id) REFERENCES noun(noun_id)
);

CREATE TABLE time_adverb(
	id INT AUTO_INCREMENT PRIMARY KEY,
    content VARCHAR(100),
	tense_id INT,
	CONSTRAINT FK_TIME_ADVERB_TENSE_ID FOREIGN KEY (tense_id) REFERENCES tense(tense_id) 
);

CREATE TABLE object(
	object_id INT AUTO_INCREMENT PRIMARY KEY,
    object VARCHAR(100)
);

INSERT INTO tense(tense) VALUES('present');
INSERT INTO tense(tense) VALUES('past');
INSERT INTO tense(tense) VALUES('future');

INSERT INTO noun(content) VALUES('මම');
INSERT INTO noun(content) VALUES('අපි');
INSERT INTO noun(content) VALUES('ඔබ');
INSERT INTO noun(content) VALUES('ඔබලා');
INSERT INTO noun(content) VALUES('ඔහු');
INSERT INTO noun(content) VALUES('ඇය');
INSERT INTO noun(content) VALUES('ඌ');
INSERT INTO noun(content) VALUES('ඔවුහු');

INSERT INTO time_adverb(content, tense_id) VALUES('ඊයේ', 2);
INSERT INTO time_adverb(content, tense_id) VALUES('පසුව', 2);
INSERT INTO time_adverb(content, tense_id) VALUES('ඊයේ රෑ', 2);
INSERT INTO time_adverb(content, tense_id) VALUES('අද උදෑසන', 2);
INSERT INTO time_adverb(content, tense_id) VALUES('පෙර', 2);

INSERT INTO time_adverb(content, tense_id) VALUES('අද', 1);
INSERT INTO time_adverb(content, tense_id) VALUES('දැන්', 1);
INSERT INTO time_adverb(content, tense_id) VALUES('සාමාන්‍යයෙන්', 1);

INSERT INTO time_adverb(content, tense_id) VALUES('හෙට', 3);
INSERT INTO time_adverb(content, tense_id) VALUES('අද රෑ', 3);
INSERT INTO time_adverb(content, tense_id) VALUES('ලබන සතියෙ', 3);
INSERT INTO time_adverb(content, tense_id) VALUES('ලඟදි', 3);
INSERT INTO time_adverb(content, tense_id) VALUES('මෑතකදි', 3);
INSERT INTO time_adverb(content, tense_id) VALUES('ඉක්මණින්', 3);
INSERT INTO time_adverb(content, tense_id) VALUES('ක්ෂණිකවම', 3);
INSERT INTO time_adverb(content, tense_id) VALUES('පසුව', 3);

INSERT INTO verb(verb,tense_id,noun_id) VALUES('කෑවෙමි',2,1);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කමි',1,1);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කන්නෙමි',3,1);

INSERT INTO verb(verb,tense_id,noun_id) VALUES('කෑවෙමු',2,2);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කමු',1,2);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කන්නෙමු',3,2);

INSERT INTO verb(verb,tense_id,noun_id) VALUES('කෑවෙහි',2,3);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කන්නෙහි',1,3);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කන්නෙහි',3,3);

INSERT INTO verb(verb,tense_id,noun_id) VALUES('කෑවෙහු',2,4);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කන්නෙහු',1,4);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කන්නෙහු',3,4);

INSERT INTO verb(verb,tense_id,noun_id) VALUES('කෑවේය',2,5);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කන්නේය',1,5);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කන්නේය',3,5);

INSERT INTO verb(verb,tense_id,noun_id) VALUES('කෑවාය',2,6);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කන්නීය',1,6);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කන්නීය',3,6);

INSERT INTO verb(verb,tense_id,noun_id) VALUES('කෑවේය',2,7);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කයි',1,7);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කයි',3,7);

INSERT INTO verb(verb,tense_id,noun_id) VALUES('කැවෝය',2,8);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කෑහ',2,8);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කති',1,8);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කති',3,8);


/* SECOND VERB */

INSERT INTO verb(verb,tense_id,noun_id) VALUES('බීවෙමි',2,1);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('බොමි',1,1);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('බොන්නෙමි',3,1);

INSERT INTO verb(verb,tense_id,noun_id) VALUES('බීවෙමු',2,2);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('බොමු',1,2);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('බොන්නෙමු',3,2);

INSERT INTO verb(verb,tense_id,noun_id) VALUES('බිවෙහි ',2,3);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('බොන්නෙහි',1,3);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('බොන්නෙහි',3,3);

INSERT INTO verb(verb,tense_id,noun_id) VALUES('බීවෙහු ',2,4);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('බොන්නෙහු',1,4);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('බොන්නෙහු',3,4);

INSERT INTO verb(verb,tense_id,noun_id) VALUES('බීවේය',2,5);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('බොන්නේය ',1,5);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('බොන්නේය ',3,5);

INSERT INTO verb(verb,tense_id,noun_id) VALUES('බීවාය ',2,6);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('බොන්නීය',1,6);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('බොන්නීය',3,6);

INSERT INTO verb(verb,tense_id,noun_id) VALUES('බීවේය ',2,7);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('බොයි',1,7);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('කයි',3,7);

INSERT INTO verb(verb,tense_id,noun_id) VALUES('බීවෝය ',2,8);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('බොති',1,8);
INSERT INTO verb(verb,tense_id,noun_id) VALUES('බොන්නෝය ',3,8);

INSERT INTO object(object) VALUES('බත්');


commit;