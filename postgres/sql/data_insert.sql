COPY make(make_id, make_name) FROM '/csv/make.csv' DELIMITER ',' CSV;
COPY model(model_id, make_id, model_name) FROM '/csv/model.csv' DELIMITER ',' CSV;
COPY car(car_id, model_id, vin, model_year, sticker_price) FROM '/csv/car.csv' DELIMITER ',' CSV;
COPY customer(customer_id, first_name, last_name, gender, ssn) FROM '/csv/customer.csv' DELIMITER ',' CSV;
COPY foreign_make(foreign_make_id, make_name) FROM '/csv/foreign_make.csv' DELIMITER ',' CSV;
COPY location(location_id, location_name, street_address, state, zipcode) FROM '/csv/location.csv' DELIMITER ',' CSV;
COPY sales_rep(sales_rep_id, first_name, last_name, ssn, phone_number, street_address, city, state, zipcode) FROM '/csv/sales_rep.csv' DELIMITER ',' CSV;
COPY sale(sale_id, car_id, customer_id, location_id, sales_rep_id, sales_amount, sales_date) FROM '/csv/sale.csv' DELIMITER ',' CSV;