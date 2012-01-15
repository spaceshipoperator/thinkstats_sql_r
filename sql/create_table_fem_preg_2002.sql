create table fem_preg_2002 (
id int,
caseid int,
nbrnaliv int,
babysex int,
birthwgt_lb int,
birthwgt_oz int,
prglength int,
outcome int,
birthord int,
agepreg int,
finalwgt float);

copy fem_preg_2002 
from '/tmp/2002FemPreg.csv'
with delimiter ','
null as '';
