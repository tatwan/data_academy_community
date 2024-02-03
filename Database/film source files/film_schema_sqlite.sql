PRAGMA foreign_keys=OFF;

DROP TABLE IF EXISTS actor;
DROP TABLE IF EXISTS address;
DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS customer_list;
DROP TABLE IF EXISTS film;
DROP TABLE IF EXISTS film_actor;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS payment;
DROP TABLE IF EXISTS rental;
DROP TABLE IF EXISTS staff;
DROP TABLE IF EXISTS store;

CREATE TABLE actor (
  actor_id INTEGER PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE address (
  address_id INTEGER PRIMARY KEY,
  address TEXT NOT NULL,
  address2 TEXT,
  district TEXT NOT NULL,
  city_id INTEGER NOT NULL,
  postal_code TEXT,
  phone TEXT NOT NULL,
  last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  FOREIGN KEY (city_id) REFERENCES city(city_id)
);

CREATE TABLE city (
  city_id INTEGER PRIMARY KEY,
  city TEXT NOT NULL,
  country_id INTEGER NOT NULL,
  last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  FOREIGN KEY (country_id) REFERENCES country(country_id)
);

CREATE TABLE country (
    country_id INTEGER PRIMARY KEY,
    country TEXT NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE customer (
  customer_id INTEGER PRIMARY KEY,
  store_id INTEGER NOT NULL,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT,
  address_id INTEGER NOT NULL,
  activebool INTEGER DEFAULT 1 NOT NULL,
  create_date DATE DEFAULT CURRENT_DATE NOT NULL,
  last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  active INTEGER,
  FOREIGN KEY (store_id) REFERENCES store(store_id),
  FOREIGN KEY (address_id) REFERENCES address(address_id)
);

CREATE TABLE customer_list (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  address TEXT NOT NULL,
  zip_code TEXT,
  phone TEXT NOT NULL,
  city TEXT NOT NULL,
  country TEXT NOT NULL,
  notes TEXT NOT NULL,
  sid INTEGER NOT NULL
);

CREATE TABLE film (
  film_id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  description TEXT,
  release_year INTEGER,
  language_id INTEGER NOT NULL,
  original_language_id INTEGER,
  rental_duration INTEGER DEFAULT 3 NOT NULL,
  rental_rate NUMERIC(4,2) DEFAULT 4.99 NOT NULL,
  length INTEGER,
  replacement_cost NUMERIC(5,2) DEFAULT 19.99 NOT NULL,
  rating TEXT,
  last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  special_features TEXT,
  fulltext TEXT NOT NULL
);

CREATE TABLE film_actor (
  actor_id INTEGER NOT NULL,
  film_id INTEGER NOT NULL,
  last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  PRIMARY KEY (actor_id, film_id),
  FOREIGN KEY (actor_id) REFERENCES actor(actor_id),
  FOREIGN KEY (film_id) REFERENCES film(film_id)
);

CREATE TABLE inventory (
  inventory_id INTEGER PRIMARY KEY,
  film_id INTEGER NOT NULL,
  store_id INTEGER NOT NULL,
  last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  FOREIGN KEY (film_id) REFERENCES film(film_id),
  FOREIGN KEY (store_id) REFERENCES store(store_id)
);

CREATE TABLE payment (
  payment_id INTEGER PRIMARY KEY,
  customer_id INTEGER NOT NULL,
  staff_id INTEGER NOT NULL,
  rental_id INTEGER NOT NULL,
  amount NUMERIC(5,2) NOT NULL,
  payment_date TIMESTAMP NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
  FOREIGN KEY (rental_id) REFERENCES rental(rental_id)
);

CREATE TABLE rental (
  rental_id INTEGER PRIMARY KEY,
  rental_date TIMESTAMP NOT NULL,
  inventory_id INTEGER NOT NULL,
  customer_id INTEGER NOT NULL,
  return_date TIMESTAMP,
  staff_id INTEGER NOT NULL,
  last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

CREATE TABLE staff (
  staff_id INTEGER PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  address_id INTEGER NOT NULL,
  email TEXT,
  store_id INTEGER NOT NULL,
  active INTEGER DEFAULT 1 NOT NULL,
  username TEXT NOT NULL,
  password TEXT,
  last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  picture BLOB,
  FOREIGN KEY (address_id) REFERENCES address(address_id),
  FOREIGN KEY (store_id) REFERENCES store(store_id)
);

CREATE TABLE store (
    store_id INTEGER PRIMARY KEY,
    manager_staff_id INTEGER NOT NULL,
    address_id INTEGER NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    FOREIGN KEY (manager_staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id)
);

CREATE TABLE category (
    category_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

CREATE TABLE film_category (
    film_id INTEGER NOT NULL,
    category_id INTEGER NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (film_id, category_id)
);



PRAGMA foreign_keys=ON;
