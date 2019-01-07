select distinct Net_Payment from RawFiles
where Net_Payment not like '%[0-9]%';

--returns non-numeric Net Payment amounts

select distinct Net_Payment
from RawFiles
where try_Cast (replace(net_Payment,',','') as float) is null
and Net_Payment is not null;

--returns Net Payment values that cause an error when converting to float

select distinct Quantity from Rawfiles
where Quantity not like '%[0-9]%';

--returns non-numeric Quantity amounts

select distinct Quantity
from RawFiles
where try_Cast (replace(Quantity,',','') as float) is null
and Quantity is not null;

--returns Quantity values that cause an error when converting to float
