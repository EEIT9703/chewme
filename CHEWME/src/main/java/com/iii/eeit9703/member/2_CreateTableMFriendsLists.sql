USE CMDB;
GO

IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'm_friends_lists')      
BEGIN
DROP TABLE m_friends_lists;
END
go



CREATE TABLE m_friends_lists(
memberId    varchar(30),
friendId    varchar(30),
fStatus     nvarchar(20),
);
IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'members')      
BEGIN
ALTER TABLE m_friends_lists ADD CONSTRAINT mfriendslists_foreign_key FOREIGN KEY (memberId)REFERENCES members(memberId) 
END

INSERT INTO m_friends_lists(memberId,friendId,fStatus) VALUES('eeit970301','eeit970303','好友')
INSERT INTO m_friends_lists(memberId,friendId,fStatus) VALUES('eeit970301','eeit970304','好友')
INSERT INTO m_friends_lists(memberId,friendId,fStatus) VALUES('eeit970301','eeit970305','待確認')
INSERT INTO m_friends_lists(memberId,friendId,fStatus) VALUES('eeit970301','eeit970306','好友')
