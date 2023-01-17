

USE Equipos

create table teams (
      team_id integer not null,
      team_name varchar(30) not null,
      unique(team_id)
  );

  create table matches (
      match_id integer not null,
      host_team integer not null,
      guest_team integer not null,
      host_goals integer not null,
      guest_goals integer not null,
      unique(match_id)
  );

  insert into teams values(10,'GIVE');
  insert into teams values(20,'NEVER');
  insert into teams values(30,'YOU');
  insert into teams values(40,'UP');
  insert into teams values(50,'GONA');


  insert into matches values(1,30,20,1,0);
  insert into matches values(2,10,20,1,2);
  insert into matches values(3,20,50,2,2);
  insert into matches values(4,10,30,1,0);
  insert into matches values(5,30,50,0,1);


 DECLARE @COUNTER INT
 DECLARE @VISTANTE INT
 DECLARE @LOCAL INT
 SET @COUNTER = 1
 WHILE (@COUNTER<=5)
 BEGIN
 SELECT T.team_id, T.team_name
 FROM teams T, matches M
 WHERE T.team_id > M.guest_team
 IF (M.host_goals > M.guest_goals)
 SET @LOCAL += 3
 ELSE
 SET @VISTANTE += 3
 END
 GO





