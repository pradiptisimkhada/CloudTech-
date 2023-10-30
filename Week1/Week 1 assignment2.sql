use prod_health_company1;

show tables;

select *
from policies;

select * 
from userinfo;

select u.userid, u.cfname,u.clname,u.cemail, count(p.policy_id) as no_of_policies
from userinfo as u
join policies as p
on u.userid = policy_userid
group by userid
having no_of_policies >1
order by no_of_policies desc;