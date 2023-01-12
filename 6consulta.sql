/* Consulta nombre y telefono de la tabla usuarios */
use test;
select * from usuarios;

use test;
select cedula,nombre from usuarios;


use test;
select nombre,nombre as nombre1,telefono from usuarios where cedula=040042145;

/* el % al final es para que me busque todo el contenido que tenga al inicio */
use test;
select nombre,telefono,cedula from usuarios where cedula like '17%';

/* el % al inicio es para todo el contenido que termina */
use test;
select nombre,telefono,cedula from usuarios where cedula like '%5';
/* el % al inicio y al final es para buscar en los registros lo que contenga */
use test;
select nombre,telefono,cedula from usuarios where cedula like '%4%';

use test;
select cedula,nombre from usuarios where nombre like 'e%'

use test;
select cedula,nombre from usuarios where nombre like '%s'

use test;
select cedula,nombre from usuarios where nombre like '%n%'

use test;
select cedula,nombre from usuarios where nombre like 'edison'

use test;
select cedula,nombre from usuarios where cedula like 1714355482

use test;
select cedula,nombre from usuarios where cedula like '0000000000'

use test;
select cedula,nombre from usuarios where nombre like 'e%' and cedula like '1714355483'