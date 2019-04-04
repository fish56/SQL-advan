show tables ;

select sql_no_cache count(*)
from ip_address_varchar20;

drop index idx_ip_address_3chars on ip_address_varchar20;
drop index idx_ip_address_7chars on ip_address_varchar20;
drop index idx_ip_address_all_chars on ip_address_varchar20;

create index idx_ip_address_3chars
on ip_address_varchar20 (ip_address(3));

create index idx_ip_address_7chars
on ip_address_varchar20 (ip_address(7));

create index idx_ip_address_all_chars
on ip_address_varchar20 (ip_address);

show index from ip_address_varchar20;

select sql_no_cache *
from ip_address_varchar20
use index (idx_ip_address_all_chars)
-- ignore index (idx_ip_address_all_chars)
order by ip_address
limit 2
;

select sql_no_cache *
from ip_address_varchar20
use index (idx_ip_address_7chars)
order by ip_address
limit 2
;


select sql_no_cache *
from ip_address_varchar20
use index (idx_ip_address_3chars)
order by ip_address
limit 2
;




SELECT sql_no_cache
      count(id)
FROM
      ip_address_varchar20