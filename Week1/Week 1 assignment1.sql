use prod_health_company1;

SHOW COLUMNS 
from policies;

-- Required output for assignment 1
select  ui.cssn,'4811A' as ran1, '10-ENT' as ran2, ui.userid, ui.cfname, ui.cmname, ui.clname, ui.phone1 , ui.cemail,
case 
	when ui.cgender = 0 then 'M'
    when ui.cgender = 1 then 'F'
end as cgender,
date_format(ui.cdob, '%m/%d/%Y') as cdob,
ca.address1, ca.address2, ca.city, ca.state, ca.zip, 'EM' as ran3,
date_format(pp.peffective_date, '%m/%d/%Y') as peffective_date,
p.edate,
p.policy_id,
pl.plan_name_system,
case 
	when pt.tier = 'IO' then 'EM'
    when pt.tier = 'IS' then 'ES'
    when pt.tier = 'IC' then 'EC'
    when pt.tier = 'IF' then 'FA'
end as tier
from 
	userinfo as ui
join
	cust_addresses as ca on ui.home_address = ca.address_id 
join
	policies as p on ui.userid = p.policy_userid
join 
	plan_policies as pp on p.policy_id = pp.policy_num
join 
	plans as pl on pp.plan_id = pl.pid
join 
	plan_tier as pt on pl.pid = pt.pid_tier;
    