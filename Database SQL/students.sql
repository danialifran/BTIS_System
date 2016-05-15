CREATE TABLE students
(
	[stdId] BIGINT NOT NULL PRIMARY KEY, 
    [stdName] VARCHAR(50) NULL, 
    [stdIc] VARCHAR(15) NULL, 
    [stdAge] INT NULL, 
    [phone] VARCHAR(13) NULL,
	[address] VARCHAR (100) NULL, 
    [genderId] VARCHAR(1) NULL, 
    [email] NCHAR(50) NULL, 
    [sCode] VARCHAR(4) NULL, 
    CONSTRAINT [FK_stdIc] FOREIGN KEY ([stdIc]) REFERENCES [identification]([stdIc]),
	CONSTRAINT [FK_genderId] FOREIGN KEY ([genderId]) REFERENCES [gender]([genderId]),
	CONSTRAINT [FK_sCode] FOREIGN KEY ([sCode]) REFERENCES [status]([sCode])
)
