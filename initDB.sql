
CREATE DATABASE webapp;

--
-- Table structure for table 'webapp.role'
--

DROP TABLE IF EXISTS 'webapp.role'

CREATE TABLE 'webapp.role' (
  'webapp.role_id' int(11) NOT NULL AUTO_INCREMENT,
  'webapp.role' varchar(255) DEFAULT NULL,
  PRIMARY KEY ('webapp.role_id')
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


--
-- Table structure for table 'webapp.user'
--

DROP TABLE IF EXISTS 'webapp.user'

CREATE TABLE 'webapp.user' (
  'webapp.user_id' int(11) NOT NULL AUTO_INCREMENT,
  'webapp.active' int(11) DEFAULT NULL,
  'webapp.email' varchar(255) NOT NULL,
  'webapp.last_name' varchar(255) NOT NULL,
  'webapp.name' varchar(255) NOT NULL,
  'webapp.password' varchar(255) NOT NULL,
  PRIMARY KEY ('webapp.user_id')
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


--
-- Table structure for table 'webapp.user_role'
--

DROP TABLE IF EXISTS 'webapp.user_role'
CREATE TABLE 'webapp.user_role' (
  'webapp.user_id' int(11) NOT NULL,
  'webapp.role_id' int(11) NOT NULL,
  PRIMARY KEY ('webapp.user_id','webapp.role_id'),
  KEY 'webapp.FKa68196081fvovjhkek5m97n3y' ('webapp.role_id'),
  CONSTRAINT 'webapp.FK859n2jvi8ivhui0rl0esws6o' FOREIGN KEY ('webapp.user_id') REFERENCES 'webapp.user' ('webapp.user_id'),
  CONSTRAINT 'webapp.FKa68196081fvovjhkek5m97n3y' FOREIGN KEY ('webapp.role_id') REFERENCES 'webapp.role' ('webapp.role_id')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;