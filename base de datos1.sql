ALTER TABLE city
 DROP FOREIGN KEY `city_ibfk_1`,
 ADD CONSTRAINT `city_ibfk_2` FOREIGN KEY (`CountryCode`)
 REFERENCES `country` (`Code`)
 ON DELETE CASCADE
 ON UPDATE CASCADE;
ALTER TABLE countrylanguage
 DROP FOREIGN KEY `countryLanguage_ibfk_1`,
 ADD CONSTRAINT `countryLanguage_ibfk_2` FOREIGN KEY (`CountryCode`)
 REFERENCES `country` (`Code`)
 ON DELETE CASCADE
 ON UPDATE CASCADE;
 update country set code='BEG' where code='BEL';
 select * from country where name='Belgium';
 select * from city where countrycode ='BEG';
 select *from countrylanguage where CountryCode='BEG';
 select * from city where CountryCode='BEG';
 delete from country where code='MNG';
 select * from country where code='MNG';
 select * from city where CountryCode='MNG';
 select * from countrylanguage where countrycode='MNG';
DESCRIBE city;
DESCRIBE country;
DESCRIBE countrylanguage;
select * from country where Population between 10000 and 4000000;
SHOW CHARACTER SET
create database