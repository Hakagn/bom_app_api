DROP DATABASE bom_app;
CREATE DATABASE bom_app;
USE bom_app;

CREATE TABLE part (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  partNumber VARCHAR(255) NOT NULL, 
  partName VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE supplier (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  supplierNumber INT NOT NULL,
  supplierName VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE part_supplier (
  part_id INT NOT NULL,
  supplier_id INT NOT NULL,
  FOREIGN KEY(part_id) REFERENCES part(id),
  FOREIGN KEY(supplier_id) REFERENCES supplier(id),
  PRIMARY KEY(part_id, supplier_id),
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE bom (
  part_id INT,
  parentPart_id INT,
  quantity INT NOT NULL,
  FOREIGN KEY(part_id) REFERENCES part(id),
  FOREIGN KEY(parentPart_id) REFERENCES part(id),
  UNIQUE(part_id, parentPart_id),
  created_at TIMESTAMP DEFAULT NOW()
);

/* CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  firstName VARCHAR(255) NOT NULL,
  lastName VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT NOW() 
); */

/* CREATE TABLE pos (
  pos_no INT NOT NULL,
  mainItem_id INT NOT NULL,
  subItem_id INT NOT NULL,
  FOREIGN KEY(mainItem_id) REFERENCES mainItems(id) ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY(subItem_id) REFERENCES subItems(id) ON DELETE RESTRICT ON UPDATE CASCADE
); */

 /* CREATE TABLE orders (
id INT AUTO_INCREMENT PRIMARY KEY,
order_date DATE,
amount DECIMAL(8,2),
customer_id INT,
FOREIGN KEY(customer_id) REFERENCES customers(id)
); */
