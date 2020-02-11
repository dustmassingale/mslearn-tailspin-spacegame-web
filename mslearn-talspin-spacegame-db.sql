CREATE TABLE dbo.[Profiles] (
    id int PRIMARY KEY,
    username nVarchar(255) NOT NULL,
   avatarUrl nVArchar(255) NOT NULL, 
   favoriteMap nVarchar(255) NULL

);

CREATE TABLE dbo.[Achievements] (
    id int PRIMARY KEY,
    description nVarchar(255) NOT NULL

);


CREATE TABLE dbo.[ProfileAchievements] (
    profileId int FOREIGN KEY REFERENCES dbo.Profiles(id),
    acheivementId int FOREIGN KEY REFERENCES dbo.Achievements(id)


);

CREATE TABLE dbo.[Scores] (
    id int PRIMARY KEY,
    profileId int FOREIGN KEY REFERENCES dbo.Profiles(id),
    score int,
    gameMode nVarchar(255) NOT NULL,
    gameRegion nVarchar(255) NOT NULL
    );

INSERT INTO dbo.Profiles VALUES(
    1, 'duality','images/avatars/default.svg',NULL
);

INSERT INTO dbo.Profiles VALUES(
    2, 'arrise','images/avatars/default.svg',NULL
);