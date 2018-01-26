create clustered index idx_GroupID
on GroupMembership(GroupID)

create index idx_IndividualID
on GroupMembership(IndividualID)


--create clustered index idx_GroupID
--on GroupMembership(GroupID)

--create nonclustered index idx_IndividualID
--on GroupMembership(IndividualID)

--alter table GroupMembership
--drop column IndividualID
--drop constraint FK__GroupMemb__Indiv__32E0915F

--alter table GroupMembership
--add IndividualID INT PRIMARY KEY NONCLUSTERED

--alter table GroupMembership
--add foreign key (IndividualID)
--references Individuals(IndividualID)

--alter table GroupMembership
--add primary key (GroupID,IndividualID)