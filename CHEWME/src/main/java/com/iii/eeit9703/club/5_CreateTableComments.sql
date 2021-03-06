use CMDB;
                                                                                                           

IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'comments')      
BEGIN
	DROP Table comments;
END
go

CREATE TABLE comments
(commentID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
issueID int NOT NULL,
content varchar,
commenterId int,
commentDate Date)

go
IF EXISTS (SELECT name FROM sysobjects
            WHERE type='u' AND name = 'issues')
BEGIN
Alter TABLE comments ADD CONSTRAINT FK_IC_IssueID FOREIGN KEY(issueID) REFERENCES issues(issueID)
END
go

select * from comments;
go