insert into usr ( usr, name, surname)
select 
concat (lower (concat (u1.name, u2.surname))) as usr, u1.name, u2.surname

from usr u1, usr u2
where u1.id != u2.id