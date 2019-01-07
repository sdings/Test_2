select distinct Net_Payment from RawFiles
where Net_Payment not like '%[0-9]%';

select distinct Net_Payment
from RawFiles
where try_Cast (replace(net_Payment,',','') as float) is null
and Net_Payment is not null;

select distinct Quantity from Rawfiles
where Quantity not like '%[0-9]%';

select distinct Quantity
from RawFiles
where try_Cast (replace(Quantity,',','') as float) is null
and Quantity is not null;

select * from RawFiles
where Net_Payment like '%E%'
or Quantity like '%E%';