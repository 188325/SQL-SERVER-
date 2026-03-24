# SQL-SERVER-
MALTI_GAURI DATABASE 

use malti_gauri database to get new solutions by using MS SQL-SERVER 


CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name  VARCHAR(50) NOT NULL,
  email      VARCHAR(100) NOT NULL UNIQUE,
  phone      VARCHAR(15) NOT NULL,
  city       VARCHAR(60) NOT NULL,
  state      VARCHAR(60) NOT NULL,
  pincode    INT NOT NULL,
  created_at DATETIME NOT NULL,
  INDEX idx_customers_city (city),
  INDEX idx_customers_state (state)
)
