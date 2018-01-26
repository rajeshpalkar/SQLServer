create table Individuals
(IndividualID    INT      PRIMARY KEY IDENTITY,
FirstName        varchar(20) NOT NULL,
LastName         varchar(20) NOT NULL,
Address          varchar(50) NULL,
Phone            varchar(20) NOT NULL)


create table Groups
(GroupID         INT      PRIMARY KEY IDENTITY,
GroupName        varchar(20) NULL,
Dues             money Default 0 check (Dues >= 0))


create table GroupMembership
(GroupID         INT      FOREIGN KEY references Groups(GroupID),
IndividualID     INT      FOREIGN KEY references Individuals(IndividualID)
primary key(GroupID,IndividualID))