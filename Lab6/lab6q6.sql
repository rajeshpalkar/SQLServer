drop table GroupMembership



create table GroupMembership
(GroupID         INT      FOREIGN KEY references Groups(GroupID),
IndividualID     INT      FOREIGN KEY references Individuals(IndividualID)
unique(GroupID,IndividualID))