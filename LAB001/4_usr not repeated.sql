select usr, count(usr) from usr group by usr having count(usr) > 1;

create table usr_repeated as
(select u.usr from usr u group by u.usr having count(u.usr) > 1);

update usr u set u.usr = concat(u.usr, u.id) where u.usr in (
	select usr from
	(SELECT @rownum:=@rownum+1 rownum, t.* FROM (SELECT @rownum:=0) r, usr_repeated t order by t.usr) as t2
	where rownum > 20000
);

update usr u set u.usr = concat(u.usr, u.id) where u.usr in (
	select usr from
	(SELECT @rownum:=@rownum+1 rownum, t.* FROM (SELECT @rownum:=0) r, usr_repeated t order by t.usr) as t2
	where rownum <= 20000
);

drop table usr_repeated;

ALTER TABLE `un_usr_sk`.`usr` 
ADD UNIQUE INDEX `usr_UNIQUE` (`usr` ASC) VISIBLE;
;
