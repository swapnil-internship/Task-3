use sql_invoicing;

select 
	p.payment_id, 
    p.client_id, 
    c.name as client_name, 
    pm.name as payment_method

from payments p
join clients c on p.client_id = c.client_id
join payment_methods pm on p.payment_method = pm.payment_method_id

order by payment_id