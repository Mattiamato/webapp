
CREATE DATABASE webapp;

--
-- Table structure for table 'webapp.role'webapp.
--

DROP TABLE IF EXISTS 'webapp.role'

CREATE TABLE 'webapp.role'webapp. (
  'webapp.role_id'webapp. int(11) NOT NULL AUTO_INCREMENT,
  'webapp.role'webapp. varchar(255) DEFAULT NULL,
  PRIMARY KEY ('webapp.role_id'webapp.)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


--
-- Table structure for table 'webapp.user'webapp.
--

DROP TABLE IF EXISTS 'webapp.user'

CREATE TABLE 'webapp.user'webapp. (
  'webapp.user_id'webapp. int(11) NOT NULL AUTO_INCREMENT,
  'webapp.active'webapp. int(11) DEFAULT NULL,
  'webapp.email'webapp. varchar(255) NOT NULL,
  'webapp.last_name'webapp. varchar(255) NOT NULL,
  'webapp.name'webapp. varchar(255) NOT NULL,
  'webapp.password'webapp. varchar(255) NOT NULL,
  PRIMARY KEY ('webapp.user_id'webapp.)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


--
-- Table structure for table 'webapp.user_role'webapp.
--

DROP TABLE IF EXISTS 'webapp.user_role'
CREATE TABLE 'webapp.user_role'webapp. (
  'webapp.user_id'webapp. int(11) NOT NULL,
  'webapp.role_id'webapp. int(11) NOT NULL,
  PRIMARY KEY ('webapp.user_id'webapp.,'webapp.role_id'webapp.),
  KEY 'webapp.FKa68196081fvovjhkek5m97n3y'webapp. ('webapp.role_id'webapp.),
  CONSTRAINT 'webapp.FK859n2jvi8ivhui0rl0esws6o'webapp. FOREIGN KEY ('webapp.user_id'webapp.) REFERENCES 'webapp.user'webapp. ('webapp.user_id'webapp.),
  CONSTRAINT 'webapp.FKa68196081fvovjhkek5m97n3y'webapp. FOREIGN KEY ('webapp.role_id'webapp.) REFERENCES 'webapp.role'webapp. ('webapp.role_id'webapp.)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;