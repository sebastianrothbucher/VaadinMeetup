CREATE TABLE BREAKOUT (ID  SERIAL NOT NULL, TOPIC VARCHAR(255), SUBMITTEDBYUSER_MEETUPID INTEGER, PRIMARY KEY (ID));
CREATE TABLE IMPRINT (ID  SERIAL NOT NULL, CONTENT VARCHAR(2048), PRIMARY KEY (ID));
CREATE TABLE TALK (ID  SERIAL NOT NULL, DETAILS VARCHAR(1024), TITLE VARCHAR(255), PRIMARY KEY (ID));
CREATE TABLE USERTAB (MEETUPID INTEGER NOT NULL, MEETUPSHORT VARCHAR(255), PRIMARY KEY (MEETUPID));
CREATE TABLE BREAKOUT_USERTAB (Breakout_ID BIGINT NOT NULL, likedByUsers_MEETUPID INTEGER NOT NULL, PRIMARY KEY (Breakout_ID, likedByUsers_MEETUPID));
ALTER TABLE BREAKOUT ADD CONSTRAINT FK_BREAKOUT_SUBMITTEDBYUSER_MEETUPID FOREIGN KEY (SUBMITTEDBYUSER_MEETUPID) REFERENCES USERTAB (MEETUPID);
ALTER TABLE BREAKOUT_USERTAB ADD CONSTRAINT FK_BREAKOUT_USERTAB_Breakout_ID FOREIGN KEY (Breakout_ID) REFERENCES BREAKOUT (ID);
ALTER TABLE BREAKOUT_USERTAB ADD CONSTRAINT FK_BREAKOUT_USERTAB_likedByUsers_MEETUPID FOREIGN KEY (likedByUsers_MEETUPID) REFERENCES USERTAB (MEETUPID);
