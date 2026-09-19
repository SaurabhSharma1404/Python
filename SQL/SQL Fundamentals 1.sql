CREATE TABLE superstore_sales (
    order_id INT,
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id INT,
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(50),
    postal_code INT,
    region VARCHAR(50),
    product_id INT,
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(100),
    sales FLOAT,
    quantity INT,
    discount FLOAT,
    profit FLOAT
);


INSERT INTO superstore_sales VALUES ('1684', '2023-01-01', '2023-01-02', 'First Class', '238', 'Chris Martin', 'Home Office', 'United States', 'New York', 'NY', '18197', 'West', '1167', 'Furniture', 'Chairs', 'Product B', '628.01', '5', '0.17', '289.0');
INSERT INTO superstore_sales VALUES ('1559', '2023-01-02', '2023-01-03', 'Same Day', '295', 'Chris Martin', 'Home Office', 'United States', 'San Francisco', 'FL', '25860', 'West', '1425', 'Office Supplies', 'Accessories', 'Product A', '171.06', '3', '0.01', '52.0');
INSERT INTO superstore_sales VALUES ('1629', '2023-01-03', '2023-01-04', 'Standard Class', '490', 'Chris Martin', 'Corporate', 'United States', 'Chicago', 'TX', '83000', 'Central', '1788', 'Furniture', 'Chairs', 'Product D', '585.61', '4', '0.24', '215.85');
INSERT INTO superstore_sales VALUES ('1192', '2023-01-04', '2023-01-05', 'First Class', '319', 'John Smith', 'Corporate', 'United States', 'Chicago', 'IL', '42726', 'East', '1289', 'Office Supplies', 'Phones', 'Product A', '434.67', '9', '0.02', '34.68');
INSERT INTO superstore_sales VALUES ('1835', '2023-01-05', '2023-01-06', 'Standard Class', '455', 'John Smith', 'Consumer', 'United States', 'Los Angeles', 'NY', '51396', 'West', '1625', 'Technology', 'Chairs', 'Product A', '72.77', '8', '0.1', '259.11');
INSERT INTO superstore_sales VALUES ('1763', '2023-01-06', '2023-01-07', 'Same Day', '262', 'Anna Brown', 'Consumer', 'United States', 'Houston', 'IL', '40635', 'East', '1120', 'Technology', 'Phones', 'Product B', '894.18', '2', '0.16', '-71.15');
INSERT INTO superstore_sales VALUES ('1707', '2023-01-07', '2023-01-08', 'First Class', '150', 'Alice Johnson', 'Consumer', 'United States', 'New York', 'IL', '26156', 'East', '1252', 'Furniture', 'Accessories', 'Product D', '837.07', '9', '0.09', '12.55');
INSERT INTO superstore_sales VALUES ('1359', '2023-01-08', '2023-01-09', 'Second Class', '342', 'Alice Johnson', 'Home Office', 'United States', 'Houston', 'FL', '75925', 'South', '1522', 'Office Supplies', 'Tables', 'Product B', '213.95', '7', '0.23', '110.48');
INSERT INTO superstore_sales VALUES ('1009', '2023-01-09', '2023-01-10', 'First Class', '458', 'Jane Doe', 'Home Office', 'United States', 'Los Angeles', 'FL', '41588', 'East', '1588', 'Technology', 'Tables', 'Product A', '836.11', '9', '0.29', '145.19');
INSERT INTO superstore_sales VALUES ('1723', '2023-01-10', '2023-01-11', 'Second Class', '120', 'Anna Brown', 'Home Office', 'United States', 'Los Angeles', 'IL', '38719', 'West', '1559', 'Office Supplies', 'Accessories', 'Product A', '790.36', '1', '0.14', '157.38');
INSERT INTO superstore_sales VALUES ('1277', '2023-01-11', '2023-01-12', 'Standard Class', '271', 'John Smith', 'Consumer', 'United States', 'New York', 'IL', '12492', 'South', '1386', 'Office Supplies', 'Binders', 'Product A', '744.06', '4', '0.29', '56.76');
INSERT INTO superstore_sales VALUES ('1754', '2023-01-12', '2023-01-13', 'Second Class', '218', 'John Smith', 'Consumer', 'United States', 'Chicago', 'TX', '16463', 'South', '1736', 'Technology', 'Phones', 'Product C', '246.98', '2', '0.28', '151.07');
INSERT INTO superstore_sales VALUES ('1804', '2023-01-13', '2023-01-14', 'Second Class', '228', 'Chris Martin', 'Consumer', 'United States', 'San Francisco', 'TX', '82315', 'West', '1984', 'Technology', 'Bookcases', 'Product C', '47.08', '2', '0.25', '246.49');
INSERT INTO superstore_sales VALUES ('1599', '2023-01-14', '2023-01-15', 'First Class', '465', 'Anna Brown', 'Home Office', 'United States', 'Chicago', 'CA', '18489', 'East', '1309', 'Technology', 'Storage', 'Product A', '819.89', '2', '0.22', '235.23');
INSERT INTO superstore_sales VALUES ('1070', '2023-01-15', '2023-01-16', 'First Class', '205', 'Anna Brown', 'Corporate', 'United States', 'Houston', 'FL', '64813', 'East', '1325', 'Furniture', 'Binders', 'Product A', '789.17', '3', '0.01', '0.92');
INSERT INTO superstore_sales VALUES ('1472', '2023-01-16', '2023-01-17', 'Same Day', '294', 'John Smith', 'Consumer', 'United States', 'New York', 'TX', '23408', 'East', '1403', 'Furniture', 'Phones', 'Product D', '202.61', '3', '0.27', '-83.36');
INSERT INTO superstore_sales VALUES ('1600', '2023-01-17', '2023-01-18', 'Standard Class', '325', 'Anna Brown', 'Corporate', 'United States', 'Los Angeles', 'IL', '94668', 'South', '1384', 'Furniture', 'Storage', 'Product C', '271.36', '5', '0.17', '-4.14');
INSERT INTO superstore_sales VALUES ('1396', '2023-01-18', '2023-01-19', 'Second Class', '240', 'Chris Martin', 'Home Office', 'United States', 'Chicago', 'TX', '31300', 'West', '1401', 'Furniture', 'Chairs', 'Product A', '251.49', '3', '0.04', '227.8');
INSERT INTO superstore_sales VALUES ('1314', '2023-01-19', '2023-01-20', 'Standard Class', '371', 'Chris Martin', 'Consumer', 'United States', 'New York', 'CA', '42292', 'South', '1471', 'Technology', 'Art', 'Product B', '528.38', '8', '0.21', '163.57');
INSERT INTO superstore_sales VALUES ('1705', '2023-01-20', '2023-01-21', 'Same Day', '218', 'John Smith', 'Home Office', 'United States', 'San Francisco', 'TX', '92579', 'South', '1622', 'Technology', 'Binders', 'Product B', '730.36', '5', '0.08', '-50.2');
INSERT INTO superstore_sales VALUES ('1486', '2023-01-21', '2023-01-22', 'Standard Class', '133', 'John Smith', 'Corporate', 'United States', 'Los Angeles', 'IL', '83568', 'East', '1980', 'Technology', 'Accessories', 'Product C', '285.96', '1', '0.21', '-34.29');
INSERT INTO superstore_sales VALUES ('1551', '2023-01-22', '2023-01-23', 'Standard Class', '251', 'Anna Brown', 'Home Office', 'United States', 'Chicago', 'TX', '35845', 'Central', '1058', 'Office Supplies', 'Art', 'Product A', '189.5', '8', '0.02', '6.06');
INSERT INTO superstore_sales VALUES ('1087', '2023-01-23', '2023-01-24', 'First Class', '496', 'Anna Brown', 'Home Office', 'United States', 'Los Angeles', 'TX', '35179', 'East', '1996', 'Technology', 'Art', 'Product B', '720.93', '8', '0.29', '241.72');
INSERT INTO superstore_sales VALUES ('1174', '2023-01-24', '2023-01-25', 'Standard Class', '489', 'Alice Johnson', 'Consumer', 'United States', 'Houston', 'FL', '29610', 'Central', '1676', 'Technology', 'Storage', 'Product A', '938.31', '5', '0.02', '59.19');
INSERT INTO superstore_sales VALUES ('1600', '2023-01-25', '2023-01-26', 'Same Day', '138', 'Anna Brown', 'Corporate', 'United States', 'San Francisco', 'FL', '83272', 'West', '1396', 'Technology', 'Storage', 'Product D', '370.64', '2', '0.26', '35.86');
INSERT INTO superstore_sales VALUES ('1849', '2023-01-26', '2023-01-27', 'Second Class', '357', 'Anna Brown', 'Consumer', 'United States', 'San Francisco', 'CA', '66632', 'South', '1684', 'Technology', 'Tables', 'Product D', '488.46', '7', '0.09', '-9.74');
INSERT INTO superstore_sales VALUES ('1677', '2023-01-27', '2023-01-28', 'Standard Class', '366', 'Jane Doe', 'Home Office', 'United States', 'San Francisco', 'CA', '79404', 'East', '1740', 'Technology', 'Chairs', 'Product C', '914.75', '9', '0.09', '169.57');
INSERT INTO superstore_sales VALUES ('1537', '2023-01-28', '2023-01-29', 'Same Day', '106', 'John Smith', 'Home Office', 'United States', 'Houston', 'TX', '26301', 'West', '1847', 'Furniture', 'Bookcases', 'Product A', '774.84', '1', '0.12', '287.22');
INSERT INTO superstore_sales VALUES ('1845', '2023-01-29', '2023-01-30', 'First Class', '481', 'Anna Brown', 'Corporate', 'United States', 'Chicago', 'FL', '78567', 'Central', '1421', 'Furniture', 'Storage', 'Product D', '183.21', '5', '0.23', '-68.26');
INSERT INTO superstore_sales VALUES ('1072', '2023-01-30', '2023-01-31', 'Second Class', '362', 'Jane Doe', 'Home Office', 'United States', 'Chicago', 'FL', '74773', 'South', '1118', 'Technology', 'Bookcases', 'Product A', '213.1', '6', '0.06', '101.09');
INSERT INTO superstore_sales VALUES ('1777', '2023-01-31', '2023-02-01', 'Same Day', '202', 'Anna Brown', 'Consumer', 'United States', 'Chicago', 'TX', '16741', 'South', '1408', 'Office Supplies', 'Bookcases', 'Product A', '63.06', '9', '0.13', '261.02');
INSERT INTO superstore_sales VALUES ('1916', '2023-02-01', '2023-02-02', 'Standard Class', '431', 'John Smith', 'Corporate', 'United States', 'Chicago', 'FL', '29746', 'West', '1685', 'Office Supplies', 'Bookcases', 'Product B', '277.55', '7', '0.15', '7.03');
INSERT INTO superstore_sales VALUES ('1115', '2023-02-02', '2023-02-03', 'Second Class', '470', 'Alice Johnson', 'Home Office', 'United States', 'Chicago', 'NY', '55953', 'West', '1180', 'Office Supplies', 'Bookcases', 'Product B', '478.59', '1', '0.27', '35.61');
INSERT INTO superstore_sales VALUES ('1976', '2023-02-03', '2023-02-04', 'First Class', '441', 'Chris Martin', 'Consumer', 'United States', 'New York', 'IL', '84333', 'West', '1852', 'Office Supplies', 'Art', 'Product C', '311.16', '1', '0.17', '97.38');
INSERT INTO superstore_sales VALUES ('1755', '2023-02-04', '2023-02-05', 'Standard Class', '482', 'John Smith', 'Consumer', 'United States', 'Houston', 'NY', '65021', 'East', '1890', 'Technology', 'Art', 'Product A', '476.64', '8', '0.19', '-43.95');
INSERT INTO superstore_sales VALUES ('1709', '2023-02-05', '2023-02-06', 'Standard Class', '470', 'John Smith', 'Corporate', 'United States', 'San Francisco', 'NY', '61170', 'South', '1700', 'Office Supplies', 'Art', 'Product D', '619.88', '2', '0.27', '221.51');
INSERT INTO superstore_sales VALUES ('1847', '2023-02-06', '2023-02-07', 'Standard Class', '278', 'Jane Doe', 'Home Office', 'United States', 'Chicago', 'NY', '57374', 'West', '1391', 'Furniture', 'Chairs', 'Product D', '931.56', '1', '0.1', '0.72');
INSERT INTO superstore_sales VALUES ('1431', '2023-02-07', '2023-02-08', 'First Class', '407', 'Jane Doe', 'Consumer', 'United States', 'Chicago', 'FL', '38906', 'Central', '1878', 'Office Supplies', 'Binders', 'Product A', '924.26', '6', '0.02', '-76.47');
INSERT INTO superstore_sales VALUES ('1448', '2023-02-08', '2023-02-09', 'Second Class', '358', 'Jane Doe', 'Corporate', 'United States', 'San Francisco', 'TX', '36142', 'East', '1023', 'Office Supplies', 'Storage', 'Product C', '626.05', '9', '0.24', '165.9');
INSERT INTO superstore_sales VALUES ('1850', '2023-02-09', '2023-02-10', 'Same Day', '432', 'Alice Johnson', 'Consumer', 'United States', 'San Francisco', 'CA', '79403', 'Central', '1788', 'Office Supplies', 'Tables', 'Product D', '372.43', '2', '0.23', '118.12');
INSERT INTO superstore_sales VALUES ('1099', '2023-02-10', '2023-02-11', 'Standard Class', '257', 'Jane Doe', 'Home Office', 'United States', 'New York', 'IL', '75927', 'South', '1069', 'Office Supplies', 'Accessories', 'Product B', '265.29', '5', '0.1', '271.86');
INSERT INTO superstore_sales VALUES ('1984', '2023-02-11', '2023-02-12', 'Standard Class', '109', 'John Smith', 'Consumer', 'United States', 'Houston', 'IL', '83053', 'South', '1263', 'Furniture', 'Accessories', 'Product B', '610.87', '2', '0.28', '213.06');
INSERT INTO superstore_sales VALUES ('1177', '2023-02-12', '2023-02-13', 'Standard Class', '215', 'Jane Doe', 'Home Office', 'United States', 'Los Angeles', 'NY', '62900', 'Central', '1804', 'Office Supplies', 'Phones', 'Product B', '650.76', '9', '0.25', '-85.59');
INSERT INTO superstore_sales VALUES ('1755', '2023-02-13', '2023-02-14', 'Standard Class', '489', 'Anna Brown', 'Consumer', 'United States', 'New York', 'CA', '63414', 'East', '1111', 'Furniture', 'Phones', 'Product A', '275.3', '1', '0.0', '111.92');
INSERT INTO superstore_sales VALUES ('1797', '2023-02-14', '2023-02-15', 'Second Class', '216', 'Anna Brown', 'Home Office', 'United States', 'Los Angeles', 'TX', '83820', 'West', '1649', 'Office Supplies', 'Art', 'Product B', '68.02', '3', '0.03', '247.13');
INSERT INTO superstore_sales VALUES ('1659', '2023-02-15', '2023-02-16', 'Same Day', '281', 'Chris Martin', 'Consumer', 'United States', 'New York', 'CA', '23909', 'West', '1197', 'Furniture', 'Chairs', 'Product C', '359.99', '9', '0.14', '-92.67');
INSERT INTO superstore_sales VALUES ('1147', '2023-02-16', '2023-02-17', 'First Class', '335', 'Anna Brown', 'Consumer', 'United States', 'Houston', 'CA', '81895', 'West', '1281', 'Technology', 'Accessories', 'Product B', '955.0', '5', '0.27', '49.39');
INSERT INTO superstore_sales VALUES ('1910', '2023-02-17', '2023-02-18', 'First Class', '293', 'Chris Martin', 'Corporate', 'United States', 'Houston', 'IL', '36021', 'West', '1545', 'Furniture', 'Chairs', 'Product A', '232.3', '1', '0.05', '233.24');
INSERT INTO superstore_sales VALUES ('1423', '2023-02-18', '2023-02-19', 'Second Class', '399', 'Anna Brown', 'Home Office', 'United States', 'Los Angeles', 'FL', '46756', 'West', '1468', 'Furniture', 'Storage', 'Product A', '317.11', '8', '0.2', '-0.27');
INSERT INTO superstore_sales VALUES ('1288', '2023-02-19', '2023-02-20', 'Standard Class', '179', 'Alice Johnson', 'Consumer', 'United States', 'Chicago', 'NY', '43549', 'Central', '1576', 'Office Supplies', 'Tables', 'Product A', '299.92', '8', '0.26', '-95.13');
INSERT INTO superstore_sales VALUES ('1961', '2023-02-20', '2023-02-21', 'Second Class', '162', 'Chris Martin', 'Corporate', 'United States', 'Chicago', 'FL', '30589', 'Central', '1161', 'Furniture', 'Bookcases', 'Product A', '704.35', '4', '0.28', '36.23');
INSERT INTO superstore_sales VALUES ('1265', '2023-02-21', '2023-02-22', 'Second Class', '432', 'Anna Brown', 'Consumer', 'United States', 'Chicago', 'IL', '42178', 'East', '1083', 'Furniture', 'Chairs', 'Product B', '737.66', '7', '0.2', '-86.16');
INSERT INTO superstore_sales VALUES ('1697', '2023-02-22', '2023-02-23', 'Second Class', '147', 'Chris Martin', 'Corporate', 'United States', 'Los Angeles', 'CA', '13561', 'South', '1457', 'Furniture', 'Phones', 'Product D', '449.88', '2', '0.11', '266.28');
INSERT INTO superstore_sales VALUES ('1639', '2023-02-23', '2023-02-24', 'Same Day', '176', 'Chris Martin', 'Consumer', 'United States', 'Chicago', 'NY', '21390', 'West', '1258', 'Office Supplies', 'Accessories', 'Product B', '913.69', '9', '0.11', '241.11');
INSERT INTO superstore_sales VALUES ('1544', '2023-02-24', '2023-02-25', 'Same Day', '249', 'Anna Brown', 'Corporate', 'United States', 'San Francisco', 'TX', '40145', 'South', '1528', 'Technology', 'Binders', 'Product C', '727.99', '5', '0.23', '68.77');
INSERT INTO superstore_sales VALUES ('1543', '2023-02-25', '2023-02-26', 'Second Class', '220', 'John Smith', 'Home Office', 'United States', 'San Francisco', 'TX', '90712', 'West', '1126', 'Technology', 'Binders', 'Product A', '889.1', '6', '0.26', '63.13');
INSERT INTO superstore_sales VALUES ('1714', '2023-02-26', '2023-02-27', 'Second Class', '374', 'Jane Doe', 'Consumer', 'United States', 'Houston', 'CA', '20343', 'West', '1087', 'Office Supplies', 'Binders', 'Product B', '853.58', '4', '0.29', '291.77');
INSERT INTO superstore_sales VALUES ('1244', '2023-02-27', '2023-02-28', 'Same Day', '445', 'Chris Martin', 'Home Office', 'United States', 'Los Angeles', 'FL', '72316', 'Central', '1829', 'Technology', 'Phones', 'Product B', '774.87', '2', '0.23', '95.7');
INSERT INTO superstore_sales VALUES ('1151', '2023-02-28', '2023-03-01', 'Second Class', '113', 'Chris Martin', 'Home Office', 'United States', 'Chicago', 'FL', '84825', 'East', '1826', 'Office Supplies', 'Chairs', 'Product A', '327.72', '9', '0.17', '74.68');
INSERT INTO superstore_sales VALUES ('1675', '2023-03-01', '2023-03-02', 'Same Day', '322', 'Chris Martin', 'Corporate', 'United States', 'San Francisco', 'NY', '94529', 'West', '1626', 'Office Supplies', 'Chairs', 'Product B', '145.48', '6', '0.27', '60.19');
INSERT INTO superstore_sales VALUES ('1510', '2023-03-02', '2023-03-03', 'Same Day', '192', 'Jane Doe', 'Home Office', 'United States', 'Chicago', 'IL', '47137', 'South', '1025', 'Furniture', 'Storage', 'Product B', '676.56', '8', '0.28', '27.08');
INSERT INTO superstore_sales VALUES ('1459', '2023-03-03', '2023-03-04', 'First Class', '336', 'Chris Martin', 'Corporate', 'United States', 'New York', 'FL', '34881', 'East', '1122', 'Office Supplies', 'Chairs', 'Product A', '703.23', '5', '0.14', '37.29');
INSERT INTO superstore_sales VALUES ('1882', '2023-03-04', '2023-03-05', 'First Class', '205', 'Chris Martin', 'Corporate', 'United States', 'Chicago', 'TX', '19305', 'Central', '1938', 'Technology', 'Chairs', 'Product C', '755.41', '4', '0.28', '77.75');
INSERT INTO superstore_sales VALUES ('1183', '2023-03-05', '2023-03-06', 'Same Day', '313', 'Anna Brown', 'Corporate', 'United States', 'Houston', 'TX', '24807', 'West', '1720', 'Office Supplies', 'Binders', 'Product D', '812.53', '8', '0.18', '269.41');
INSERT INTO superstore_sales VALUES ('1028', '2023-03-06', '2023-03-07', 'Second Class', '106', 'John Smith', 'Corporate', 'United States', 'New York', 'TX', '88073', 'Central', '1913', 'Furniture', 'Phones', 'Product C', '405.53', '5', '0.12', '251.14');
INSERT INTO superstore_sales VALUES ('1802', '2023-03-07', '2023-03-08', 'Second Class', '200', 'Alice Johnson', 'Corporate', 'United States', 'Los Angeles', 'FL', '38787', 'West', '1040', 'Furniture', 'Storage', 'Product C', '379.47', '5', '0.26', '205.11');
INSERT INTO superstore_sales VALUES ('1128', '2023-03-08', '2023-03-09', 'Second Class', '148', 'Alice Johnson', 'Consumer', 'United States', 'Chicago', 'CA', '47578', 'South', '1316', 'Technology', 'Tables', 'Product C', '322.64', '1', '0.13', '213.51');
INSERT INTO superstore_sales VALUES ('1128', '2023-03-09', '2023-03-10', 'First Class', '140', 'Jane Doe', 'Consumer', 'United States', 'Chicago', 'FL', '94826', 'East', '1337', 'Technology', 'Tables', 'Product D', '438.75', '8', '0.11', '69.57');
INSERT INTO superstore_sales VALUES ('1932', '2023-03-10', '2023-03-11', 'Standard Class', '258', 'Alice Johnson', 'Home Office', 'United States', 'New York', 'FL', '33821', 'South', '1506', 'Technology', 'Chairs', 'Product C', '873.17', '6', '0.25', '133.13');
INSERT INTO superstore_sales VALUES ('1053', '2023-03-11', '2023-03-12', 'Same Day', '489', 'John Smith', 'Consumer', 'United States', 'Houston', 'NY', '14961', 'West', '1253', 'Furniture', 'Binders', 'Product B', '11.9', '4', '0.29', '258.77');
INSERT INTO superstore_sales VALUES ('1901', '2023-03-12', '2023-03-13', 'Standard Class', '243', 'Alice Johnson', 'Corporate', 'United States', 'Houston', 'IL', '49169', 'West', '1497', 'Office Supplies', 'Storage', 'Product D', '554.57', '2', '0.2', '32.35');
INSERT INTO superstore_sales VALUES ('1550', '2023-03-13', '2023-03-14', 'Standard Class', '137', 'John Smith', 'Corporate', 'United States', 'Houston', 'FL', '64752', 'Central', '1741', 'Office Supplies', 'Tables', 'Product B', '231.46', '3', '0.1', '58.97');
INSERT INTO superstore_sales VALUES ('1488', '2023-03-14', '2023-03-15', 'Second Class', '159', 'John Smith', 'Consumer', 'United States', 'Los Angeles', 'FL', '37319', 'East', '1425', 'Furniture', 'Accessories', 'Product B', '577.92', '8', '0.25', '6.03');
INSERT INTO superstore_sales VALUES ('1756', '2023-03-15', '2023-03-16', 'Standard Class', '213', 'Anna Brown', 'Home Office', 'United States', 'New York', 'IL', '46130', 'South', '1422', 'Office Supplies', 'Binders', 'Product C', '95.36', '1', '0.27', '-82.02');
INSERT INTO superstore_sales VALUES ('1273', '2023-03-16', '2023-03-17', 'Second Class', '195', 'Alice Johnson', 'Home Office', 'United States', 'San Francisco', 'TX', '23278', 'East', '1204', 'Office Supplies', 'Chairs', 'Product B', '93.86', '5', '0.04', '-93.51');
INSERT INTO superstore_sales VALUES ('1335', '2023-03-17', '2023-03-18', 'Standard Class', '452', 'Chris Martin', 'Consumer', 'United States', 'Los Angeles', 'IL', '65854', 'West', '1198', 'Office Supplies', 'Phones', 'Product C', '198.09', '6', '0.09', '8.98');
INSERT INTO superstore_sales VALUES ('1388', '2023-03-18', '2023-03-19', 'Same Day', '308', 'Jane Doe', 'Corporate', 'United States', 'Houston', 'FL', '65642', 'South', '1367', 'Furniture', 'Chairs', 'Product B', '985.2', '5', '0.19', '276.47');
INSERT INTO superstore_sales VALUES ('1617', '2023-03-19', '2023-03-20', 'First Class', '388', 'Chris Martin', 'Corporate', 'United States', 'Houston', 'CA', '74303', 'Central', '1280', 'Office Supplies', 'Art', 'Product B', '649.37', '3', '0.1', '29.7');
INSERT INTO superstore_sales VALUES ('1042', '2023-03-20', '2023-03-21', 'First Class', '162', 'Alice Johnson', 'Home Office', 'United States', 'Chicago', 'NY', '19588', 'West', '1289', 'Technology', 'Chairs', 'Product A', '436.67', '3', '0.19', '255.43');
INSERT INTO superstore_sales VALUES ('1442', '2023-03-21', '2023-03-22', 'Second Class', '494', 'Alice Johnson', 'Consumer', 'United States', 'Los Angeles', 'NY', '74432', 'Central', '1462', 'Furniture', 'Binders', 'Product B', '308.55', '3', '0.25', '-52.75');
INSERT INTO superstore_sales VALUES ('1543', '2023-03-22', '2023-03-23', 'Standard Class', '496', 'Chris Martin', 'Corporate', 'United States', 'New York', 'IL', '79559', 'South', '1197', 'Furniture', 'Chairs', 'Product C', '585.03', '2', '0.04', '169.87');
INSERT INTO superstore_sales VALUES ('1888', '2023-03-23', '2023-03-24', 'Standard Class', '193', 'Anna Brown', 'Home Office', 'United States', 'Houston', 'IL', '33193', 'South', '1009', 'Office Supplies', 'Bookcases', 'Product A', '458.67', '8', '0.19', '31.43');
INSERT INTO superstore_sales VALUES ('1257', '2023-03-24', '2023-03-25', 'Standard Class', '420', 'Alice Johnson', 'Home Office', 'United States', 'San Francisco', 'TX', '74320', 'West', '1037', 'Technology', 'Art', 'Product A', '467.65', '2', '0.2', '256.99');
INSERT INTO superstore_sales VALUES ('1321', '2023-03-25', '2023-03-26', 'Standard Class', '446', 'Anna Brown', 'Consumer', 'United States', 'Chicago', 'NY', '51276', 'West', '1358', 'Furniture', 'Chairs', 'Product D', '390.98', '8', '0.26', '179.09');
INSERT INTO superstore_sales VALUES ('1999', '2023-03-26', '2023-03-27', 'Standard Class', '250', 'Jane Doe', 'Home Office', 'United States', 'New York', 'IL', '23470', 'Central', '1907', 'Office Supplies', 'Chairs', 'Product D', '248.82', '8', '0.21', '36.85');
INSERT INTO superstore_sales VALUES ('1937', '2023-03-27', '2023-03-28', 'Same Day', '489', 'Alice Johnson', 'Corporate', 'United States', 'New York', 'FL', '53241', 'West', '1921', 'Furniture', 'Art', 'Product B', '93.61', '4', '0.24', '95.01');
INSERT INTO superstore_sales VALUES ('1057', '2023-03-28', '2023-03-29', 'First Class', '392', 'Chris Martin', 'Home Office', 'United States', 'New York', 'FL', '40447', 'East', '1784', 'Furniture', 'Phones', 'Product C', '689.33', '2', '0.05', '-6.14');
INSERT INTO superstore_sales VALUES ('1291', '2023-03-29', '2023-03-30', 'Second Class', '183', 'Anna Brown', 'Home Office', 'United States', 'Chicago', 'CA', '99188', 'East', '1083', 'Furniture', 'Bookcases', 'Product A', '185.48', '8', '0.04', '-87.96');
INSERT INTO superstore_sales VALUES ('1870', '2023-03-30', '2023-03-31', 'Standard Class', '227', 'Jane Doe', 'Home Office', 'United States', 'San Francisco', 'CA', '66934', 'Central', '1829', 'Technology', 'Storage', 'Product B', '431.24', '8', '0.27', '-74.11');
INSERT INTO superstore_sales VALUES ('1119', '2023-03-31', '2023-04-01', 'First Class', '361', 'John Smith', 'Consumer', 'United States', 'Houston', 'IL', '25196', 'Central', '1378', 'Technology', 'Art', 'Product D', '591.38', '8', '0.05', '224.71');
INSERT INTO superstore_sales VALUES ('1779', '2023-04-01', '2023-04-02', 'Same Day', '448', 'Jane Doe', 'Corporate', 'United States', 'Chicago', 'TX', '98655', 'West', '1919', 'Technology', 'Binders', 'Product B', '155.39', '9', '0.11', '195.83');
INSERT INTO superstore_sales VALUES ('1430', '2023-04-02', '2023-04-03', 'Same Day', '254', 'Anna Brown', 'Home Office', 'United States', 'Chicago', 'TX', '71862', 'West', '1434', 'Technology', 'Binders', 'Product A', '601.39', '4', '0.24', '166.38');
INSERT INTO superstore_sales VALUES ('1082', '2023-04-03', '2023-04-04', 'Same Day', '341', 'Alice Johnson', 'Consumer', 'United States', 'San Francisco', 'TX', '42102', 'East', '1633', 'Technology', 'Bookcases', 'Product D', '368.55', '1', '0.02', '265.25');
INSERT INTO superstore_sales VALUES ('1091', '2023-04-04', '2023-04-05', 'Same Day', '183', 'Alice Johnson', 'Home Office', 'United States', 'New York', 'TX', '55014', 'Central', '1880', 'Technology', 'Chairs', 'Product C', '263.05', '8', '0.16', '0.96');
INSERT INTO superstore_sales VALUES ('1896', '2023-04-05', '2023-04-06', 'Standard Class', '496', 'John Smith', 'Corporate', 'United States', 'Houston', 'NY', '58944', 'Central', '1521', 'Office Supplies', 'Art', 'Product B', '553.11', '6', '0.16', '-92.78');
INSERT INTO superstore_sales VALUES ('1398', '2023-04-06', '2023-04-07', 'First Class', '235', 'Anna Brown', 'Home Office', 'United States', 'Los Angeles', 'TX', '15383', 'East', '1810', 'Technology', 'Tables', 'Product B', '989.17', '6', '0.0', '265.88');
INSERT INTO superstore_sales VALUES ('1611', '2023-04-07', '2023-04-08', 'Second Class', '280', 'Alice Johnson', 'Consumer', 'United States', 'New York', 'CA', '69941', 'Central', '1425', 'Technology', 'Bookcases', 'Product B', '770.9', '6', '0.12', '294.63');
INSERT INTO superstore_sales VALUES ('1565', '2023-04-08', '2023-04-09', 'Standard Class', '180', 'Alice Johnson', 'Home Office', 'United States', 'New York', 'CA', '32338', 'West', '1745', 'Furniture', 'Art', 'Product C', '292.4', '6', '0.27', '-33.14');
INSERT INTO superstore_sales VALUES ('1908', '2023-04-09', '2023-04-10', 'Same Day', '100', 'Anna Brown', 'Home Office', 'United States', 'San Francisco', 'NY', '84205', 'Central', '1999', 'Furniture', 'Art', 'Product C', '506.52', '3', '0.13', '164.74');
INSERT INTO superstore_sales VALUES ('1633', '2023-04-10', '2023-04-11', 'Same Day', '315', 'Jane Doe', 'Home Office', 'United States', 'Los Angeles', 'IL', '75824', 'Central', '1026', 'Technology', 'Bookcases', 'Product B', '412.01', '1', '0.27', '-59.5');
INSERT INTO superstore_sales VALUES ('1938', '2023-04-11', '2023-04-12', 'Same Day', '307', 'Chris Martin', 'Consumer', 'United States', 'Houston', 'FL', '89668', 'West', '1375', 'Technology', 'Tables', 'Product B', '530.21', '5', '0.09', '-77.88');
INSERT INTO superstore_sales VALUES ('1084', '2023-04-12', '2023-04-13', 'Same Day', '430', 'Jane Doe', 'Home Office', 'United States', 'Houston', 'CA', '53447', 'West', '1630', 'Furniture', 'Binders', 'Product C', '694.63', '9', '0.15', '45.06');
INSERT INTO superstore_sales VALUES ('1203', '2023-04-13', '2023-04-14', 'Standard Class', '352', 'Anna Brown', 'Home Office', 'United States', 'Houston', 'CA', '79011', 'East', '1810', 'Furniture', 'Storage', 'Product B', '789.86', '7', '0.25', '-59.76');
INSERT INTO superstore_sales VALUES ('1324', '2023-04-14', '2023-04-15', 'First Class', '231', 'Jane Doe', 'Consumer', 'United States', 'San Francisco', 'NY', '16124', 'East', '1062', 'Furniture', 'Storage', 'Product B', '956.23', '2', '0.29', '-55.53');
INSERT INTO superstore_sales VALUES ('1774', '2023-04-15', '2023-04-16', 'Second Class', '161', 'Alice Johnson', 'Consumer', 'United States', 'Los Angeles', 'CA', '62204', 'East', '1779', 'Furniture', 'Binders', 'Product C', '302.11', '6', '0.23', '97.59');
INSERT INTO superstore_sales VALUES ('1964', '2023-04-16', '2023-04-17', 'First Class', '423', 'Anna Brown', 'Corporate', 'United States', 'Los Angeles', 'FL', '57544', 'South', '1967', 'Furniture', 'Chairs', 'Product A', '331.01', '7', '0.1', '111.95');
INSERT INTO superstore_sales VALUES ('1047', '2023-04-17', '2023-04-18', 'First Class', '244', 'Alice Johnson', 'Consumer', 'United States', 'New York', 'NY', '46374', 'South', '1987', 'Furniture', 'Accessories', 'Product A', '32.15', '8', '0.09', '57.49');
INSERT INTO superstore_sales VALUES ('1639', '2023-04-18', '2023-04-19', 'Second Class', '468', 'Alice Johnson', 'Home Office', 'United States', 'Chicago', 'TX', '94460', 'Central', '1160', 'Furniture', 'Storage', 'Product B', '306.67', '5', '0.02', '166.02');
INSERT INTO superstore_sales VALUES ('1131', '2023-04-19', '2023-04-20', 'Same Day', '184', 'Alice Johnson', 'Home Office', 'United States', 'Los Angeles', 'TX', '33100', 'West', '1637', 'Office Supplies', 'Accessories', 'Product C', '942.29', '8', '0.06', '294.67');
INSERT INTO superstore_sales VALUES ('1972', '2023-04-20', '2023-04-21', 'Same Day', '216', 'Jane Doe', 'Consumer', 'United States', 'Houston', 'TX', '18765', 'Central', '1798', 'Technology', 'Storage', 'Product B', '835.07', '7', '0.23', '236.74');
INSERT INTO superstore_sales VALUES ('1868', '2023-04-21', '2023-04-22', 'Standard Class', '329', 'Chris Martin', 'Corporate', 'United States', 'Houston', 'FL', '38373', 'West', '1854', 'Technology', 'Chairs', 'Product D', '127.8', '9', '0.12', '205.67');
INSERT INTO superstore_sales VALUES ('1180', '2023-04-22', '2023-04-23', 'Standard Class', '355', 'John Smith', 'Consumer', 'United States', 'Chicago', 'IL', '51648', 'West', '1285', 'Furniture', 'Storage', 'Product B', '964.99', '1', '0.05', '66.52');
INSERT INTO superstore_sales VALUES ('1846', '2023-04-23', '2023-04-24', 'First Class', '412', 'Chris Martin', 'Corporate', 'United States', 'Chicago', 'CA', '14514', 'Central', '1032', 'Technology', 'Binders', 'Product B', '889.03', '4', '0.09', '31.94');
INSERT INTO superstore_sales VALUES ('1143', '2023-04-24', '2023-04-25', 'Second Class', '418', 'John Smith', 'Consumer', 'United States', 'New York', 'FL', '21197', 'Central', '1450', 'Furniture', 'Tables', 'Product A', '859.51', '7', '0.18', '128.52');
INSERT INTO superstore_sales VALUES ('1660', '2023-04-25', '2023-04-26', 'Second Class', '148', 'Anna Brown', 'Corporate', 'United States', 'New York', 'IL', '85457', 'South', '1406', 'Office Supplies', 'Bookcases', 'Product D', '924.74', '9', '0.29', '23.3');
INSERT INTO superstore_sales VALUES ('1227', '2023-04-26', '2023-04-27', 'Standard Class', '245', 'Chris Martin', 'Corporate', 'United States', 'San Francisco', 'NY', '37830', 'Central', '1175', 'Office Supplies', 'Art', 'Product D', '538.65', '6', '0.29', '-32.03');
INSERT INTO superstore_sales VALUES ('1954', '2023-04-27', '2023-04-28', 'Same Day', '473', 'John Smith', 'Home Office', 'United States', 'Houston', 'FL', '59297', 'West', '1040', 'Technology', 'Chairs', 'Product A', '971.25', '5', '0.03', '247.29');
INSERT INTO superstore_sales VALUES ('1791', '2023-04-28', '2023-04-29', 'Standard Class', '109', 'Alice Johnson', 'Corporate', 'United States', 'San Francisco', 'NY', '16708', 'West', '1239', 'Office Supplies', 'Binders', 'Product B', '35.94', '9', '0.07', '-51.72');
INSERT INTO superstore_sales VALUES ('1719', '2023-04-29', '2023-04-30', 'First Class', '290', 'Anna Brown', 'Home Office', 'United States', 'Houston', 'IL', '51101', 'Central', '1408', 'Furniture', 'Accessories', 'Product C', '566.81', '6', '0.18', '293.74');
INSERT INTO superstore_sales VALUES ('1909', '2023-04-30', '2023-05-01', 'Standard Class', '179', 'Chris Martin', 'Consumer', 'United States', 'San Francisco', 'FL', '96033', 'West', '1374', 'Office Supplies', 'Storage', 'Product A', '379.36', '1', '0.27', '3.76');
INSERT INTO superstore_sales VALUES ('1373', '2023-05-01', '2023-05-02', 'Same Day', '330', 'Jane Doe', 'Consumer', 'United States', 'New York', 'CA', '46639', 'South', '1654', 'Furniture', 'Art', 'Product C', '568.43', '2', '0.29', '194.9');
INSERT INTO superstore_sales VALUES ('1853', '2023-05-02', '2023-05-03', 'Second Class', '306', 'Anna Brown', 'Consumer', 'United States', 'Los Angeles', 'IL', '93477', 'West', '1514', 'Technology', 'Bookcases', 'Product C', '899.38', '3', '0.22', '-75.56');
INSERT INTO superstore_sales VALUES ('1560', '2023-05-03', '2023-05-04', 'First Class', '488', 'Alice Johnson', 'Consumer', 'United States', 'Chicago', 'CA', '14322', 'Central', '1195', 'Furniture', 'Bookcases', 'Product D', '454.87', '8', '0.12', '221.26');
INSERT INTO superstore_sales VALUES ('1305', '2023-05-04', '2023-05-05', 'Same Day', '328', 'Alice Johnson', 'Consumer', 'United States', 'Houston', 'NY', '50557', 'West', '1545', 'Technology', 'Phones', 'Product D', '235.18', '8', '0.26', '106.31');
INSERT INTO superstore_sales VALUES ('1581', '2023-05-05', '2023-05-06', 'First Class', '427', 'Alice Johnson', 'Home Office', 'United States', 'New York', 'CA', '42325', 'East', '1810', 'Technology', 'Chairs', 'Product C', '365.15', '5', '0.13', '287.01');
INSERT INTO superstore_sales VALUES ('1169', '2023-05-06', '2023-05-07', 'Second Class', '418', 'John Smith', 'Consumer', 'United States', 'New York', 'FL', '10943', 'Central', '1292', 'Furniture', 'Chairs', 'Product B', '451.27', '6', '0.2', '96.93');
INSERT INTO superstore_sales VALUES ('1675', '2023-05-07', '2023-05-08', 'Standard Class', '379', 'Chris Martin', 'Corporate', 'United States', 'New York', 'FL', '25602', 'South', '1128', 'Technology', 'Storage', 'Product D', '460.38', '3', '0.15', '211.07');
INSERT INTO superstore_sales VALUES ('1448', '2023-05-08', '2023-05-09', 'Standard Class', '447', 'Anna Brown', 'Home Office', 'United States', 'San Francisco', 'TX', '93110', 'East', '1920', 'Technology', 'Tables', 'Product A', '344.45', '3', '0.23', '-7.0');
INSERT INTO superstore_sales VALUES ('1095', '2023-05-09', '2023-05-10', 'Second Class', '466', 'Chris Martin', 'Corporate', 'United States', 'Chicago', 'CA', '23148', 'East', '1050', 'Office Supplies', 'Bookcases', 'Product C', '468.02', '5', '0.22', '39.29');
INSERT INTO superstore_sales VALUES ('1197', '2023-05-10', '2023-05-11', 'Standard Class', '107', 'Chris Martin', 'Home Office', 'United States', 'New York', 'TX', '40822', 'East', '1294', 'Office Supplies', 'Binders', 'Product B', '353.05', '1', '0.12', '215.46');
INSERT INTO superstore_sales VALUES ('1606', '2023-05-11', '2023-05-12', 'Standard Class', '378', 'John Smith', 'Corporate', 'United States', 'San Francisco', 'IL', '53770', 'South', '1823', 'Furniture', 'Accessories', 'Product B', '307.58', '6', '0.03', '249.11');
INSERT INTO superstore_sales VALUES ('1256', '2023-05-12', '2023-05-13', 'First Class', '454', 'John Smith', 'Home Office', 'United States', 'New York', 'NY', '84992', 'East', '1268', 'Furniture', 'Accessories', 'Product B', '862.62', '9', '0.29', '-57.44');
INSERT INTO superstore_sales VALUES ('1881', '2023-05-13', '2023-05-14', 'Standard Class', '258', 'Alice Johnson', 'Consumer', 'United States', 'San Francisco', 'IL', '91799', 'East', '1637', 'Technology', 'Storage', 'Product C', '846.71', '6', '0.28', '176.48');
INSERT INTO superstore_sales VALUES ('1690', '2023-05-14', '2023-05-15', 'Standard Class', '346', 'Chris Martin', 'Home Office', 'United States', 'Los Angeles', 'NY', '80211', 'South', '1271', 'Office Supplies', 'Bookcases', 'Product C', '291.18', '2', '0.05', '292.17');
INSERT INTO superstore_sales VALUES ('1292', '2023-05-15', '2023-05-16', 'Second Class', '180', 'John Smith', 'Home Office', 'United States', 'San Francisco', 'CA', '61221', 'East', '1026', 'Technology', 'Storage', 'Product D', '893.18', '9', '0.06', '278.75');
INSERT INTO superstore_sales VALUES ('1930', '2023-05-16', '2023-05-17', 'Same Day', '255', 'Alice Johnson', 'Corporate', 'United States', 'Houston', 'FL', '87113', 'Central', '1919', 'Furniture', 'Bookcases', 'Product B', '429.42', '9', '0.24', '45.73');
INSERT INTO superstore_sales VALUES ('1816', '2023-05-17', '2023-05-18', 'Second Class', '147', 'Anna Brown', 'Home Office', 'United States', 'Chicago', 'CA', '56042', 'Central', '1696', 'Furniture', 'Tables', 'Product D', '351.61', '5', '0.24', '19.53');
INSERT INTO superstore_sales VALUES ('1861', '2023-05-18', '2023-05-19', 'Second Class', '214', 'John Smith', 'Home Office', 'United States', 'San Francisco', 'NY', '12370', 'West', '1989', 'Office Supplies', 'Storage', 'Product A', '222.25', '1', '0.29', '-46.19');
INSERT INTO superstore_sales VALUES ('1387', '2023-05-19', '2023-05-20', 'Second Class', '111', 'John Smith', 'Consumer', 'United States', 'Chicago', 'TX', '54764', 'Central', '1784', 'Technology', 'Storage', 'Product B', '713.89', '6', '0.3', '294.98');
INSERT INTO superstore_sales VALUES ('1610', '2023-05-20', '2023-05-21', 'Second Class', '434', 'Anna Brown', 'Corporate', 'United States', 'San Francisco', 'NY', '35632', 'East', '1338', 'Office Supplies', 'Bookcases', 'Product D', '38.85', '8', '0.15', '207.54');
INSERT INTO superstore_sales VALUES ('1554', '2023-05-21', '2023-05-22', 'Same Day', '386', 'Anna Brown', 'Home Office', 'United States', 'Chicago', 'TX', '47792', 'Central', '1941', 'Furniture', 'Storage', 'Product C', '604.82', '2', '0.29', '150.32');
INSERT INTO superstore_sales VALUES ('1973', '2023-05-22', '2023-05-23', 'Second Class', '190', 'John Smith', 'Corporate', 'United States', 'Los Angeles', 'IL', '85367', 'South', '1673', 'Furniture', 'Binders', 'Product D', '37.7', '7', '0.24', '108.4');
INSERT INTO superstore_sales VALUES ('1368', '2023-05-23', '2023-05-24', 'First Class', '390', 'Anna Brown', 'Home Office', 'United States', 'Houston', 'FL', '72609', 'South', '1246', 'Office Supplies', 'Tables', 'Product D', '299.4', '9', '0.23', '222.56');
INSERT INTO superstore_sales VALUES ('1999', '2023-05-24', '2023-05-25', 'Standard Class', '154', 'Anna Brown', 'Home Office', 'United States', 'Houston', 'IL', '45427', 'South', '1387', 'Office Supplies', 'Bookcases', 'Product D', '973.27', '9', '0.11', '160.66');
INSERT INTO superstore_sales VALUES ('1917', '2023-05-25', '2023-05-26', 'First Class', '437', 'Alice Johnson', 'Corporate', 'United States', 'Houston', 'CA', '49510', 'East', '1570', 'Technology', 'Accessories', 'Product A', '595.92', '8', '0.26', '95.05');
INSERT INTO superstore_sales VALUES ('1201', '2023-05-26', '2023-05-27', 'Standard Class', '263', 'John Smith', 'Consumer', 'United States', 'San Francisco', 'TX', '98182', 'South', '1870', 'Office Supplies', 'Chairs', 'Product A', '300.08', '6', '0.28', '76.66');
INSERT INTO superstore_sales VALUES ('1383', '2023-05-27', '2023-05-28', 'Same Day', '171', 'Anna Brown', 'Home Office', 'United States', 'Houston', 'TX', '14417', 'East', '1071', 'Technology', 'Art', 'Product A', '295.45', '9', '0.22', '51.43');
INSERT INTO superstore_sales VALUES ('1512', '2023-05-28', '2023-05-29', 'Same Day', '465', 'Alice Johnson', 'Home Office', 'United States', 'New York', 'IL', '16845', 'Central', '1057', 'Furniture', 'Accessories', 'Product B', '134.14', '2', '0.19', '287.94');
INSERT INTO superstore_sales VALUES ('1906', '2023-05-29', '2023-05-30', 'Second Class', '415', 'John Smith', 'Home Office', 'United States', 'New York', 'FL', '79867', 'South', '1660', 'Office Supplies', 'Bookcases', 'Product A', '337.5', '7', '0.19', '265.92');
INSERT INTO superstore_sales VALUES ('1370', '2023-05-30', '2023-05-31', 'Same Day', '212', 'John Smith', 'Corporate', 'United States', 'Houston', 'FL', '36858', 'East', '1368', 'Office Supplies', 'Accessories', 'Product A', '455.82', '1', '0.05', '33.55');
INSERT INTO superstore_sales VALUES ('1555', '2023-05-31', '2023-06-01', 'Standard Class', '168', 'John Smith', 'Consumer', 'United States', 'Houston', 'IL', '79828', 'East', '1472', 'Technology', 'Binders', 'Product C', '716.58', '6', '0.07', '-74.05');
INSERT INTO superstore_sales VALUES ('1954', '2023-06-01', '2023-06-02', 'Same Day', '113', 'Anna Brown', 'Home Office', 'United States', 'San Francisco', 'FL', '42787', 'East', '1834', 'Technology', 'Binders', 'Product B', '570.98', '6', '0.07', '-37.79');
INSERT INTO superstore_sales VALUES ('1383', '2023-06-02', '2023-06-03', 'First Class', '201', 'Anna Brown', 'Home Office', 'United States', 'Houston', 'CA', '85762', 'East', '1510', 'Technology', 'Chairs', 'Product A', '51.38', '4', '0.05', '138.48');
INSERT INTO superstore_sales VALUES ('1023', '2023-06-03', '2023-06-04', 'Standard Class', '375', 'Chris Martin', 'Home Office', 'United States', 'Chicago', 'NY', '18181', 'South', '1060', 'Furniture', 'Bookcases', 'Product D', '352.53', '5', '0.14', '189.66');
INSERT INTO superstore_sales VALUES ('1699', '2023-06-04', '2023-06-05', 'Same Day', '463', 'Alice Johnson', 'Corporate', 'United States', 'Los Angeles', 'TX', '61959', 'East', '1522', 'Office Supplies', 'Bookcases', 'Product D', '60.49', '7', '0.02', '245.27');
INSERT INTO superstore_sales VALUES ('1130', '2023-06-05', '2023-06-06', 'Same Day', '364', 'Chris Martin', 'Corporate', 'United States', 'San Francisco', 'TX', '51613', 'Central', '1563', 'Office Supplies', 'Bookcases', 'Product A', '939.37', '6', '0.09', '263.89');
INSERT INTO superstore_sales VALUES ('1377', '2023-06-06', '2023-06-07', 'Same Day', '452', 'Alice Johnson', 'Corporate', 'United States', 'San Francisco', 'TX', '84583', 'East', '1866', 'Technology', 'Binders', 'Product C', '431.23', '4', '0.24', '273.93');
INSERT INTO superstore_sales VALUES ('1098', '2023-06-07', '2023-06-08', 'Standard Class', '309', 'Jane Doe', 'Corporate', 'United States', 'New York', 'NY', '15478', 'Central', '1728', 'Furniture', 'Tables', 'Product C', '602.84', '9', '0.28', '291.1');
INSERT INTO superstore_sales VALUES ('1574', '2023-06-08', '2023-06-09', 'Second Class', '297', 'Chris Martin', 'Consumer', 'United States', 'San Francisco', 'CA', '91077', 'Central', '1256', 'Office Supplies', 'Phones', 'Product D', '732.98', '8', '0.26', '211.59');
INSERT INTO superstore_sales VALUES ('1931', '2023-06-09', '2023-06-10', 'Same Day', '480', 'John Smith', 'Corporate', 'United States', 'San Francisco', 'IL', '39259', 'Central', '1070', 'Furniture', 'Tables', 'Product A', '13.54', '8', '0.1', '193.28');
INSERT INTO superstore_sales VALUES ('1734', '2023-06-10', '2023-06-11', 'Same Day', '200', 'Jane Doe', 'Corporate', 'United States', 'Los Angeles', 'FL', '77880', 'South', '1781', 'Technology', 'Chairs', 'Product A', '114.56', '9', '0.16', '36.17');
INSERT INTO superstore_sales VALUES ('1123', '2023-06-11', '2023-06-12', 'First Class', '485', 'Jane Doe', 'Home Office', 'United States', 'Chicago', 'FL', '76051', 'Central', '1742', 'Technology', 'Binders', 'Product A', '540.84', '9', '0.28', '271.56');
INSERT INTO superstore_sales VALUES ('1963', '2023-06-12', '2023-06-13', 'Second Class', '353', 'Jane Doe', 'Corporate', 'United States', 'Los Angeles', 'NY', '67847', 'Central', '1025', 'Furniture', 'Art', 'Product A', '605.18', '7', '0.17', '-45.03');
INSERT INTO superstore_sales VALUES ('1594', '2023-06-13', '2023-06-14', 'Same Day', '257', 'Alice Johnson', 'Consumer', 'United States', 'Chicago', 'TX', '99789', 'East', '1091', 'Furniture', 'Storage', 'Product D', '727.06', '8', '0.08', '117.94');
INSERT INTO superstore_sales VALUES ('1942', '2023-06-14', '2023-06-15', 'Same Day', '489', 'Anna Brown', 'Consumer', 'United States', 'New York', 'FL', '61143', 'Central', '1303', 'Furniture', 'Chairs', 'Product B', '123.61', '9', '0.21', '80.82');
INSERT INTO superstore_sales VALUES ('1739', '2023-06-15', '2023-06-16', 'Second Class', '330', 'Anna Brown', 'Home Office', 'United States', 'Los Angeles', 'IL', '30270', 'South', '1325', 'Furniture', 'Phones', 'Product D', '363.68', '3', '0.19', '256.11');
INSERT INTO superstore_sales VALUES ('1148', '2023-06-16', '2023-06-17', 'Second Class', '250', 'Jane Doe', 'Consumer', 'United States', 'Los Angeles', 'FL', '23701', 'South', '1493', 'Furniture', 'Tables', 'Product D', '749.31', '4', '0.02', '156.97');
INSERT INTO superstore_sales VALUES ('1209', '2023-06-17', '2023-06-18', 'Standard Class', '130', 'Anna Brown', 'Corporate', 'United States', 'Los Angeles', 'TX', '69408', 'South', '1617', 'Furniture', 'Art', 'Product A', '246.79', '5', '0.23', '54.04');
INSERT INTO superstore_sales VALUES ('1562', '2023-06-18', '2023-06-19', 'Standard Class', '355', 'John Smith', 'Corporate', 'United States', 'Houston', 'IL', '70786', 'Central', '1023', 'Technology', 'Chairs', 'Product B', '967.8', '5', '0.03', '-62.46');
INSERT INTO superstore_sales VALUES ('1411', '2023-06-19', '2023-06-20', 'Same Day', '119', 'Anna Brown', 'Consumer', 'United States', 'Houston', 'TX', '95596', 'West', '1947', 'Furniture', 'Chairs', 'Product D', '974.71', '5', '0.19', '15.47');
INSERT INTO superstore_sales VALUES ('1782', '2023-06-20', '2023-06-21', 'First Class', '360', 'Alice Johnson', 'Consumer', 'United States', 'Los Angeles', 'TX', '31070', 'Central', '1438', 'Furniture', 'Accessories', 'Product D', '490.65', '5', '0.21', '103.23');
INSERT INTO superstore_sales VALUES ('1041', '2023-06-21', '2023-06-22', 'Standard Class', '248', 'Jane Doe', 'Corporate', 'United States', 'San Francisco', 'NY', '29896', 'Central', '1280', 'Office Supplies', 'Binders', 'Product B', '138.99', '2', '0.18', '58.08');
INSERT INTO superstore_sales VALUES ('1058', '2023-06-22', '2023-06-23', 'Standard Class', '462', 'Chris Martin', 'Home Office', 'United States', 'New York', 'TX', '98582', 'West', '1461', 'Technology', 'Bookcases', 'Product A', '28.4', '3', '0.11', '279.62');
INSERT INTO superstore_sales VALUES ('1705', '2023-06-23', '2023-06-24', 'Same Day', '174', 'John Smith', 'Corporate', 'United States', 'San Francisco', 'IL', '52755', 'Central', '1789', 'Technology', 'Tables', 'Product A', '127.04', '6', '0.18', '138.93');
INSERT INTO superstore_sales VALUES ('1036', '2023-06-24', '2023-06-25', 'First Class', '223', 'Chris Martin', 'Home Office', 'United States', 'New York', 'NY', '58620', 'East', '1525', 'Technology', 'Tables', 'Product C', '382.66', '7', '0.17', '182.8');
INSERT INTO superstore_sales VALUES ('1778', '2023-06-25', '2023-06-26', 'Second Class', '314', 'Jane Doe', 'Home Office', 'United States', 'New York', 'NY', '11339', 'Central', '1066', 'Furniture', 'Phones', 'Product B', '344.72', '7', '0.18', '138.26');
INSERT INTO superstore_sales VALUES ('1086', '2023-06-26', '2023-06-27', 'First Class', '416', 'Jane Doe', 'Consumer', 'United States', 'Houston', 'IL', '38262', 'West', '1504', 'Furniture', 'Phones', 'Product D', '775.08', '3', '0.24', '62.04');
INSERT INTO superstore_sales VALUES ('1043', '2023-06-27', '2023-06-28', 'Same Day', '329', 'Chris Martin', 'Home Office', 'United States', 'New York', 'NY', '51984', 'Central', '1681', 'Furniture', 'Bookcases', 'Product B', '574.06', '6', '0.25', '-75.46');
INSERT INTO superstore_sales VALUES ('1872', '2023-06-28', '2023-06-29', 'First Class', '350', 'Jane Doe', 'Corporate', 'United States', 'Los Angeles', 'IL', '50651', 'East', '1641', 'Furniture', 'Art', 'Product A', '444.41', '1', '0.23', '-87.61');
INSERT INTO superstore_sales VALUES ('1011', '2023-06-29', '2023-06-30', 'Same Day', '193', 'Jane Doe', 'Corporate', 'United States', 'Los Angeles', 'FL', '92854', 'Central', '1058', 'Office Supplies', 'Art', 'Product A', '149.73', '2', '0.14', '161.5');
INSERT INTO superstore_sales VALUES ('1770', '2023-06-30', '2023-07-01', 'Same Day', '269', 'Jane Doe', 'Consumer', 'United States', 'New York', 'NY', '61059', 'South', '1564', 'Furniture', 'Accessories', 'Product D', '153.43', '2', '0.11', '177.94');
INSERT INTO superstore_sales VALUES ('1307', '2023-07-01', '2023-07-02', 'Standard Class', '140', 'Anna Brown', 'Home Office', 'United States', 'Houston', 'FL', '23972', 'East', '1896', 'Furniture', 'Art', 'Product D', '763.55', '2', '0.26', '-28.04');
INSERT INTO superstore_sales VALUES ('1080', '2023-07-02', '2023-07-03', 'Same Day', '288', 'Anna Brown', 'Corporate', 'United States', 'San Francisco', 'NY', '73992', 'South', '1441', 'Office Supplies', 'Bookcases', 'Product A', '939.38', '9', '0.26', '153.43');
INSERT INTO superstore_sales VALUES ('1032', '2023-07-03', '2023-07-04', 'First Class', '309', 'Alice Johnson', 'Home Office', 'United States', 'Houston', 'TX', '42656', 'South', '1894', 'Furniture', 'Binders', 'Product A', '264.32', '4', '0.24', '-95.68');
INSERT INTO superstore_sales VALUES ('1182', '2023-07-04', '2023-07-05', 'First Class', '279', 'Chris Martin', 'Corporate', 'United States', 'Houston', 'IL', '14928', 'East', '1526', 'Furniture', 'Binders', 'Product C', '533.36', '4', '0.27', '77.83');
INSERT INTO superstore_sales VALUES ('1128', '2023-07-05', '2023-07-06', 'Standard Class', '396', 'John Smith', 'Corporate', 'United States', 'San Francisco', 'TX', '70539', 'South', '1356', 'Office Supplies', 'Phones', 'Product A', '821.68', '3', '0.12', '11.64');
INSERT INTO superstore_sales VALUES ('1806', '2023-07-06', '2023-07-07', 'Same Day', '159', 'Chris Martin', 'Corporate', 'United States', 'Los Angeles', 'FL', '62293', 'West', '1135', 'Furniture', 'Phones', 'Product C', '808.83', '4', '0.16', '253.14');
INSERT INTO superstore_sales VALUES ('1275', '2023-07-07', '2023-07-08', 'First Class', '129', 'Chris Martin', 'Corporate', 'United States', 'Chicago', 'IL', '26445', 'West', '1816', 'Furniture', 'Accessories', 'Product A', '646.43', '4', '0.17', '23.25');
INSERT INTO superstore_sales VALUES ('1174', '2023-07-08', '2023-07-09', 'Second Class', '325', 'Alice Johnson', 'Consumer', 'United States', 'Houston', 'IL', '73783', 'East', '1073', 'Furniture', 'Storage', 'Product D', '52.5', '1', '0.22', '56.32');
INSERT INTO superstore_sales VALUES ('1554', '2023-07-09', '2023-07-10', 'Standard Class', '194', 'Anna Brown', 'Consumer', 'United States', 'Los Angeles', 'FL', '31819', 'South', '1108', 'Technology', 'Phones', 'Product A', '166.37', '9', '0.23', '-36.0');
INSERT INTO superstore_sales VALUES ('1371', '2023-07-10', '2023-07-11', 'Same Day', '338', 'John Smith', 'Home Office', 'United States', 'New York', 'IL', '59360', 'Central', '1561', 'Furniture', 'Accessories', 'Product B', '842.06', '5', '0.17', '-47.73');
INSERT INTO superstore_sales VALUES ('1184', '2023-07-11', '2023-07-12', 'Second Class', '265', 'John Smith', 'Home Office', 'United States', 'Houston', 'IL', '18665', 'West', '1516', 'Furniture', 'Chairs', 'Product A', '813.86', '9', '0.27', '36.71');
INSERT INTO superstore_sales VALUES ('1444', '2023-07-12', '2023-07-13', 'First Class', '482', 'Alice Johnson', 'Consumer', 'United States', 'Houston', 'NY', '67849', 'West', '1016', 'Furniture', 'Tables', 'Product D', '669.93', '1', '0.07', '199.9');
INSERT INTO superstore_sales VALUES ('1488', '2023-07-13', '2023-07-14', 'Second Class', '316', 'Jane Doe', 'Corporate', 'United States', 'New York', 'CA', '30446', 'East', '1144', 'Technology', 'Phones', 'Product B', '581.45', '4', '0.12', '-72.81');
INSERT INTO superstore_sales VALUES ('1589', '2023-07-14', '2023-07-15', 'Second Class', '372', 'Chris Martin', 'Home Office', 'United States', 'Chicago', 'TX', '74795', 'South', '1249', 'Office Supplies', 'Bookcases', 'Product D', '274.08', '1', '0.02', '-76.2');
INSERT INTO superstore_sales VALUES ('1286', '2023-07-15', '2023-07-16', 'Standard Class', '455', 'Chris Martin', 'Home Office', 'United States', 'Chicago', 'CA', '33755', 'West', '1831', 'Office Supplies', 'Binders', 'Product B', '666.7', '9', '0.29', '224.43');
INSERT INTO superstore_sales VALUES ('1280', '2023-07-16', '2023-07-17', 'Second Class', '267', 'John Smith', 'Consumer', 'United States', 'San Francisco', 'IL', '66296', 'Central', '1912', 'Furniture', 'Tables', 'Product A', '116.36', '4', '0.24', '109.68');
INSERT INTO superstore_sales VALUES ('1637', '2023-07-17', '2023-07-18', 'Second Class', '257', 'Chris Martin', 'Home Office', 'United States', 'New York', 'CA', '84688', 'South', '1451', 'Office Supplies', 'Storage', 'Product D', '954.14', '1', '0.04', '243.91');
INSERT INTO superstore_sales VALUES ('1770', '2023-07-18', '2023-07-19', 'Same Day', '165', 'John Smith', 'Consumer', 'United States', 'Los Angeles', 'NY', '96305', 'West', '1872', 'Furniture', 'Art', 'Product D', '578.2', '9', '0.1', '145.39');
INSERT INTO superstore_sales VALUES ('1515', '2023-07-19', '2023-07-20', 'Second Class', '379', 'Anna Brown', 'Corporate', 'United States', 'Los Angeles', 'FL', '59038', 'South', '1182', 'Technology', 'Bookcases', 'Product C', '82.71', '2', '0.16', '-68.62');
INSERT INTO superstore_sales VALUES ('1094', '2023-07-20', '2023-07-21', 'Same Day', '300', 'Anna Brown', 'Home Office', 'United States', 'Chicago', 'FL', '96704', 'Central', '1258', 'Office Supplies', 'Tables', 'Product B', '861.22', '7', '0.09', '-30.46');
INSERT INTO superstore_sales VALUES ('1226', '2023-07-21', '2023-07-22', 'First Class', '484', 'John Smith', 'Corporate', 'United States', 'San Francisco', 'CA', '86194', 'South', '1544', 'Technology', 'Binders', 'Product A', '569.7', '1', '0.04', '76.83');
INSERT INTO superstore_sales VALUES ('1875', '2023-07-22', '2023-07-23', 'Standard Class', '187', 'Alice Johnson', 'Corporate', 'United States', 'San Francisco', 'NY', '10946', 'East', '1697', 'Office Supplies', 'Art', 'Product D', '233.33', '7', '0.18', '-24.62');
INSERT INTO superstore_sales VALUES ('1269', '2023-07-23', '2023-07-24', 'Second Class', '393', 'Chris Martin', 'Consumer', 'United States', 'Los Angeles', 'FL', '78907', 'East', '1326', 'Technology', 'Storage', 'Product C', '55.09', '6', '0.07', '246.26');
INSERT INTO superstore_sales VALUES ('1880', '2023-07-24', '2023-07-25', 'Second Class', '467', 'John Smith', 'Corporate', 'United States', 'San Francisco', 'CA', '48519', 'South', '1981', 'Technology', 'Chairs', 'Product D', '984.71', '3', '0.19', '292.29');
INSERT INTO superstore_sales VALUES ('1296', '2023-07-25', '2023-07-26', 'Same Day', '317', 'Alice Johnson', 'Consumer', 'United States', 'Chicago', 'CA', '40758', 'West', '1668', 'Furniture', 'Chairs', 'Product D', '500.23', '4', '0.21', '147.58');
INSERT INTO superstore_sales VALUES ('1328', '2023-07-26', '2023-07-27', 'Same Day', '445', 'Anna Brown', 'Consumer', 'United States', 'Chicago', 'TX', '50746', 'West', '1790', 'Furniture', 'Chairs', 'Product B', '231.79', '6', '0.24', '159.53');
INSERT INTO superstore_sales VALUES ('1019', '2023-07-27', '2023-07-28', 'Standard Class', '234', 'Chris Martin', 'Home Office', 'United States', 'San Francisco', 'NY', '99830', 'South', '1667', 'Office Supplies', 'Binders', 'Product B', '580.2', '4', '0.13', '255.66');
INSERT INTO superstore_sales VALUES ('1607', '2023-07-28', '2023-07-29', 'Second Class', '316', 'Chris Martin', 'Corporate', 'United States', 'Chicago', 'TX', '31653', 'South', '1889', 'Technology', 'Bookcases', 'Product B', '201.27', '8', '0.21', '171.14');
INSERT INTO superstore_sales VALUES ('1840', '2023-07-29', '2023-07-30', 'First Class', '201', 'Anna Brown', 'Consumer', 'United States', 'Chicago', 'CA', '99434', 'East', '1177', 'Office Supplies', 'Storage', 'Product B', '270.2', '7', '0.01', '54.19');
INSERT INTO superstore_sales VALUES ('1410', '2023-07-30', '2023-07-31', 'Standard Class', '397', 'Jane Doe', 'Home Office', 'United States', 'San Francisco', 'TX', '96435', 'West', '1894', 'Furniture', 'Storage', 'Product C', '925.62', '1', '0.19', '-4.07');
INSERT INTO superstore_sales VALUES ('1450', '2023-07-31', '2023-08-01', 'Second Class', '468', 'John Smith', 'Consumer', 'United States', 'Chicago', 'TX', '50859', 'West', '1772', 'Technology', 'Accessories', 'Product C', '311.15', '5', '0.13', '63.74');
INSERT INTO superstore_sales VALUES ('1248', '2023-08-01', '2023-08-02', 'First Class', '143', 'Alice Johnson', 'Corporate', 'United States', 'New York', 'CA', '94611', 'Central', '1772', 'Furniture', 'Storage', 'Product A', '533.22', '9', '0.24', '286.72');
INSERT INTO superstore_sales VALUES ('1180', '2023-08-02', '2023-08-03', 'Second Class', '210', 'Alice Johnson', 'Corporate', 'United States', 'Chicago', 'FL', '94953', 'West', '1991', 'Office Supplies', 'Tables', 'Product B', '299.95', '5', '0.3', '-67.89');
INSERT INTO superstore_sales VALUES ('1323', '2023-08-03', '2023-08-04', 'First Class', '474', 'Jane Doe', 'Home Office', 'United States', 'Houston', 'IL', '98956', 'East', '1962', 'Technology', 'Binders', 'Product B', '422.72', '3', '0.09', '-58.82');
INSERT INTO superstore_sales VALUES ('1829', '2023-08-04', '2023-08-05', 'Second Class', '339', 'Alice Johnson', 'Home Office', 'United States', 'Los Angeles', 'FL', '91156', 'South', '1217', 'Furniture', 'Tables', 'Product B', '594.69', '3', '0.27', '164.97');
INSERT INTO superstore_sales VALUES ('1782', '2023-08-05', '2023-08-06', 'Same Day', '378', 'Alice Johnson', 'Home Office', 'United States', 'New York', 'NY', '92436', 'East', '1734', 'Technology', 'Binders', 'Product B', '764.34', '9', '0.03', '141.6');
INSERT INTO superstore_sales VALUES ('1864', '2023-08-06', '2023-08-07', 'First Class', '465', 'Chris Martin', 'Home Office', 'United States', 'San Francisco', 'FL', '73541', 'East', '1331', 'Technology', 'Art', 'Product B', '17.99', '4', '0.14', '194.92');
INSERT INTO superstore_sales VALUES ('1260', '2023-08-07', '2023-08-08', 'Same Day', '495', 'John Smith', 'Home Office', 'United States', 'Los Angeles', 'CA', '14489', 'Central', '1714', 'Office Supplies', 'Binders', 'Product B', '221.73', '5', '0.21', '260.36');
INSERT INTO superstore_sales VALUES ('1963', '2023-08-08', '2023-08-09', 'Second Class', '111', 'Chris Martin', 'Corporate', 'United States', 'Houston', 'TX', '31444', 'South', '1194', 'Furniture', 'Chairs', 'Product C', '805.08', '4', '0.26', '105.82');
INSERT INTO superstore_sales VALUES ('1749', '2023-08-09', '2023-08-10', 'First Class', '491', 'Anna Brown', 'Home Office', 'United States', 'Los Angeles', 'NY', '98737', 'West', '1331', 'Technology', 'Bookcases', 'Product B', '272.02', '5', '0.07', '40.12');
INSERT INTO superstore_sales VALUES ('1139', '2023-08-10', '2023-08-11', 'Same Day', '219', 'Chris Martin', 'Home Office', 'United States', 'Chicago', 'NY', '54746', 'South', '1588', 'Office Supplies', 'Phones', 'Product D', '121.28', '3', '0.15', '108.14');
INSERT INTO superstore_sales VALUES ('1598', '2023-08-11', '2023-08-12', 'First Class', '382', 'Jane Doe', 'Home Office', 'United States', 'Los Angeles', 'NY', '40615', 'Central', '1468', 'Furniture', 'Tables', 'Product D', '338.7', '9', '0.29', '-30.25');
INSERT INTO superstore_sales VALUES ('1461', '2023-08-12', '2023-08-13', 'First Class', '148', 'John Smith', 'Home Office', 'United States', 'San Francisco', 'TX', '90825', 'East', '1649', 'Office Supplies', 'Art', 'Product C', '683.1', '2', '0.22', '260.14');
INSERT INTO superstore_sales VALUES ('1889', '2023-08-13', '2023-08-14', 'First Class', '299', 'Jane Doe', 'Corporate', 'United States', 'Chicago', 'FL', '37616', 'East', '1762', 'Furniture', 'Accessories', 'Product D', '655.63', '1', '0.12', '172.92');
INSERT INTO superstore_sales VALUES ('1621', '2023-08-14', '2023-08-15', 'Standard Class', '339', 'John Smith', 'Corporate', 'United States', 'Chicago', 'TX', '87205', 'East', '1035', 'Technology', 'Phones', 'Product A', '850.56', '4', '0.15', '248.27');
INSERT INTO superstore_sales VALUES ('1843', '2023-08-15', '2023-08-16', 'Same Day', '282', 'John Smith', 'Consumer', 'United States', 'Houston', 'IL', '22380', 'East', '1435', 'Office Supplies', 'Chairs', 'Product C', '941.36', '9', '0.28', '20.97');
INSERT INTO superstore_sales VALUES ('1696', '2023-08-16', '2023-08-17', 'First Class', '196', 'John Smith', 'Home Office', 'United States', 'Los Angeles', 'NY', '45863', 'Central', '1646', 'Furniture', 'Phones', 'Product A', '676.29', '4', '0.15', '257.5');
INSERT INTO superstore_sales VALUES ('1528', '2023-08-17', '2023-08-18', 'First Class', '456', 'Alice Johnson', 'Home Office', 'United States', 'Houston', 'CA', '42133', 'South', '1510', 'Office Supplies', 'Storage', 'Product D', '861.62', '5', '0.02', '-39.23');
INSERT INTO superstore_sales VALUES ('1152', '2023-08-18', '2023-08-19', 'Same Day', '438', 'Chris Martin', 'Corporate', 'United States', 'Chicago', 'TX', '69394', 'East', '1543', 'Technology', 'Phones', 'Product A', '270.06', '9', '0.06', '48.08');
INSERT INTO superstore_sales VALUES ('1925', '2023-08-19', '2023-08-20', 'First Class', '187', 'Alice Johnson', 'Corporate', 'United States', 'Chicago', 'NY', '70672', 'Central', '1283', 'Technology', 'Phones', 'Product D', '448.1', '5', '0.0', '-71.37');
INSERT INTO superstore_sales VALUES ('1149', '2023-08-20', '2023-08-21', 'First Class', '102', 'Alice Johnson', 'Corporate', 'United States', 'Houston', 'TX', '93721', 'West', '1010', 'Furniture', 'Art', 'Product C', '324.71', '2', '0.14', '144.44');
INSERT INTO superstore_sales VALUES ('1110', '2023-08-21', '2023-08-22', 'Standard Class', '364', 'Chris Martin', 'Home Office', 'United States', 'Chicago', 'TX', '51109', 'West', '1688', 'Furniture', 'Tables', 'Product C', '771.6', '6', '0.29', '-3.05');
INSERT INTO superstore_sales VALUES ('1025', '2023-08-22', '2023-08-23', 'Second Class', '366', 'Jane Doe', 'Consumer', 'United States', 'Los Angeles', 'FL', '11488', 'South', '1968', 'Furniture', 'Binders', 'Product B', '750.57', '5', '0.24', '-6.29');
INSERT INTO superstore_sales VALUES ('1464', '2023-08-23', '2023-08-24', 'Standard Class', '361', 'John Smith', 'Consumer', 'United States', 'New York', 'TX', '93923', 'South', '1217', 'Technology', 'Bookcases', 'Product D', '407.31', '6', '0.01', '297.4');
INSERT INTO superstore_sales VALUES ('1956', '2023-08-24', '2023-08-25', 'Same Day', '394', 'Jane Doe', 'Corporate', 'United States', 'Houston', 'CA', '66869', 'West', '1613', 'Office Supplies', 'Chairs', 'Product B', '669.81', '9', '0.28', '-4.01');
INSERT INTO superstore_sales VALUES ('1889', '2023-08-25', '2023-08-26', 'First Class', '200', 'Jane Doe', 'Corporate', 'United States', 'San Francisco', 'IL', '62826', 'South', '1335', 'Furniture', 'Bookcases', 'Product A', '22.93', '8', '0.03', '104.99');
INSERT INTO superstore_sales VALUES ('1886', '2023-08-26', '2023-08-27', 'Standard Class', '217', 'Anna Brown', 'Corporate', 'United States', 'New York', 'IL', '19292', 'Central', '1538', 'Office Supplies', 'Tables', 'Product D', '907.51', '1', '0.01', '146.62');
INSERT INTO superstore_sales VALUES ('1117', '2023-08-27', '2023-08-28', 'Standard Class', '159', 'Alice Johnson', 'Corporate', 'United States', 'San Francisco', 'TX', '23011', 'West', '1837', 'Technology', 'Storage', 'Product D', '428.59', '7', '0.06', '287.51');
INSERT INTO superstore_sales VALUES ('1445', '2023-08-28', '2023-08-29', 'First Class', '264', 'John Smith', 'Consumer', 'United States', 'Chicago', 'TX', '39456', 'West', '1210', 'Office Supplies', 'Art', 'Product A', '907.23', '2', '0.15', '277.52');
INSERT INTO superstore_sales VALUES ('1595', '2023-08-29', '2023-08-30', 'Same Day', '489', 'Chris Martin', 'Consumer', 'United States', 'New York', 'TX', '21256', 'East', '1960', 'Furniture', 'Bookcases', 'Product D', '55.08', '2', '0.02', '64.5');
INSERT INTO superstore_sales VALUES ('1673', '2023-08-30', '2023-08-31', 'Second Class', '361', 'Jane Doe', 'Corporate', 'United States', 'Chicago', 'IL', '26715', 'East', '1932', 'Furniture', 'Art', 'Product C', '92.72', '5', '0.23', '-55.26');
INSERT INTO superstore_sales VALUES ('1872', '2023-08-31', '2023-09-01', 'Same Day', '138', 'Anna Brown', 'Consumer', 'United States', 'Chicago', 'TX', '87795', 'South', '1032', 'Furniture', 'Bookcases', 'Product A', '504.88', '6', '0.01', '-22.38');
INSERT INTO superstore_sales VALUES ('1928', '2023-09-01', '2023-09-02', 'First Class', '263', 'Anna Brown', 'Corporate', 'United States', 'Houston', 'FL', '58649', 'Central', '1037', 'Technology', 'Tables', 'Product B', '229.89', '2', '0.07', '-95.91');
INSERT INTO superstore_sales VALUES ('1228', '2023-09-02', '2023-09-03', 'First Class', '188', 'Jane Doe', 'Consumer', 'United States', 'San Francisco', 'TX', '47241', 'Central', '1594', 'Technology', 'Storage', 'Product C', '732.88', '6', '0.18', '-99.62');
INSERT INTO superstore_sales VALUES ('1507', '2023-09-03', '2023-09-04', 'Second Class', '307', 'Jane Doe', 'Home Office', 'United States', 'Los Angeles', 'CA', '99886', 'West', '1077', 'Technology', 'Art', 'Product D', '686.06', '6', '0.12', '210.83');
INSERT INTO superstore_sales VALUES ('1763', '2023-09-04', '2023-09-05', 'Second Class', '440', 'Anna Brown', 'Home Office', 'United States', 'Houston', 'CA', '64294', 'East', '1723', 'Office Supplies', 'Accessories', 'Product B', '634.36', '4', '0.14', '42.74');
INSERT INTO superstore_sales VALUES ('1121', '2023-09-05', '2023-09-06', 'First Class', '470', 'Alice Johnson', 'Consumer', 'United States', 'Houston', 'IL', '91514', 'East', '1834', 'Furniture', 'Bookcases', 'Product C', '842.58', '8', '0.2', '159.38');
INSERT INTO superstore_sales VALUES ('1326', '2023-09-06', '2023-09-07', 'Same Day', '365', 'Anna Brown', 'Corporate', 'United States', 'San Francisco', 'CA', '89172', 'West', '1239', 'Technology', 'Bookcases', 'Product D', '848.11', '2', '0.11', '125.3');
INSERT INTO superstore_sales VALUES ('1469', '2023-09-07', '2023-09-08', 'Second Class', '232', 'Anna Brown', 'Consumer', 'United States', 'Houston', 'IL', '21630', 'West', '1761', 'Technology', 'Phones', 'Product D', '278.03', '8', '0.07', '251.7');
INSERT INTO superstore_sales VALUES ('1287', '2023-09-08', '2023-09-09', 'First Class', '124', 'Anna Brown', 'Corporate', 'United States', 'San Francisco', 'CA', '15199', 'West', '1168', 'Furniture', 'Tables', 'Product D', '228.66', '1', '0.28', '130.13');
INSERT INTO superstore_sales VALUES ('1525', '2023-09-09', '2023-09-10', 'Second Class', '194', 'Alice Johnson', 'Corporate', 'United States', 'Houston', 'IL', '35455', 'South', '1233', 'Furniture', 'Accessories', 'Product A', '680.7', '7', '0.1', '-55.94');
INSERT INTO superstore_sales VALUES ('1839', '2023-09-10', '2023-09-11', 'Same Day', '486', 'Alice Johnson', 'Corporate', 'United States', 'New York', 'NY', '33601', 'Central', '1128', 'Furniture', 'Accessories', 'Product A', '118.22', '7', '0.14', '251.78');
INSERT INTO superstore_sales VALUES ('1696', '2023-09-11', '2023-09-12', 'First Class', '439', 'Alice Johnson', 'Corporate', 'United States', 'San Francisco', 'CA', '71809', 'Central', '1166', 'Office Supplies', 'Art', 'Product D', '210.22', '6', '0.25', '189.11');
INSERT INTO superstore_sales VALUES ('1152', '2023-09-12', '2023-09-13', 'Same Day', '487', 'Chris Martin', 'Consumer', 'United States', 'Los Angeles', 'TX', '67959', 'South', '1320', 'Office Supplies', 'Bookcases', 'Product D', '891.01', '4', '0.19', '23.02');
INSERT INTO superstore_sales VALUES ('1591', '2023-09-13', '2023-09-14', 'Standard Class', '177', 'Chris Martin', 'Consumer', 'United States', 'Houston', 'IL', '20786', 'East', '1905', 'Technology', 'Storage', 'Product B', '645.97', '1', '0.19', '202.15');
INSERT INTO superstore_sales VALUES ('1041', '2023-09-14', '2023-09-15', 'Second Class', '367', 'Chris Martin', 'Home Office', 'United States', 'New York', 'IL', '24247', 'East', '1830', 'Office Supplies', 'Accessories', 'Product D', '204.53', '7', '0.19', '57.27');
INSERT INTO superstore_sales VALUES ('1274', '2023-09-15', '2023-09-16', 'Second Class', '497', 'Chris Martin', 'Corporate', 'United States', 'Los Angeles', 'FL', '27708', 'East', '1945', 'Technology', 'Chairs', 'Product A', '687.87', '5', '0.24', '244.42');
INSERT INTO superstore_sales VALUES ('1552', '2023-09-16', '2023-09-17', 'First Class', '181', 'John Smith', 'Home Office', 'United States', 'Houston', 'NY', '99836', 'South', '1515', 'Furniture', 'Tables', 'Product D', '194.82', '8', '0.16', '98.24');
INSERT INTO superstore_sales VALUES ('1438', '2023-09-17', '2023-09-18', 'First Class', '254', 'John Smith', 'Consumer', 'United States', 'Houston', 'NY', '35194', 'South', '1133', 'Office Supplies', 'Bookcases', 'Product D', '641.37', '6', '0.02', '142.3');
INSERT INTO superstore_sales VALUES ('1207', '2023-09-18', '2023-09-19', 'Standard Class', '275', 'John Smith', 'Consumer', 'United States', 'Chicago', 'TX', '65553', 'Central', '1849', 'Technology', 'Tables', 'Product C', '224.8', '5', '0.2', '-70.51');
INSERT INTO superstore_sales VALUES ('1779', '2023-09-19', '2023-09-20', 'First Class', '198', 'Jane Doe', 'Corporate', 'United States', 'Houston', 'IL', '64528', 'East', '1764', 'Technology', 'Binders', 'Product B', '716.51', '9', '0.05', '233.43');
INSERT INTO superstore_sales VALUES ('1166', '2023-09-20', '2023-09-21', 'Second Class', '121', 'John Smith', 'Consumer', 'United States', 'Los Angeles', 'NY', '45738', 'East', '1274', 'Office Supplies', 'Bookcases', 'Product D', '982.39', '4', '0.25', '96.67');
INSERT INTO superstore_sales VALUES ('1111', '2023-09-21', '2023-09-22', 'Same Day', '270', 'Jane Doe', 'Corporate', 'United States', 'Los Angeles', 'NY', '92398', 'East', '1813', 'Technology', 'Accessories', 'Product B', '496.58', '8', '0.05', '-44.7');
INSERT INTO superstore_sales VALUES ('1349', '2023-09-22', '2023-09-23', 'First Class', '478', 'Anna Brown', 'Home Office', 'United States', 'New York', 'FL', '24187', 'South', '1715', 'Furniture', 'Accessories', 'Product A', '665.22', '8', '0.29', '-80.04');
INSERT INTO superstore_sales VALUES ('1129', '2023-09-23', '2023-09-24', 'Standard Class', '245', 'John Smith', 'Corporate', 'United States', 'Chicago', 'TX', '14010', 'Central', '1576', 'Technology', 'Chairs', 'Product A', '999.32', '9', '0.21', '44.8');
INSERT INTO superstore_sales VALUES ('1735', '2023-09-24', '2023-09-25', 'Same Day', '201', 'Alice Johnson', 'Consumer', 'United States', 'New York', 'TX', '90659', 'Central', '1629', 'Furniture', 'Accessories', 'Product C', '407.45', '4', '0.08', '286.78');
INSERT INTO superstore_sales VALUES ('1886', '2023-09-25', '2023-09-26', 'Second Class', '344', 'Chris Martin', 'Consumer', 'United States', 'New York', 'NY', '76389', 'West', '1294', 'Office Supplies', 'Storage', 'Product D', '813.29', '2', '0.06', '235.43');
INSERT INTO superstore_sales VALUES ('1812', '2023-09-26', '2023-09-27', 'First Class', '283', 'Jane Doe', 'Consumer', 'United States', 'Houston', 'CA', '34431', 'East', '1108', 'Office Supplies', 'Phones', 'Product A', '111.19', '9', '0.26', '144.95');
INSERT INTO superstore_sales VALUES ('1216', '2023-09-27', '2023-09-28', 'Standard Class', '200', 'Anna Brown', 'Home Office', 'United States', 'New York', 'FL', '52490', 'Central', '1169', 'Technology', 'Phones', 'Product D', '21.62', '6', '0.07', '93.01');
INSERT INTO superstore_sales VALUES ('1381', '2023-09-28', '2023-09-29', 'First Class', '296', 'John Smith', 'Corporate', 'United States', 'San Francisco', 'CA', '84684', 'East', '1529', 'Office Supplies', 'Binders', 'Product B', '966.05', '5', '0.12', '284.7');
INSERT INTO superstore_sales VALUES ('1024', '2023-09-29', '2023-09-30', 'Second Class', '211', 'Chris Martin', 'Home Office', 'United States', 'Chicago', 'FL', '46316', 'Central', '1684', 'Office Supplies', 'Tables', 'Product C', '611.59', '5', '0.14', '282.47');
INSERT INTO superstore_sales VALUES ('1067', '2023-09-30', '2023-10-01', 'First Class', '326', 'Alice Johnson', 'Consumer', 'United States', 'Houston', 'CA', '83278', 'West', '1658', 'Furniture', 'Storage', 'Product D', '376.06', '2', '0.04', '105.11');
INSERT INTO superstore_sales VALUES ('1978', '2023-10-01', '2023-10-02', 'Second Class', '367', 'Anna Brown', 'Corporate', 'United States', 'San Francisco', 'TX', '87707', 'Central', '1447', 'Furniture', 'Art', 'Product B', '462.03', '2', '0.22', '-38.69');
INSERT INTO superstore_sales VALUES ('1771', '2023-10-02', '2023-10-03', 'Standard Class', '197', 'Alice Johnson', 'Home Office', 'United States', 'Los Angeles', 'IL', '66315', 'South', '1390', 'Office Supplies', 'Art', 'Product B', '114.44', '9', '0.03', '113.29');
INSERT INTO superstore_sales VALUES ('1234', '2023-10-03', '2023-10-04', 'Standard Class', '338', 'John Smith', 'Corporate', 'United States', 'Chicago', 'TX', '98753', 'Central', '1975', 'Office Supplies', 'Tables', 'Product B', '38.16', '9', '0.26', '51.08');
INSERT INTO superstore_sales VALUES ('1716', '2023-10-04', '2023-10-05', 'Second Class', '468', 'Jane Doe', 'Consumer', 'United States', 'Los Angeles', 'NY', '26999', 'South', '1822', 'Technology', 'Art', 'Product D', '759.01', '4', '0.16', '193.16');
INSERT INTO superstore_sales VALUES ('1998', '2023-10-05', '2023-10-06', 'Standard Class', '111', 'Anna Brown', 'Home Office', 'United States', 'Los Angeles', 'CA', '34201', 'East', '1700', 'Furniture', 'Art', 'Product A', '540.52', '3', '0.19', '65.78');
INSERT INTO superstore_sales VALUES ('1291', '2023-10-06', '2023-10-07', 'First Class', '125', 'John Smith', 'Corporate', 'United States', 'Houston', 'NY', '68392', 'South', '1423', 'Office Supplies', 'Accessories', 'Product D', '900.12', '7', '0.25', '-91.33');
INSERT INTO superstore_sales VALUES ('1726', '2023-10-07', '2023-10-08', 'Standard Class', '197', 'John Smith', 'Corporate', 'United States', 'San Francisco', 'TX', '94762', 'East', '1384', 'Technology', 'Phones', 'Product D', '615.51', '4', '0.1', '225.75');
INSERT INTO superstore_sales VALUES ('1701', '2023-10-08', '2023-10-09', 'Same Day', '451', 'Jane Doe', 'Consumer', 'United States', 'Chicago', 'CA', '63044', 'East', '1293', 'Furniture', 'Chairs', 'Product D', '473.49', '1', '0.29', '216.11');
INSERT INTO superstore_sales VALUES ('1709', '2023-10-09', '2023-10-10', 'Second Class', '401', 'Jane Doe', 'Consumer', 'United States', 'Houston', 'FL', '20709', 'Central', '1548', 'Technology', 'Binders', 'Product C', '600.43', '1', '0.18', '155.23');
INSERT INTO superstore_sales VALUES ('1727', '2023-10-10', '2023-10-11', 'First Class', '362', 'John Smith', 'Consumer', 'United States', 'New York', 'IL', '91614', 'East', '1135', 'Office Supplies', 'Phones', 'Product C', '644.92', '6', '0.04', '227.67');
INSERT INTO superstore_sales VALUES ('1555', '2023-10-11', '2023-10-12', 'Standard Class', '189', 'Jane Doe', 'Home Office', 'United States', 'Chicago', 'TX', '78765', 'East', '1557', 'Office Supplies', 'Phones', 'Product A', '344.1', '9', '0.09', '-83.23');
INSERT INTO superstore_sales VALUES ('1032', '2023-10-12', '2023-10-13', 'First Class', '444', 'Anna Brown', 'Home Office', 'United States', 'Houston', 'TX', '13969', 'South', '1511', 'Office Supplies', 'Phones', 'Product A', '634.42', '8', '0.15', '202.44');
INSERT INTO superstore_sales VALUES ('1011', '2023-10-13', '2023-10-14', 'Same Day', '138', 'Jane Doe', 'Corporate', 'United States', 'Chicago', 'IL', '52190', 'West', '1907', 'Furniture', 'Bookcases', 'Product A', '345.94', '6', '0.21', '81.95');
INSERT INTO superstore_sales VALUES ('1616', '2023-10-14', '2023-10-15', 'Standard Class', '151', 'Anna Brown', 'Corporate', 'United States', 'Chicago', 'TX', '53264', 'South', '1644', 'Furniture', 'Binders', 'Product A', '908.75', '9', '0.06', '-45.85');
INSERT INTO superstore_sales VALUES ('1212', '2023-10-15', '2023-10-16', 'Standard Class', '116', 'John Smith', 'Home Office', 'United States', 'Houston', 'CA', '79025', 'South', '1710', 'Office Supplies', 'Phones', 'Product B', '230.44', '1', '0.13', '-62.17');
INSERT INTO superstore_sales VALUES ('1138', '2023-10-16', '2023-10-17', 'Second Class', '318', 'Chris Martin', 'Corporate', 'United States', 'Los Angeles', 'CA', '27056', 'East', '1550', 'Technology', 'Accessories', 'Product B', '251.31', '2', '0.03', '175.65');
INSERT INTO superstore_sales VALUES ('1694', '2023-10-17', '2023-10-18', 'Standard Class', '359', 'John Smith', 'Home Office', 'United States', 'Los Angeles', 'TX', '76301', 'East', '1892', 'Office Supplies', 'Tables', 'Product A', '742.74', '3', '0.05', '159.4');
INSERT INTO superstore_sales VALUES ('1421', '2023-10-18', '2023-10-19', 'Second Class', '446', 'John Smith', 'Corporate', 'United States', 'Houston', 'CA', '98805', 'South', '1808', 'Office Supplies', 'Chairs', 'Product B', '779.62', '1', '0.23', '-61.12');
INSERT INTO superstore_sales VALUES ('1637', '2023-10-19', '2023-10-20', 'Standard Class', '222', 'John Smith', 'Home Office', 'United States', 'Chicago', 'TX', '75733', 'Central', '1830', 'Furniture', 'Storage', 'Product D', '519.63', '9', '0.18', '117.26');
INSERT INTO superstore_sales VALUES ('1668', '2023-10-20', '2023-10-21', 'First Class', '358', 'Anna Brown', 'Corporate', 'United States', 'Los Angeles', 'TX', '85678', 'West', '1838', 'Technology', 'Tables', 'Product B', '687.86', '3', '0.14', '271.89');
INSERT INTO superstore_sales VALUES ('1623', '2023-10-21', '2023-10-22', 'Same Day', '233', 'Chris Martin', 'Corporate', 'United States', 'San Francisco', 'FL', '66822', 'East', '1976', 'Technology', 'Binders', 'Product D', '341.82', '9', '0.0', '218.32');
INSERT INTO superstore_sales VALUES ('1488', '2023-10-22', '2023-10-23', 'Same Day', '477', 'Jane Doe', 'Home Office', 'United States', 'New York', 'IL', '37753', 'East', '1674', 'Furniture', 'Chairs', 'Product A', '238.97', '1', '0.02', '285.1');
INSERT INTO superstore_sales VALUES ('1770', '2023-10-23', '2023-10-24', 'Standard Class', '371', 'Alice Johnson', 'Consumer', 'United States', 'New York', 'CA', '22975', 'South', '1848', 'Technology', 'Phones', 'Product B', '646.01', '7', '0.23', '220.39');
INSERT INTO superstore_sales VALUES ('1539', '2023-10-24', '2023-10-25', 'First Class', '434', 'Anna Brown', 'Home Office', 'United States', 'San Francisco', 'IL', '36098', 'Central', '1736', 'Technology', 'Chairs', 'Product A', '529.84', '7', '0.03', '162.04');
INSERT INTO superstore_sales VALUES ('1979', '2023-10-25', '2023-10-26', 'Second Class', '280', 'John Smith', 'Home Office', 'United States', 'San Francisco', 'FL', '30853', 'East', '1412', 'Office Supplies', 'Phones', 'Product C', '892.85', '7', '0.23', '264.7');
INSERT INTO superstore_sales VALUES ('1217', '2023-10-26', '2023-10-27', 'Same Day', '459', 'John Smith', 'Consumer', 'United States', 'San Francisco', 'NY', '82583', 'East', '1996', 'Technology', 'Binders', 'Product D', '492.92', '4', '0.22', '168.95');
INSERT INTO superstore_sales VALUES ('1663', '2023-10-27', '2023-10-28', 'Same Day', '474', 'Alice Johnson', 'Corporate', 'United States', 'Chicago', 'TX', '65294', 'South', '1928', 'Furniture', 'Storage', 'Product C', '117.79', '5', '0.15', '100.1');
INSERT INTO superstore_sales VALUES ('1821', '2023-10-28', '2023-10-29', 'Standard Class', '363', 'Jane Doe', 'Consumer', 'United States', 'Los Angeles', 'CA', '58469', 'East', '1817', 'Office Supplies', 'Bookcases', 'Product D', '792.93', '4', '0.11', '-63.13');
INSERT INTO superstore_sales VALUES ('1307', '2023-10-29', '2023-10-30', 'First Class', '279', 'Chris Martin', 'Consumer', 'United States', 'San Francisco', 'NY', '35630', 'West', '1264', 'Office Supplies', 'Storage', 'Product A', '376.52', '1', '0.27', '66.01');
INSERT INTO superstore_sales VALUES ('1174', '2023-10-30', '2023-10-31', 'Standard Class', '458', 'John Smith', 'Consumer', 'United States', 'Houston', 'NY', '33560', 'West', '1789', 'Furniture', 'Storage', 'Product B', '258.69', '4', '0.05', '-25.09');
INSERT INTO superstore_sales VALUES ('1148', '2023-10-31', '2023-11-01', 'First Class', '349', 'Alice Johnson', 'Corporate', 'United States', 'New York', 'CA', '30077', 'West', '1050', 'Technology', 'Phones', 'Product D', '544.86', '7', '0.26', '249.08');
INSERT INTO superstore_sales VALUES ('1949', '2023-11-01', '2023-11-02', 'Standard Class', '283', 'John Smith', 'Home Office', 'United States', 'New York', 'NY', '62693', 'South', '1408', 'Office Supplies', 'Binders', 'Product A', '114.05', '7', '0.23', '71.31');
INSERT INTO superstore_sales VALUES ('1541', '2023-11-02', '2023-11-03', 'Same Day', '213', 'Alice Johnson', 'Consumer', 'United States', 'San Francisco', 'TX', '87049', 'South', '1400', 'Technology', 'Chairs', 'Product D', '62.53', '7', '0.2', '92.17');
INSERT INTO superstore_sales VALUES ('1579', '2023-11-03', '2023-11-04', 'First Class', '495', 'Jane Doe', 'Corporate', 'United States', 'Los Angeles', 'TX', '39421', 'East', '1085', 'Technology', 'Accessories', 'Product C', '621.95', '6', '0.28', '205.51');
INSERT INTO superstore_sales VALUES ('1547', '2023-11-04', '2023-11-05', 'First Class', '305', 'Alice Johnson', 'Corporate', 'United States', 'San Francisco', 'TX', '40784', 'Central', '1266', 'Technology', 'Chairs', 'Product D', '48.07', '1', '0.3', '242.44');
INSERT INTO superstore_sales VALUES ('1807', '2023-11-05', '2023-11-06', 'Standard Class', '478', 'John Smith', 'Home Office', 'United States', 'Houston', 'FL', '12651', 'Central', '1160', 'Furniture', 'Bookcases', 'Product C', '607.27', '2', '0.24', '55.14');
INSERT INTO superstore_sales VALUES ('1393', '2023-11-06', '2023-11-07', 'Standard Class', '411', 'Anna Brown', 'Home Office', 'United States', 'San Francisco', 'NY', '57154', 'East', '1392', 'Technology', 'Phones', 'Product A', '266.53', '5', '0.07', '56.8');
INSERT INTO superstore_sales VALUES ('1073', '2023-11-07', '2023-11-08', 'First Class', '188', 'Jane Doe', 'Consumer', 'United States', 'Chicago', 'TX', '62400', 'Central', '1187', 'Office Supplies', 'Bookcases', 'Product A', '965.84', '8', '0.21', '-43.82');
INSERT INTO superstore_sales VALUES ('1297', '2023-11-08', '2023-11-09', 'Second Class', '352', 'Alice Johnson', 'Corporate', 'United States', 'San Francisco', 'FL', '34025', 'South', '1485', 'Office Supplies', 'Accessories', 'Product A', '519.83', '3', '0.12', '83.06');
INSERT INTO superstore_sales VALUES ('1919', '2023-11-09', '2023-11-10', 'Same Day', '424', 'Anna Brown', 'Home Office', 'United States', 'Chicago', 'TX', '47447', 'Central', '1454', 'Furniture', 'Phones', 'Product B', '776.13', '7', '0.04', '8.2');
INSERT INTO superstore_sales VALUES ('1899', '2023-11-10', '2023-11-11', 'Second Class', '217', 'Chris Martin', 'Consumer', 'United States', 'Los Angeles', 'TX', '68847', 'Central', '1474', 'Office Supplies', 'Tables', 'Product A', '445.88', '1', '0.25', '-33.63');
INSERT INTO superstore_sales VALUES ('1814', '2023-11-11', '2023-11-12', 'Second Class', '471', 'Chris Martin', 'Corporate', 'United States', 'Los Angeles', 'CA', '62622', 'West', '1106', 'Technology', 'Tables', 'Product A', '941.21', '2', '0.1', '100.05');
INSERT INTO superstore_sales VALUES ('1730', '2023-11-12', '2023-11-13', 'Second Class', '285', 'Alice Johnson', 'Corporate', 'United States', 'Houston', 'TX', '41609', 'Central', '1731', 'Office Supplies', 'Chairs', 'Product D', '30.38', '2', '0.29', '58.43');
INSERT INTO superstore_sales VALUES ('1946', '2023-11-13', '2023-11-14', 'Standard Class', '449', 'Jane Doe', 'Home Office', 'United States', 'Los Angeles', 'TX', '48014', 'South', '1762', 'Furniture', 'Tables', 'Product B', '903.05', '1', '0.24', '178.25');
INSERT INTO superstore_sales VALUES ('1876', '2023-11-14', '2023-11-15', 'First Class', '202', 'John Smith', 'Corporate', 'United States', 'Chicago', 'TX', '16280', 'West', '1045', 'Technology', 'Bookcases', 'Product D', '109.87', '2', '0.24', '153.79');
INSERT INTO superstore_sales VALUES ('1771', '2023-11-15', '2023-11-16', 'Second Class', '495', 'Chris Martin', 'Corporate', 'United States', 'Los Angeles', 'TX', '82983', 'East', '1985', 'Technology', 'Storage', 'Product B', '35.22', '6', '0.25', '14.9');
INSERT INTO superstore_sales VALUES ('1799', '2023-11-16', '2023-11-17', 'Second Class', '306', 'Anna Brown', 'Home Office', 'United States', 'Chicago', 'TX', '79453', 'East', '1660', 'Furniture', 'Tables', 'Product D', '838.71', '1', '0.12', '255.85');
INSERT INTO superstore_sales VALUES ('1777', '2023-11-17', '2023-11-18', 'Same Day', '182', 'Anna Brown', 'Corporate', 'United States', 'Houston', 'IL', '34616', 'Central', '1468', 'Office Supplies', 'Tables', 'Product C', '517.1', '7', '0.02', '136.51');
INSERT INTO superstore_sales VALUES ('1394', '2023-11-18', '2023-11-19', 'Same Day', '336', 'Anna Brown', 'Corporate', 'United States', 'Chicago', 'IL', '86929', 'South', '1717', 'Technology', 'Accessories', 'Product C', '14.39', '2', '0.3', '11.07');
INSERT INTO superstore_sales VALUES ('1539', '2023-11-19', '2023-11-20', 'Second Class', '103', 'Chris Martin', 'Consumer', 'United States', 'San Francisco', 'FL', '68142', 'West', '1162', 'Office Supplies', 'Chairs', 'Product A', '107.19', '1', '0.29', '-60.47');
INSERT INTO superstore_sales VALUES ('1429', '2023-11-20', '2023-11-21', 'Same Day', '265', 'Alice Johnson', 'Corporate', 'United States', 'Los Angeles', 'FL', '40567', 'West', '1260', 'Technology', 'Binders', 'Product C', '142.45', '6', '0.14', '209.34');
INSERT INTO superstore_sales VALUES ('1199', '2023-11-21', '2023-11-22', 'Second Class', '491', 'Chris Martin', 'Home Office', 'United States', 'New York', 'FL', '65111', 'East', '1560', 'Furniture', 'Binders', 'Product C', '385.76', '7', '0.25', '78.64');
INSERT INTO superstore_sales VALUES ('1423', '2023-11-22', '2023-11-23', 'Same Day', '385', 'Jane Doe', 'Corporate', 'United States', 'San Francisco', 'IL', '70885', 'South', '1974', 'Office Supplies', 'Art', 'Product B', '927.9', '9', '0.14', '271.68');
INSERT INTO superstore_sales VALUES ('1061', '2023-11-23', '2023-11-24', 'First Class', '178', 'Jane Doe', 'Home Office', 'United States', 'Chicago', 'FL', '22248', 'West', '1536', 'Furniture', 'Art', 'Product D', '400.49', '7', '0.28', '296.47');
INSERT INTO superstore_sales VALUES ('1341', '2023-11-24', '2023-11-25', 'Standard Class', '367', 'Alice Johnson', 'Home Office', 'United States', 'San Francisco', 'CA', '68661', 'East', '1705', 'Furniture', 'Storage', 'Product B', '637.37', '1', '0.12', '202.2');
INSERT INTO superstore_sales VALUES ('1865', '2023-11-25', '2023-11-26', 'First Class', '111', 'Anna Brown', 'Corporate', 'United States', 'San Francisco', 'NY', '25147', 'Central', '1615', 'Technology', 'Chairs', 'Product B', '985.83', '2', '0.26', '-87.73');
INSERT INTO superstore_sales VALUES ('1044', '2023-11-26', '2023-11-27', 'Second Class', '372', 'Chris Martin', 'Home Office', 'United States', 'San Francisco', 'CA', '82123', 'West', '1811', 'Furniture', 'Chairs', 'Product C', '324.31', '8', '0.0', '197.75');
INSERT INTO superstore_sales VALUES ('1802', '2023-11-27', '2023-11-28', 'Second Class', '160', 'Alice Johnson', 'Consumer', 'United States', 'San Francisco', 'NY', '21940', 'East', '1205', 'Office Supplies', 'Storage', 'Product B', '695.48', '6', '0.1', '192.61');
INSERT INTO superstore_sales VALUES ('1930', '2023-11-28', '2023-11-29', 'Second Class', '223', 'John Smith', 'Home Office', 'United States', 'Chicago', 'NY', '66137', 'South', '1228', 'Technology', 'Binders', 'Product D', '871.84', '6', '0.18', '89.51');
INSERT INTO superstore_sales VALUES ('1088', '2023-11-29', '2023-11-30', 'Second Class', '203', 'Jane Doe', 'Consumer', 'United States', 'Los Angeles', 'TX', '98040', 'South', '1481', 'Technology', 'Chairs', 'Product C', '238.59', '1', '0.26', '121.66');
INSERT INTO superstore_sales VALUES ('1033', '2023-11-30', '2023-12-01', 'First Class', '291', 'John Smith', 'Home Office', 'United States', 'Los Angeles', 'FL', '12960', 'West', '1204', 'Furniture', 'Accessories', 'Product B', '116.71', '1', '0.03', '200.51');
INSERT INTO superstore_sales VALUES ('1645', '2023-12-01', '2023-12-02', 'Standard Class', '287', 'John Smith', 'Corporate', 'United States', 'San Francisco', 'NY', '70835', 'East', '1528', 'Technology', 'Phones', 'Product C', '513.43', '2', '0.02', '9.59');
INSERT INTO superstore_sales VALUES ('1232', '2023-12-02', '2023-12-03', 'Second Class', '229', 'Chris Martin', 'Home Office', 'United States', 'New York', 'TX', '88211', 'Central', '1057', 'Furniture', 'Bookcases', 'Product B', '941.27', '6', '0.24', '50.63');
INSERT INTO superstore_sales VALUES ('1767', '2023-12-03', '2023-12-04', 'First Class', '281', 'Alice Johnson', 'Home Office', 'United States', 'Los Angeles', 'CA', '48439', 'West', '1517', 'Technology', 'Chairs', 'Product C', '871.51', '7', '0.17', '286.06');
INSERT INTO superstore_sales VALUES ('1036', '2023-12-04', '2023-12-05', 'Same Day', '384', 'John Smith', 'Home Office', 'United States', 'Chicago', 'TX', '26805', 'West', '1993', 'Office Supplies', 'Tables', 'Product C', '224.96', '5', '0.04', '-95.84');
INSERT INTO superstore_sales VALUES ('1768', '2023-12-05', '2023-12-06', 'Second Class', '441', 'John Smith', 'Consumer', 'United States', 'Chicago', 'NY', '32010', 'West', '1379', 'Furniture', 'Accessories', 'Product D', '945.61', '9', '0.14', '130.84');
INSERT INTO superstore_sales VALUES ('1459', '2023-12-06', '2023-12-07', 'Same Day', '316', 'Anna Brown', 'Consumer', 'United States', 'Los Angeles', 'TX', '87224', 'West', '1735', 'Office Supplies', 'Chairs', 'Product D', '407.14', '6', '0.06', '110.91');
INSERT INTO superstore_sales VALUES ('1290', '2023-12-07', '2023-12-08', 'Second Class', '173', 'Anna Brown', 'Consumer', 'United States', 'Chicago', 'TX', '24906', 'East', '1008', 'Office Supplies', 'Binders', 'Product B', '856.51', '6', '0.23', '281.18');
INSERT INTO superstore_sales VALUES ('1197', '2023-12-08', '2023-12-09', 'Second Class', '492', 'John Smith', 'Consumer', 'United States', 'Chicago', 'CA', '62707', 'Central', '1033', 'Office Supplies', 'Bookcases', 'Product B', '115.73', '9', '0.24', '227.8');
INSERT INTO superstore_sales VALUES ('1894', '2023-12-09', '2023-12-10', 'First Class', '495', 'Chris Martin', 'Consumer', 'United States', 'Houston', 'CA', '75153', 'Central', '1310', 'Technology', 'Accessories', 'Product B', '418.44', '2', '0.13', '166.02');
INSERT INTO superstore_sales VALUES ('1949', '2023-12-10', '2023-12-11', 'Standard Class', '473', 'John Smith', 'Corporate', 'United States', 'Chicago', 'NY', '30995', 'East', '1320', 'Office Supplies', 'Art', 'Product A', '547.88', '3', '0.29', '88.6');
INSERT INTO superstore_sales VALUES ('1254', '2023-12-11', '2023-12-12', 'First Class', '437', 'Jane Doe', 'Home Office', 'United States', 'Los Angeles', 'TX', '96539', 'Central', '1416', 'Office Supplies', 'Bookcases', 'Product A', '604.16', '9', '0.19', '238.98');
INSERT INTO superstore_sales VALUES ('1080', '2023-12-12', '2023-12-13', 'First Class', '115', 'Alice Johnson', 'Home Office', 'United States', 'Los Angeles', 'IL', '24176', 'West', '1479', 'Technology', 'Bookcases', 'Product D', '895.3', '6', '0.08', '1.08');
INSERT INTO superstore_sales VALUES ('1446', '2023-12-13', '2023-12-14', 'Same Day', '231', 'Chris Martin', 'Corporate', 'United States', 'New York', 'TX', '36535', 'Central', '1770', 'Technology', 'Tables', 'Product D', '327.48', '7', '0.02', '195.77');
INSERT INTO superstore_sales VALUES ('1136', '2023-12-14', '2023-12-15', 'First Class', '206', 'Anna Brown', 'Corporate', 'United States', 'San Francisco', 'NY', '49730', 'South', '1490', 'Furniture', 'Bookcases', 'Product B', '141.39', '8', '0.21', '-44.17');
INSERT INTO superstore_sales VALUES ('1189', '2023-12-15', '2023-12-16', 'First Class', '313', 'Alice Johnson', 'Corporate', 'United States', 'Los Angeles', 'IL', '94736', 'West', '1155', 'Technology', 'Chairs', 'Product B', '478.01', '3', '0.18', '279.13');
INSERT INTO superstore_sales VALUES ('1129', '2023-12-16', '2023-12-17', 'First Class', '384', 'Jane Doe', 'Corporate', 'United States', 'Chicago', 'TX', '96582', 'South', '1720', 'Technology', 'Binders', 'Product A', '99.17', '5', '0.1', '149.1');
INSERT INTO superstore_sales VALUES ('1209', '2023-12-17', '2023-12-18', 'Standard Class', '414', 'Chris Martin', 'Consumer', 'United States', 'New York', 'CA', '23366', 'South', '1087', 'Furniture', 'Bookcases', 'Product D', '844.97', '7', '0.22', '-21.94');
INSERT INTO superstore_sales VALUES ('1368', '2023-12-18', '2023-12-19', 'Same Day', '313', 'Chris Martin', 'Home Office', 'United States', 'Houston', 'NY', '50559', 'West', '1834', 'Furniture', 'Phones', 'Product B', '533.06', '1', '0.01', '159.4');
INSERT INTO superstore_sales VALUES ('1291', '2023-12-19', '2023-12-20', 'Second Class', '178', 'Chris Martin', 'Corporate', 'United States', 'New York', 'TX', '52839', 'West', '1967', 'Furniture', 'Bookcases', 'Product B', '236.69', '4', '0.26', '175.65');
INSERT INTO superstore_sales VALUES ('1376', '2023-12-20', '2023-12-21', 'Second Class', '467', 'Anna Brown', 'Corporate', 'United States', 'Chicago', 'CA', '35287', 'West', '1741', 'Office Supplies', 'Chairs', 'Product D', '139.37', '4', '0.06', '95.15');
INSERT INTO superstore_sales VALUES ('1347', '2023-12-21', '2023-12-22', 'Same Day', '421', 'Alice Johnson', 'Home Office', 'United States', 'Los Angeles', 'NY', '29777', 'South', '1045', 'Technology', 'Phones', 'Product D', '595.17', '7', '0.01', '45.04');
INSERT INTO superstore_sales VALUES ('1168', '2023-12-22', '2023-12-23', 'Same Day', '432', 'Jane Doe', 'Corporate', 'United States', 'New York', 'IL', '26866', 'East', '1660', 'Technology', 'Accessories', 'Product A', '754.16', '4', '0.27', '184.18');
INSERT INTO superstore_sales VALUES ('1884', '2023-12-23', '2023-12-24', 'First Class', '367', 'John Smith', 'Consumer', 'United States', 'Chicago', 'IL', '56861', 'Central', '1704', 'Furniture', 'Phones', 'Product C', '393.2', '2', '0.19', '-32.0');
INSERT INTO superstore_sales VALUES ('1804', '2023-12-24', '2023-12-25', 'Same Day', '381', 'John Smith', 'Consumer', 'United States', 'Houston', 'NY', '34504', 'West', '1647', 'Furniture', 'Storage', 'Product A', '782.81', '8', '0.04', '44.79');
INSERT INTO superstore_sales VALUES ('1176', '2023-12-25', '2023-12-26', 'First Class', '459', 'John Smith', 'Consumer', 'United States', 'New York', 'CA', '88878', 'South', '1473', 'Technology', 'Bookcases', 'Product D', '677.54', '4', '0.19', '16.02');
INSERT INTO superstore_sales VALUES ('1537', '2023-12-26', '2023-12-27', 'First Class', '367', 'Alice Johnson', 'Corporate', 'United States', 'Chicago', 'IL', '17509', 'West', '1792', 'Furniture', 'Art', 'Product D', '59.25', '4', '0.27', '-43.62');
INSERT INTO superstore_sales VALUES ('1323', '2023-12-27', '2023-12-28', 'Second Class', '446', 'Chris Martin', 'Home Office', 'United States', 'San Francisco', 'NY', '95585', 'South', '1193', 'Technology', 'Bookcases', 'Product B', '722.46', '4', '0.18', '167.53');
INSERT INTO superstore_sales VALUES ('1871', '2023-12-28', '2023-12-29', 'Same Day', '337', 'Jane Doe', 'Corporate', 'United States', 'Los Angeles', 'TX', '12979', 'East', '1611', 'Technology', 'Bookcases', 'Product B', '579.0', '2', '0.23', '166.49');
INSERT INTO superstore_sales VALUES ('1508', '2023-12-29', '2023-12-30', 'Second Class', '485', 'Anna Brown', 'Home Office', 'United States', 'Chicago', 'NY', '68246', 'Central', '1318', 'Technology', 'Accessories', 'Product D', '919.1', '2', '0.27', '256.25');
INSERT INTO superstore_sales VALUES ('1803', '2023-12-30', '2023-12-31', 'Same Day', '244', 'Chris Martin', 'Consumer', 'United States', 'San Francisco', 'NY', '85800', 'East', '1094', 'Furniture', 'Bookcases', 'Product C', '102.62', '1', '0.27', '51.58');
INSERT INTO superstore_sales VALUES ('1114', '2023-12-31', '2024-01-01', 'Second Class', '357', 'Anna Brown', 'Consumer', 'United States', 'Los Angeles', 'NY', '64306', 'West', '1418', 'Technology', 'Art', 'Product B', '183.42', '7', '0.04', '-65.36');
INSERT INTO superstore_sales VALUES ('1798', '2024-01-01', '2024-01-02', 'First Class', '116', 'Chris Martin', 'Home Office', 'United States', 'Los Angeles', 'CA', '74503', 'South', '1220', 'Office Supplies', 'Accessories', 'Product B', '667.67', '9', '0.23', '56.56');
INSERT INTO superstore_sales VALUES ('1029', '2024-01-02', '2024-01-03', 'First Class', '133', 'John Smith', 'Corporate', 'United States', 'Los Angeles', 'FL', '23928', 'West', '1226', 'Technology', 'Art', 'Product A', '854.82', '9', '0.26', '81.53');
INSERT INTO superstore_sales VALUES ('1753', '2024-01-03', '2024-01-04', 'Second Class', '133', 'Chris Martin', 'Corporate', 'United States', 'San Francisco', 'TX', '10358', 'Central', '1917', 'Furniture', 'Phones', 'Product A', '216.35', '2', '0.29', '-47.1');
INSERT INTO superstore_sales VALUES ('1289', '2024-01-04', '2024-01-05', 'First Class', '272', 'John Smith', 'Corporate', 'United States', 'New York', 'CA', '60909', 'East', '1343', 'Technology', 'Art', 'Product B', '948.89', '9', '0.26', '267.88');
INSERT INTO superstore_sales VALUES ('1146', '2024-01-05', '2024-01-06', 'Standard Class', '396', 'John Smith', 'Consumer', 'United States', 'San Francisco', 'NY', '52501', 'Central', '1913', 'Office Supplies', 'Art', 'Product B', '888.52', '5', '0.2', '-92.74');
INSERT INTO superstore_sales VALUES ('1273', '2024-01-06', '2024-01-07', 'Second Class', '428', 'Jane Doe', 'Corporate', 'United States', 'San Francisco', 'TX', '72704', 'West', '1325', 'Technology', 'Bookcases', 'Product B', '107.88', '4', '0.08', '42.5');
INSERT INTO superstore_sales VALUES ('1221', '2024-01-07', '2024-01-08', 'Second Class', '305', 'Jane Doe', 'Home Office', 'United States', 'Chicago', 'CA', '78505', 'East', '1895', 'Office Supplies', 'Chairs', 'Product B', '945.77', '5', '0.09', '43.3');
INSERT INTO superstore_sales VALUES ('1340', '2024-01-08', '2024-01-09', 'Same Day', '206', 'Anna Brown', 'Corporate', 'United States', 'Chicago', 'IL', '32254', 'South', '1771', 'Office Supplies', 'Binders', 'Product D', '248.95', '9', '0.24', '291.71');
INSERT INTO superstore_sales VALUES ('1509', '2024-01-09', '2024-01-10', 'First Class', '183', 'Anna Brown', 'Corporate', 'United States', 'Houston', 'TX', '16182', 'West', '1345', 'Technology', 'Binders', 'Product C', '630.19', '4', '0.12', '-6.44');
INSERT INTO superstore_sales VALUES ('1514', '2024-01-10', '2024-01-11', 'Standard Class', '342', 'Alice Johnson', 'Home Office', 'United States', 'San Francisco', 'FL', '74827', 'South', '1149', 'Furniture', 'Bookcases', 'Product A', '698.05', '1', '0.25', '132.75');
INSERT INTO superstore_sales VALUES ('1069', '2024-01-11', '2024-01-12', 'Same Day', '424', 'Alice Johnson', 'Home Office', 'United States', 'San Francisco', 'FL', '77790', 'Central', '1699', 'Technology', 'Tables', 'Product A', '337.16', '8', '0.14', '268.41');
INSERT INTO superstore_sales VALUES ('1357', '2024-01-12', '2024-01-13', 'Second Class', '250', 'Anna Brown', 'Consumer', 'United States', 'Houston', 'TX', '62297', 'West', '1646', 'Office Supplies', 'Binders', 'Product B', '71.34', '2', '0.2', '11.3');
INSERT INTO superstore_sales VALUES ('1908', '2024-01-13', '2024-01-14', 'Standard Class', '164', 'Jane Doe', 'Consumer', 'United States', 'San Francisco', 'TX', '38143', 'South', '1701', 'Technology', 'Accessories', 'Product B', '680.76', '1', '0.29', '110.58');
INSERT INTO superstore_sales VALUES ('1556', '2024-01-14', '2024-01-15', 'Standard Class', '329', 'John Smith', 'Corporate', 'United States', 'San Francisco', 'NY', '48834', 'East', '1723', 'Technology', 'Art', 'Product D', '130.64', '9', '0.06', '207.54');
INSERT INTO superstore_sales VALUES ('1885', '2024-01-15', '2024-01-16', 'First Class', '387', 'Alice Johnson', 'Corporate', 'United States', 'Houston', 'NY', '59180', 'South', '1022', 'Furniture', 'Tables', 'Product B', '40.58', '2', '0.09', '-23.91');
INSERT INTO superstore_sales VALUES ('1765', '2024-01-16', '2024-01-17', 'Second Class', '179', 'Jane Doe', 'Consumer', 'United States', 'Houston', 'NY', '60575', 'South', '1535', 'Office Supplies', 'Chairs', 'Product A', '749.54', '6', '0.13', '290.87');
INSERT INTO superstore_sales VALUES ('1322', '2024-01-17', '2024-01-18', 'Same Day', '183', 'John Smith', 'Corporate', 'United States', 'Houston', 'TX', '10647', 'South', '1085', 'Furniture', 'Storage', 'Product B', '119.72', '4', '0.24', '-72.17');
INSERT INTO superstore_sales VALUES ('1623', '2024-01-18', '2024-01-19', 'Standard Class', '371', 'Alice Johnson', 'Corporate', 'United States', 'Los Angeles', 'FL', '15791', 'West', '1076', 'Furniture', 'Phones', 'Product D', '813.06', '1', '0.25', '98.32');
INSERT INTO superstore_sales VALUES ('1091', '2024-01-19', '2024-01-20', 'Second Class', '407', 'Jane Doe', 'Home Office', 'United States', 'Chicago', 'IL', '17339', 'Central', '1662', 'Technology', 'Tables', 'Product B', '989.19', '4', '0.25', '147.33');
INSERT INTO superstore_sales VALUES ('1341', '2024-01-20', '2024-01-21', 'First Class', '496', 'Anna Brown', 'Corporate', 'United States', 'Houston', 'FL', '40159', 'South', '1060', 'Technology', 'Chairs', 'Product C', '409.65', '6', '0.1', '-21.4');
INSERT INTO superstore_sales VALUES ('1423', '2024-01-21', '2024-01-22', 'Second Class', '273', 'Jane Doe', 'Home Office', 'United States', 'Los Angeles', 'NY', '78380', 'West', '1906', 'Office Supplies', 'Tables', 'Product D', '649.56', '6', '0.03', '159.21');
INSERT INTO superstore_sales VALUES ('1551', '2024-01-22', '2024-01-23', 'First Class', '110', 'Alice Johnson', 'Consumer', 'United States', 'Chicago', 'CA', '88206', 'West', '1718', 'Office Supplies', 'Binders', 'Product A', '930.64', '2', '0.04', '-9.55');
INSERT INTO superstore_sales VALUES ('1971', '2024-01-23', '2024-01-24', 'Second Class', '205', 'John Smith', 'Corporate', 'United States', 'Houston', 'FL', '18374', 'Central', '1185', 'Office Supplies', 'Art', 'Product C', '917.73', '4', '0.05', '-20.2');
INSERT INTO superstore_sales VALUES ('1662', '2024-01-24', '2024-01-25', 'Same Day', '436', 'Alice Johnson', 'Home Office', 'United States', 'San Francisco', 'NY', '16262', 'Central', '1041', 'Office Supplies', 'Accessories', 'Product D', '319.72', '6', '0.2', '85.23');
INSERT INTO superstore_sales VALUES ('1414', '2024-01-25', '2024-01-26', 'Second Class', '170', 'Chris Martin', 'Home Office', 'United States', 'San Francisco', 'TX', '38758', 'South', '1581', 'Furniture', 'Chairs', 'Product B', '36.89', '2', '0.17', '261.6');
INSERT INTO superstore_sales VALUES ('1657', '2024-01-26', '2024-01-27', 'Same Day', '121', 'Anna Brown', 'Home Office', 'United States', 'Chicago', 'IL', '41289', 'South', '1679', 'Office Supplies', 'Chairs', 'Product C', '294.87', '1', '0.05', '230.82');
INSERT INTO superstore_sales VALUES ('1710', '2024-01-27', '2024-01-28', 'First Class', '322', 'Chris Martin', 'Home Office', 'United States', 'New York', 'CA', '65794', 'West', '1757', 'Office Supplies', 'Accessories', 'Product C', '194.02', '4', '0.14', '88.64');
INSERT INTO superstore_sales VALUES ('1967', '2024-01-28', '2024-01-29', 'Standard Class', '295', 'Alice Johnson', 'Corporate', 'United States', 'Chicago', 'FL', '23436', 'Central', '1883', 'Technology', 'Tables', 'Product A', '362.29', '5', '0.15', '270.71');
INSERT INTO superstore_sales VALUES ('1274', '2024-01-29', '2024-01-30', 'Standard Class', '436', 'Alice Johnson', 'Consumer', 'United States', 'Los Angeles', 'NY', '12624', 'East', '1458', 'Furniture', 'Art', 'Product C', '291.25', '6', '0.23', '78.79');
INSERT INTO superstore_sales VALUES ('1860', '2024-01-30', '2024-01-31', 'Same Day', '420', 'Jane Doe', 'Home Office', 'United States', 'San Francisco', 'FL', '77652', 'West', '1445', 'Office Supplies', 'Bookcases', 'Product B', '844.62', '7', '0.17', '185.78');
INSERT INTO superstore_sales VALUES ('1043', '2024-01-31', '2024-02-01', 'Second Class', '229', 'Jane Doe', 'Consumer', 'United States', 'San Francisco', 'IL', '32496', 'South', '1346', 'Furniture', 'Chairs', 'Product D', '529.22', '6', '0.11', '94.54');
INSERT INTO superstore_sales VALUES ('1083', '2024-02-01', '2024-02-02', 'Second Class', '406', 'Chris Martin', 'Home Office', 'United States', 'Houston', 'CA', '31712', 'Central', '1410', 'Technology', 'Phones', 'Product B', '138.1', '4', '0.28', '117.73');
INSERT INTO superstore_sales VALUES ('1433', '2024-02-02', '2024-02-03', 'Second Class', '452', 'Jane Doe', 'Home Office', 'United States', 'Los Angeles', 'FL', '38154', 'West', '1723', 'Furniture', 'Art', 'Product D', '391.91', '2', '0.15', '228.68');
INSERT INTO superstore_sales VALUES ('1809', '2024-02-03', '2024-02-04', 'Standard Class', '463', 'Jane Doe', 'Home Office', 'United States', 'New York', 'IL', '41434', 'East', '1174', 'Furniture', 'Bookcases', 'Product B', '669.29', '3', '0.26', '184.01');
INSERT INTO superstore_sales VALUES ('1093', '2024-02-04', '2024-02-05', 'First Class', '438', 'Chris Martin', 'Consumer', 'United States', 'Los Angeles', 'CA', '79031', 'East', '1628', 'Office Supplies', 'Phones', 'Product B', '884.15', '5', '0.13', '67.02');
INSERT INTO superstore_sales VALUES ('1174', '2024-02-05', '2024-02-06', 'First Class', '285', 'Jane Doe', 'Consumer', 'United States', 'Los Angeles', 'FL', '17334', 'Central', '1144', 'Furniture', 'Phones', 'Product A', '466.57', '1', '0.0', '227.31');
INSERT INTO superstore_sales VALUES ('1405', '2024-02-06', '2024-02-07', 'First Class', '371', 'Chris Martin', 'Consumer', 'United States', 'Los Angeles', 'NY', '31942', 'West', '1641', 'Office Supplies', 'Accessories', 'Product B', '918.97', '2', '0.18', '201.51');
INSERT INTO superstore_sales VALUES ('1201', '2024-02-07', '2024-02-08', 'Standard Class', '499', 'John Smith', 'Corporate', 'United States', 'Los Angeles', 'IL', '50700', 'East', '1211', 'Technology', 'Chairs', 'Product A', '798.36', '6', '0.24', '222.06');
INSERT INTO superstore_sales VALUES ('1857', '2024-02-08', '2024-02-09', 'First Class', '128', 'Chris Martin', 'Consumer', 'United States', 'New York', 'NY', '15117', 'East', '1334', 'Office Supplies', 'Art', 'Product D', '85.11', '3', '0.09', '16.19');
INSERT INTO superstore_sales VALUES ('1498', '2024-02-09', '2024-02-10', 'Same Day', '427', 'Jane Doe', 'Corporate', 'United States', 'Los Angeles', 'IL', '52231', 'West', '1521', 'Technology', 'Accessories', 'Product D', '814.73', '2', '0.21', '214.39');
INSERT INTO superstore_sales VALUES ('1480', '2024-02-10', '2024-02-11', 'Same Day', '383', 'Anna Brown', 'Corporate', 'United States', 'New York', 'NY', '30608', 'South', '1831', 'Technology', 'Storage', 'Product A', '100.6', '9', '0.14', '68.14');
INSERT INTO superstore_sales VALUES ('1987', '2024-02-11', '2024-02-12', 'Standard Class', '316', 'Anna Brown', 'Consumer', 'United States', 'Chicago', 'NY', '74265', 'East', '1492', 'Office Supplies', 'Chairs', 'Product A', '916.06', '4', '0.11', '98.34');
INSERT INTO superstore_sales VALUES ('1329', '2024-02-12', '2024-02-13', 'Second Class', '413', 'Chris Martin', 'Home Office', 'United States', 'Los Angeles', 'FL', '79036', 'East', '1319', 'Office Supplies', 'Phones', 'Product B', '720.66', '4', '0.02', '18.99');
INSERT INTO superstore_sales VALUES ('1540', '2024-02-13', '2024-02-14', 'First Class', '414', 'Anna Brown', 'Home Office', 'United States', 'Houston', 'FL', '23364', 'East', '1444', 'Furniture', 'Binders', 'Product D', '240.66', '8', '0.11', '3.81');
INSERT INTO superstore_sales VALUES ('1209', '2024-02-14', '2024-02-15', 'First Class', '316', 'Anna Brown', 'Corporate', 'United States', 'New York', 'NY', '56289', 'East', '1163', 'Office Supplies', 'Art', 'Product A', '177.32', '5', '0.24', '-82.62');
INSERT INTO superstore_sales VALUES ('1617', '2024-02-15', '2024-02-16', 'Same Day', '369', 'Jane Doe', 'Home Office', 'United States', 'New York', 'IL', '17524', 'East', '1355', 'Technology', 'Tables', 'Product D', '465.04', '6', '0.24', '81.04');
INSERT INTO superstore_sales VALUES ('1954', '2024-02-16', '2024-02-17', 'Standard Class', '178', 'John Smith', 'Home Office', 'United States', 'Los Angeles', 'FL', '47551', 'Central', '1136', 'Furniture', 'Accessories', 'Product C', '653.19', '7', '0.25', '-78.61');
INSERT INTO superstore_sales VALUES ('1896', '2024-02-17', '2024-02-18', 'Second Class', '376', 'John Smith', 'Corporate', 'United States', 'Houston', 'FL', '86485', 'South', '1730', 'Office Supplies', 'Tables', 'Product C', '211.55', '3', '0.24', '196.22');
INSERT INTO superstore_sales VALUES ('1982', '2024-02-18', '2024-02-19', 'First Class', '171', 'Jane Doe', 'Consumer', 'United States', 'Houston', 'NY', '70905', 'East', '1568', 'Furniture', 'Storage', 'Product D', '957.54', '8', '0.23', '157.31');
INSERT INTO superstore_sales VALUES ('1575', '2024-02-19', '2024-02-20', 'Standard Class', '283', 'John Smith', 'Corporate', 'United States', 'Los Angeles', 'IL', '50358', 'East', '1371', 'Furniture', 'Bookcases', 'Product B', '157.38', '3', '0.25', '20.21');
INSERT INTO superstore_sales VALUES ('1016', '2024-02-20', '2024-02-21', 'Standard Class', '400', 'Chris Martin', 'Consumer', 'United States', 'Houston', 'NY', '85812', 'West', '1360', 'Technology', 'Accessories', 'Product C', '861.42', '7', '0.25', '-70.32');
INSERT INTO superstore_sales VALUES ('1106', '2024-02-21', '2024-02-22', 'First Class', '335', 'John Smith', 'Consumer', 'United States', 'New York', 'TX', '93332', 'West', '1173', 'Technology', 'Accessories', 'Product C', '268.88', '3', '0.07', '-13.42');
INSERT INTO superstore_sales VALUES ('1164', '2024-02-22', '2024-02-23', 'Second Class', '345', 'Anna Brown', 'Corporate', 'United States', 'Los Angeles', 'NY', '28171', 'Central', '1845', 'Technology', 'Phones', 'Product C', '55.11', '1', '0.21', '-82.75');
INSERT INTO superstore_sales VALUES ('1606', '2024-02-23', '2024-02-24', 'First Class', '191', 'Jane Doe', 'Home Office', 'United States', 'Los Angeles', 'IL', '11009', 'Central', '1189', 'Office Supplies', 'Binders', 'Product C', '607.82', '5', '0.3', '262.08');
INSERT INTO superstore_sales VALUES ('1536', '2024-02-24', '2024-02-25', 'Standard Class', '144', 'Alice Johnson', 'Consumer', 'United States', 'Los Angeles', 'FL', '90075', 'South', '1729', 'Technology', 'Storage', 'Product A', '441.06', '8', '0.04', '65.81');
INSERT INTO superstore_sales VALUES ('1628', '2024-02-25', '2024-02-26', 'Same Day', '371', 'Anna Brown', 'Corporate', 'United States', 'Chicago', 'FL', '17207', 'South', '1300', 'Furniture', 'Bookcases', 'Product C', '311.41', '2', '0.22', '138.66');
INSERT INTO superstore_sales VALUES ('1191', '2024-02-26', '2024-02-27', 'Same Day', '187', 'Anna Brown', 'Corporate', 'United States', 'Los Angeles', 'CA', '47085', 'East', '1948', 'Technology', 'Tables', 'Product D', '327.06', '7', '0.28', '31.57');
INSERT INTO superstore_sales VALUES ('1195', '2024-02-27', '2024-02-28', 'Standard Class', '177', 'Chris Martin', 'Corporate', 'United States', 'San Francisco', 'NY', '96763', 'West', '1526', 'Furniture', 'Art', 'Product B', '681.84', '4', '0.2', '109.96');
INSERT INTO superstore_sales VALUES ('1307', '2024-02-28', '2024-02-29', 'Standard Class', '195', 'Alice Johnson', 'Consumer', 'United States', 'San Francisco', 'FL', '14781', 'South', '1496', 'Technology', 'Storage', 'Product B', '476.82', '7', '0.1', '119.2');
INSERT INTO superstore_sales VALUES ('1136', '2024-02-29', '2024-03-01', 'Second Class', '210', 'Chris Martin', 'Home Office', 'United States', 'New York', 'TX', '19089', 'East', '1141', 'Furniture', 'Binders', 'Product C', '501.24', '1', '0.2', '187.97');
INSERT INTO superstore_sales VALUES ('1952', '2024-03-01', '2024-03-02', 'Standard Class', '310', 'Jane Doe', 'Home Office', 'United States', 'Chicago', 'FL', '80380', 'West', '1570', 'Office Supplies', 'Accessories', 'Product C', '61.55', '2', '0.28', '94.08');
INSERT INTO superstore_sales VALUES ('1859', '2024-03-02', '2024-03-03', 'Second Class', '232', 'Alice Johnson', 'Corporate', 'United States', 'Chicago', 'TX', '27583', 'Central', '1902', 'Furniture', 'Chairs', 'Product C', '702.61', '6', '0.28', '18.62');
INSERT INTO superstore_sales VALUES ('1093', '2024-03-03', '2024-03-04', 'Standard Class', '128', 'Jane Doe', 'Consumer', 'United States', 'Houston', 'FL', '71804', 'East', '1363', 'Furniture', 'Phones', 'Product D', '520.04', '8', '0.26', '30.98');
INSERT INTO superstore_sales VALUES ('1891', '2024-03-04', '2024-03-05', 'Second Class', '293', 'John Smith', 'Home Office', 'United States', 'Los Angeles', 'FL', '18618', 'East', '1252', 'Office Supplies', 'Storage', 'Product C', '797.53', '5', '0.17', '270.79');
INSERT INTO superstore_sales VALUES ('1750', '2024-03-05', '2024-03-06', 'First Class', '149', 'Anna Brown', 'Corporate', 'United States', 'San Francisco', 'IL', '13836', 'Central', '1584', 'Office Supplies', 'Storage', 'Product C', '547.69', '2', '0.17', '210.94');
INSERT INTO superstore_sales VALUES ('1087', '2024-03-06', '2024-03-07', 'Same Day', '443', 'John Smith', 'Home Office', 'United States', 'Chicago', 'FL', '70974', 'West', '1742', 'Technology', 'Chairs', 'Product A', '266.22', '9', '0.29', '31.62');
INSERT INTO superstore_sales VALUES ('1160', '2024-03-07', '2024-03-08', 'Second Class', '157', 'Jane Doe', 'Home Office', 'United States', 'San Francisco', 'TX', '19191', 'Central', '1051', 'Technology', 'Art', 'Product B', '134.95', '3', '0.2', '167.49');
INSERT INTO superstore_sales VALUES ('1147', '2024-03-08', '2024-03-09', 'Same Day', '308', 'Chris Martin', 'Consumer', 'United States', 'San Francisco', 'IL', '99551', 'East', '1782', 'Office Supplies', 'Phones', 'Product B', '516.76', '5', '0.01', '207.73');
INSERT INTO superstore_sales VALUES ('1584', '2024-03-09', '2024-03-10', 'First Class', '141', 'Anna Brown', 'Corporate', 'United States', 'Los Angeles', 'FL', '90493', 'South', '1622', 'Office Supplies', 'Tables', 'Product A', '954.8', '2', '0.08', '-26.44');
INSERT INTO superstore_sales VALUES ('1455', '2024-03-10', '2024-03-11', 'Second Class', '340', 'Anna Brown', 'Home Office', 'United States', 'San Francisco', 'IL', '95722', 'West', '1796', 'Office Supplies', 'Storage', 'Product D', '190.02', '9', '0.12', '180.91');
INSERT INTO superstore_sales VALUES ('1087', '2024-03-11', '2024-03-12', 'First Class', '294', 'Alice Johnson', 'Home Office', 'United States', 'New York', 'FL', '44344', 'East', '1157', 'Technology', 'Storage', 'Product D', '602.69', '1', '0.15', '133.97');
INSERT INTO superstore_sales VALUES ('1013', '2024-03-12', '2024-03-13', 'Second Class', '373', 'John Smith', 'Consumer', 'United States', 'New York', 'CA', '89696', 'Central', '1223', 'Technology', 'Bookcases', 'Product A', '580.47', '4', '0.09', '111.17');
INSERT INTO superstore_sales VALUES ('1314', '2024-03-13', '2024-03-14', 'Same Day', '120', 'Jane Doe', 'Consumer', 'United States', 'Chicago', 'IL', '38075', 'West', '1094', 'Office Supplies', 'Tables', 'Product D', '283.74', '3', '0.06', '65.24');
INSERT INTO superstore_sales VALUES ('1593', '2024-03-14', '2024-03-15', 'First Class', '266', 'Jane Doe', 'Home Office', 'United States', 'Chicago', 'TX', '53868', 'East', '1264', 'Office Supplies', 'Art', 'Product A', '799.81', '3', '0.21', '296.98');
INSERT INTO superstore_sales VALUES ('1120', '2024-03-15', '2024-03-16', 'Standard Class', '420', 'Jane Doe', 'Consumer', 'United States', 'Houston', 'CA', '71888', 'West', '1619', 'Furniture', 'Tables', 'Product B', '700.09', '2', '0.05', '222.04');
INSERT INTO superstore_sales VALUES ('1884', '2024-03-16', '2024-03-17', 'First Class', '234', 'Jane Doe', 'Consumer', 'United States', 'San Francisco', 'FL', '32079', 'South', '1450', 'Office Supplies', 'Phones', 'Product D', '515.87', '5', '0.03', '-58.47');
INSERT INTO superstore_sales VALUES ('1951', '2024-03-17', '2024-03-18', 'Second Class', '336', 'Chris Martin', 'Corporate', 'United States', 'Chicago', 'FL', '60220', 'South', '1056', 'Technology', 'Bookcases', 'Product D', '627.37', '8', '0.12', '32.31');
INSERT INTO superstore_sales VALUES ('1832', '2024-03-18', '2024-03-19', 'Same Day', '250', 'Jane Doe', 'Corporate', 'United States', 'Los Angeles', 'CA', '94861', 'South', '1335', 'Technology', 'Bookcases', 'Product B', '650.33', '8', '0.24', '112.92');
INSERT INTO superstore_sales VALUES ('1715', '2024-03-19', '2024-03-20', 'Standard Class', '179', 'Chris Martin', 'Home Office', 'United States', 'Chicago', 'NY', '41362', 'West', '1440', 'Office Supplies', 'Binders', 'Product C', '960.23', '7', '0.23', '215.27');
INSERT INTO superstore_sales VALUES ('1732', '2024-03-20', '2024-03-21', 'Standard Class', '174', 'Chris Martin', 'Home Office', 'United States', 'New York', 'CA', '87334', 'South', '1952', 'Technology', 'Storage', 'Product D', '210.67', '7', '0.07', '183.74');
INSERT INTO superstore_sales VALUES ('1932', '2024-03-21', '2024-03-22', 'First Class', '262', 'Alice Johnson', 'Home Office', 'United States', 'San Francisco', 'TX', '33932', 'West', '1988', 'Office Supplies', 'Accessories', 'Product A', '553.86', '4', '0.08', '32.34');
INSERT INTO superstore_sales VALUES ('1281', '2024-03-22', '2024-03-23', 'First Class', '268', 'Alice Johnson', 'Consumer', 'United States', 'New York', 'FL', '48808', 'West', '1866', 'Furniture', 'Binders', 'Product B', '844.56', '9', '0.3', '253.0');
INSERT INTO superstore_sales VALUES ('1800', '2024-03-23', '2024-03-24', 'Standard Class', '266', 'John Smith', 'Corporate', 'United States', 'Chicago', 'IL', '91836', 'Central', '1805', 'Technology', 'Binders', 'Product B', '128.28', '1', '0.02', '116.1');
INSERT INTO superstore_sales VALUES ('1426', '2024-03-24', '2024-03-25', 'First Class', '249', 'Jane Doe', 'Home Office', 'United States', 'Chicago', 'NY', '34403', 'East', '1682', 'Technology', 'Phones', 'Product C', '990.27', '5', '0.02', '242.34');
INSERT INTO superstore_sales VALUES ('1782', '2024-03-25', '2024-03-26', 'Same Day', '390', 'Chris Martin', 'Corporate', 'United States', 'New York', 'IL', '42478', 'South', '1102', 'Office Supplies', 'Storage', 'Product D', '762.02', '5', '0.03', '255.87');
INSERT INTO superstore_sales VALUES ('1470', '2024-03-26', '2024-03-27', 'Standard Class', '473', 'Alice Johnson', 'Consumer', 'United States', 'Houston', 'CA', '48861', 'East', '1357', 'Office Supplies', 'Tables', 'Product C', '256.04', '1', '0.1', '149.56');
INSERT INTO superstore_sales VALUES ('1284', '2024-03-27', '2024-03-28', 'Standard Class', '260', 'Jane Doe', 'Corporate', 'United States', 'Houston', 'FL', '64663', 'East', '1216', 'Technology', 'Storage', 'Product B', '975.03', '5', '0.23', '-41.94');
INSERT INTO superstore_sales VALUES ('1276', '2024-03-28', '2024-03-29', 'First Class', '483', 'Alice Johnson', 'Consumer', 'United States', 'Chicago', 'TX', '88133', 'Central', '1261', 'Office Supplies', 'Chairs', 'Product A', '236.21', '3', '0.27', '143.02');
INSERT INTO superstore_sales VALUES ('1978', '2024-03-29', '2024-03-30', 'First Class', '400', 'Alice Johnson', 'Home Office', 'United States', 'Houston', 'CA', '43269', 'South', '1910', 'Technology', 'Tables', 'Product D', '864.34', '3', '0.28', '-92.82');
INSERT INTO superstore_sales VALUES ('1324', '2024-03-30', '2024-03-31', 'Second Class', '199', 'John Smith', 'Consumer', 'United States', 'New York', 'CA', '37966', 'East', '1696', 'Furniture', 'Storage', 'Product D', '254.09', '4', '0.08', '154.34');
INSERT INTO superstore_sales VALUES ('1534', '2024-03-31', '2024-04-01', 'First Class', '397', 'Chris Martin', 'Consumer', 'United States', 'San Francisco', 'IL', '79128', 'West', '1226', 'Furniture', 'Bookcases', 'Product C', '820.32', '9', '0.14', '-19.88');
INSERT INTO superstore_sales VALUES ('1227', '2024-04-01', '2024-04-02', 'Standard Class', '349', 'Chris Martin', 'Consumer', 'United States', 'Chicago', 'IL', '88794', 'East', '1395', 'Technology', 'Binders', 'Product B', '333.45', '7', '0.03', '243.98');
INSERT INTO superstore_sales VALUES ('1890', '2024-04-02', '2024-04-03', 'Standard Class', '459', 'Alice Johnson', 'Consumer', 'United States', 'Los Angeles', 'FL', '27193', 'West', '1912', 'Office Supplies', 'Art', 'Product C', '996.24', '3', '0.17', '-65.44');
INSERT INTO superstore_sales VALUES ('1595', '2024-04-03', '2024-04-04', 'Second Class', '351', 'Jane Doe', 'Home Office', 'United States', 'Houston', 'IL', '15026', 'West', '1671', 'Technology', 'Chairs', 'Product A', '816.81', '8', '0.0', '17.1');
INSERT INTO superstore_sales VALUES ('1647', '2024-04-04', '2024-04-05', 'Second Class', '404', 'Chris Martin', 'Corporate', 'United States', 'Houston', 'NY', '60350', 'West', '1242', 'Office Supplies', 'Phones', 'Product B', '262.12', '2', '0.14', '-98.86');
INSERT INTO superstore_sales VALUES ('1968', '2024-04-05', '2024-04-06', 'Standard Class', '483', 'John Smith', 'Home Office', 'United States', 'Los Angeles', 'FL', '21517', 'Central', '1588', 'Technology', 'Tables', 'Product D', '763.55', '6', '0.29', '265.28');
INSERT INTO superstore_sales VALUES ('1573', '2024-04-06', '2024-04-07', 'Second Class', '238', 'Chris Martin', 'Home Office', 'United States', 'Los Angeles', 'TX', '35288', 'South', '1186', 'Furniture', 'Phones', 'Product A', '577.99', '5', '0.04', '248.3');
INSERT INTO superstore_sales VALUES ('1653', '2024-04-07', '2024-04-08', 'Standard Class', '424', 'John Smith', 'Consumer', 'United States', 'New York', 'NY', '89477', 'East', '1955', 'Furniture', 'Chairs', 'Product C', '240.15', '9', '0.06', '-6.26');
INSERT INTO superstore_sales VALUES ('1517', '2024-04-08', '2024-04-09', 'First Class', '373', 'Jane Doe', 'Home Office', 'United States', 'New York', 'CA', '11335', 'Central', '1448', 'Furniture', 'Art', 'Product A', '124.72', '9', '0.08', '-51.93');
INSERT INTO superstore_sales VALUES ('1256', '2024-04-09', '2024-04-10', 'Standard Class', '359', 'Alice Johnson', 'Consumer', 'United States', 'Houston', 'IL', '26341', 'South', '1957', 'Furniture', 'Storage', 'Product A', '449.63', '4', '0.26', '113.66');
INSERT INTO superstore_sales VALUES ('1136', '2024-04-10', '2024-04-11', 'Second Class', '201', 'Jane Doe', 'Corporate', 'United States', 'San Francisco', 'TX', '49492', 'West', '1866', 'Technology', 'Accessories', 'Product C', '175.14', '7', '0.27', '108.88');
INSERT INTO superstore_sales VALUES ('1207', '2024-04-11', '2024-04-12', 'First Class', '194', 'Jane Doe', 'Consumer', 'United States', 'New York', 'FL', '61719', 'South', '1576', 'Furniture', 'Binders', 'Product A', '843.74', '6', '0.28', '86.03');
INSERT INTO superstore_sales VALUES ('1463', '2024-04-12', '2024-04-13', 'Standard Class', '385', 'John Smith', 'Corporate', 'United States', 'New York', 'IL', '43016', 'East', '1632', 'Office Supplies', 'Binders', 'Product B', '328.71', '4', '0.07', '103.17');
INSERT INTO superstore_sales VALUES ('1949', '2024-04-13', '2024-04-14', 'Standard Class', '202', 'Jane Doe', 'Home Office', 'United States', 'Chicago', 'NY', '79717', 'Central', '1057', 'Furniture', 'Accessories', 'Product D', '166.87', '7', '0.14', '141.24');
INSERT INTO superstore_sales VALUES ('1139', '2024-04-14', '2024-04-15', 'Second Class', '223', 'Alice Johnson', 'Consumer', 'United States', 'Chicago', 'CA', '35686', 'Central', '1656', 'Office Supplies', 'Bookcases', 'Product C', '724.23', '4', '0.11', '279.93');
INSERT INTO superstore_sales VALUES ('1004', '2024-04-15', '2024-04-16', 'Second Class', '258', 'Chris Martin', 'Corporate', 'United States', 'New York', 'CA', '75555', 'West', '1895', 'Furniture', 'Storage', 'Product A', '250.54', '2', '0.18', '263.46');
INSERT INTO superstore_sales VALUES ('1423', '2024-04-16', '2024-04-17', 'Same Day', '303', 'John Smith', 'Home Office', 'United States', 'San Francisco', 'IL', '56406', 'West', '1644', 'Office Supplies', 'Storage', 'Product A', '688.26', '9', '0.09', '181.16');
INSERT INTO superstore_sales VALUES ('1348', '2024-04-17', '2024-04-18', 'Standard Class', '416', 'John Smith', 'Corporate', 'United States', 'Houston', 'FL', '13579', 'West', '1356', 'Furniture', 'Tables', 'Product C', '405.41', '3', '0.25', '260.81');
INSERT INTO superstore_sales VALUES ('1941', '2024-04-18', '2024-04-19', 'First Class', '235', 'Jane Doe', 'Consumer', 'United States', 'Los Angeles', 'FL', '63605', 'East', '1515', 'Technology', 'Bookcases', 'Product A', '395.2', '4', '0.27', '159.74');
INSERT INTO superstore_sales VALUES ('1282', '2024-04-19', '2024-04-20', 'Second Class', '279', 'Jane Doe', 'Corporate', 'United States', 'New York', 'IL', '60518', 'South', '1389', 'Furniture', 'Chairs', 'Product B', '112.84', '6', '0.27', '194.29');
INSERT INTO superstore_sales VALUES ('1586', '2024-04-20', '2024-04-21', 'First Class', '344', 'Jane Doe', 'Corporate', 'United States', 'San Francisco', 'IL', '79699', 'Central', '1734', 'Furniture', 'Art', 'Product D', '11.31', '8', '0.08', '145.76');
INSERT INTO superstore_sales VALUES ('1820', '2024-04-21', '2024-04-22', 'Same Day', '173', 'Anna Brown', 'Corporate', 'United States', 'San Francisco', 'IL', '47789', 'West', '1251', 'Technology', 'Storage', 'Product C', '946.85', '3', '0.15', '49.91');
INSERT INTO superstore_sales VALUES ('1433', '2024-04-22', '2024-04-23', 'Second Class', '268', 'Alice Johnson', 'Home Office', 'United States', 'San Francisco', 'TX', '21157', 'Central', '1050', 'Furniture', 'Art', 'Product D', '18.38', '4', '0.16', '72.0');
INSERT INTO superstore_sales VALUES ('1219', '2024-04-23', '2024-04-24', 'First Class', '343', 'Jane Doe', 'Corporate', 'United States', 'New York', 'IL', '35809', 'West', '1383', 'Technology', 'Storage', 'Product B', '744.12', '4', '0.29', '128.04');
INSERT INTO superstore_sales VALUES ('1819', '2024-04-24', '2024-04-25', 'Standard Class', '121', 'Anna Brown', 'Corporate', 'United States', 'New York', 'TX', '79359', 'South', '1170', 'Office Supplies', 'Bookcases', 'Product B', '685.68', '6', '0.13', '-2.17');
INSERT INTO superstore_sales VALUES ('1739', '2024-04-25', '2024-04-26', 'First Class', '194', 'John Smith', 'Corporate', 'United States', 'San Francisco', 'NY', '12523', 'Central', '1724', 'Office Supplies', 'Phones', 'Product D', '428.22', '8', '0.02', '-69.2');
INSERT INTO superstore_sales VALUES ('1873', '2024-04-26', '2024-04-27', 'Standard Class', '243', 'Alice Johnson', 'Corporate', 'United States', 'San Francisco', 'IL', '24593', 'South', '1432', 'Technology', 'Accessories', 'Product B', '545.42', '1', '0.19', '178.62');
INSERT INTO superstore_sales VALUES ('1786', '2024-04-27', '2024-04-28', 'First Class', '340', 'Anna Brown', 'Consumer', 'United States', 'New York', 'IL', '29105', 'West', '1813', 'Technology', 'Bookcases', 'Product C', '437.73', '2', '0.05', '95.15');
INSERT INTO superstore_sales VALUES ('1373', '2024-04-28', '2024-04-29', 'Standard Class', '373', 'John Smith', 'Consumer', 'United States', 'Houston', 'FL', '23675', 'Central', '1271', 'Technology', 'Chairs', 'Product C', '687.35', '8', '0.11', '-4.56');
INSERT INTO superstore_sales VALUES ('1290', '2024-04-29', '2024-04-30', 'Standard Class', '366', 'Chris Martin', 'Home Office', 'United States', 'New York', 'IL', '97143', 'East', '1229', 'Technology', 'Binders', 'Product B', '724.0', '9', '0.16', '75.73');
INSERT INTO superstore_sales VALUES ('1563', '2024-04-30', '2024-05-01', 'First Class', '245', 'Chris Martin', 'Corporate', 'United States', 'Chicago', 'TX', '78345', 'East', '1233', 'Technology', 'Art', 'Product C', '288.81', '7', '0.29', '-87.1');
INSERT INTO superstore_sales VALUES ('1670', '2024-05-01', '2024-05-02', 'Second Class', '231', 'Alice Johnson', 'Home Office', 'United States', 'San Francisco', 'TX', '58478', 'East', '1117', 'Furniture', 'Storage', 'Product B', '850.93', '4', '0.05', '90.44');
INSERT INTO superstore_sales VALUES ('1437', '2024-05-02', '2024-05-03', 'Standard Class', '173', 'Anna Brown', 'Corporate', 'United States', 'Houston', 'IL', '86214', 'South', '1732', 'Furniture', 'Phones', 'Product B', '524.6', '7', '0.26', '154.15');
INSERT INTO superstore_sales VALUES ('1826', '2024-05-03', '2024-05-04', 'Same Day', '385', 'Anna Brown', 'Consumer', 'United States', 'Los Angeles', 'TX', '36575', 'South', '1603', 'Technology', 'Phones', 'Product A', '846.26', '2', '0.01', '159.6');
INSERT INTO superstore_sales VALUES ('1939', '2024-05-04', '2024-05-05', 'First Class', '295', 'John Smith', 'Corporate', 'United States', 'New York', 'IL', '71180', 'West', '1183', 'Furniture', 'Storage', 'Product D', '932.69', '1', '0.01', '-15.6');
INSERT INTO superstore_sales VALUES ('1823', '2024-05-05', '2024-05-06', 'Same Day', '326', 'Chris Martin', 'Home Office', 'United States', 'San Francisco', 'NY', '79939', 'West', '1187', 'Technology', 'Bookcases', 'Product D', '502.75', '4', '0.14', '48.07');
INSERT INTO superstore_sales VALUES ('1508', '2024-05-06', '2024-05-07', 'Standard Class', '232', 'Chris Martin', 'Corporate', 'United States', 'New York', 'TX', '61629', 'Central', '1507', 'Office Supplies', 'Accessories', 'Product B', '764.41', '1', '0.17', '93.43');
INSERT INTO superstore_sales VALUES ('1786', '2024-05-07', '2024-05-08', 'Standard Class', '446', 'Jane Doe', 'Consumer', 'United States', 'Los Angeles', 'TX', '84984', 'Central', '1493', 'Technology', 'Accessories', 'Product C', '551.67', '5', '0.06', '282.66');
INSERT INTO superstore_sales VALUES ('1941', '2024-05-08', '2024-05-09', 'First Class', '200', 'Anna Brown', 'Home Office', 'United States', 'New York', 'TX', '95341', 'South', '1183', 'Technology', 'Storage', 'Product B', '426.88', '4', '0.06', '48.35');
INSERT INTO superstore_sales VALUES ('1855', '2024-05-09', '2024-05-10', 'Same Day', '234', 'Alice Johnson', 'Corporate', 'United States', 'Houston', 'TX', '67476', 'East', '1893', 'Office Supplies', 'Art', 'Product B', '397.58', '4', '0.22', '82.27');
INSERT INTO superstore_sales VALUES ('1449', '2024-05-10', '2024-05-11', 'Standard Class', '132', 'Chris Martin', 'Consumer', 'United States', 'Los Angeles', 'IL', '70088', 'West', '1673', 'Technology', 'Binders', 'Product A', '587.61', '7', '0.09', '298.48');
INSERT INTO superstore_sales VALUES ('1326', '2024-05-11', '2024-05-12', 'Same Day', '181', 'Alice Johnson', 'Corporate', 'United States', 'Chicago', 'IL', '25792', 'West', '1267', 'Office Supplies', 'Art', 'Product D', '388.02', '2', '0.21', '-64.01');
INSERT INTO superstore_sales VALUES ('1490', '2024-05-12', '2024-05-13', 'Second Class', '219', 'Alice Johnson', 'Consumer', 'United States', 'Chicago', 'NY', '97928', 'South', '1639', 'Office Supplies', 'Binders', 'Product B', '797.13', '7', '0.16', '-98.64');
INSERT INTO superstore_sales VALUES ('1053', '2024-05-13', '2024-05-14', 'First Class', '474', 'Jane Doe', 'Home Office', 'United States', 'San Francisco', 'IL', '43258', 'South', '1987', 'Office Supplies', 'Binders', 'Product B', '215.25', '2', '0.11', '-16.84');
INSERT INTO superstore_sales VALUES ('1816', '2024-05-14', '2024-05-15', 'Standard Class', '345', 'Chris Martin', 'Home Office', 'United States', 'Chicago', 'TX', '76320', 'West', '1802', 'Technology', 'Tables', 'Product A', '278.6', '7', '0.01', '-65.86');

-- * is used to fetch all rows and column in the table

select * from superstore_sales;

-- retrive oder_id, order_date, customer_name and country columns from the table

select order_id, order_date, customer_name, country from superstore_sales;

-- select only unique cities from the dataset
select distinct city from superstore_sales;

-- find all unique product_category
select distinct category from superstore_sales;

-- List the different region–category combinations available
select distinct category,region from superstore_sales


-- Find how mnay rows are present in the table
-- count can be used to find the number of rows

select count(*) from superstore_sales;


-- find the count of columns 

select count(*) from
information_schema.columns
where table_name = 'superstore_sales';

-- ORDER BY-: used to sort result in asc or desc

select * from superstore_sales
order by order_id asc;

--  now in descending

select order_id, customer_name from superstore_sales
order by order_id desc;

-- LIMIT -: Get only certain number of rows same as head in pandas

select * from superstore_sales
limit 5;


-- Where -:  Select * from table_name where condition;
-- Fetch all the records where the "region" is west

select * from superstore_sales 
where region= 'West'

--Find all orders with `sales` greater than 800.

select * from superstore_sales
where sales>500;

--Get orders from all regions **except** 'West'

select * from superstore_sales
where region != 'West';

-- using not

select region,sales,ship_date from superstore_sales
where region not in ('West');

-- Get count of Technology orders in the west region
-- using and
select count(*) from superstore_sales
where category = 'Technology' and region = 'West'

--Retrieve average negative profit from the Furniture orders in West region.

select avg(profit) from superstore_sales
where category = 'Furniture' and region = 'West' and profit<0;

--Fetch all orders where the category is Technology or sub-category is Chairs.

select * from superstore_sales
where category = 'Technology' or sub_category = 'chairs';


/*Find all orders that are **not** in category 'Technology' 
and not city 'Chicago'*/

select * from superstore_sales
where category!= 'Technology' and city != 'chicago';

-- other way of writing above query

select * from superstore_sales
where not (category= 'Technology' and city = 'chicago');

/* Find all the records in the west, east,south region */

select * from superstore_sales
where region = 'West' or region = 'East' or region = 'South';

-- IN Operator used for multiple conditions or analogous to Multiple OR

select * from superstore_sales
where region in ('West','East','South');


/*Fetch all orders for 'Phones' with `sales` >
500 that are not from West region. */

select * from superstore_sales 
where sub_category = 'Phones' and sales>500 and Region != 'West';


/* Get all orders **excluding** sub-categories: Chairs, Phones, Art,
Tables */
-- NOT IN

select * from superstore_sales
where sub_category not in ('Chairs','Phones','Art','Tables');


/* Average profit when the ordered quantity is >= 4 and <= 8 
BETWEEN includes both boundary value
*/

select round(avg(profit)::numeric,2) from superstore_sales
where quantity between 4 and 8;


/* Alias -: Used to assign temporary name /short names to columns*/
-- Giving the alias name for sum of sales as total_sales

select sum(sales) as total_sales from superstore_sales;


select distinct product_name as product_catelog from superstore_sales;


/* get all the details of the sub_category Art,Binders,Bookcases */ 


select order_id, customer_name,sub_category from superstore_sales
where sub_category in ('Art','Binders','Bookcases');



/* Aggregate Function -: It returns a summarized value 
- eg; Summarize data for finding total_sales, or find max, min , average
*/ 


-- find the sum of sales
select sum(sales) from superstore_sales;

-- find the maximum profit 
select max(profit) from superstore_sales;

-- find the total number of orders 
select count(order_id) from superstore_sales;

-- find average profit
select avg(profit) from superstore_sales;

-- Avg(), max(), min(), sum(), count()



/* String_Aggregare: string_agg() -> Using this we can concatinate
multiple values as a string from a columm with optional
delimeter (, _ &)*/ 

select string_agg(sub_category, '*') 
from superstore_sales;

-- All unique sub_category
select string_agg(distinct sub_category, '_') 
from superstore_sales;



/* GROUP BY :
The SQL GROUP BY clause is used to group rows that have 
the same values in specified columns into summary rows
Group By + aggregate functions(min, max,....)
*/


-- Find the total sales from each subsub_category

select sub_category,sum(sales) from superstore_sales
group by sub_category;


-- Find the average profit for each region.

select region, round(avg(profit)::numeric,2) from superstore_sales
group by region;



-- Find the count of orders per segment.

select segment, count(order_id) from superstore_sales
group by segment;



/* Having Clause:
The HAVING clause is used in SQL to filter the results of
a GROUP BY query based on conditions applied to aggregate 
functions. 
It is similar to the WHERE clause, but while WHERE filters
rows before grouping, HAVING filters groups after 
aggregation. */ 



-- Find those segments where the number of orders placed > 160

select segment,count(order_id) from superstore_sales
group by segment
having count(order_id)>160;


-- Find sub-categories where average profit is greater than 100

select sub_category, avg(profit) from superstore_sales
group by sub_category
having avg(profit)>100;


--Find regions where total quantity sold is more than 1000.

select region, sum(quantity) from superstore_sales
group by region
having sum(quantity)>1000; 


/* Order of execution
FROM: Data is retrieved from the table.
WHERE: Filters rows based on conditions.
GROUP BY: Groups rows into categories based on specified columns.
HAVING: Filters groups based on aggregate function conditions.
SELECT: Selects columns and applies aggregate functions.
ORDER BY: Sorts the result (if specified).
LIMIT: Restricts the number of rows returned (if specified).
*/ 






/* Sub-Query 
- A sub-quey is a nested query( A query nested within another query)
- The sub-query will be executed first follwed by the main query. 
*/


-- Retrieve orders where sales are greater than the average sales.

select order_id,sales,product_id from superstore_sales
where sales >
(select avg(sales) from superstore_sales);


-- Find the sub_category with the highest sales

select sub_category, sales from superstore_sales
where sales = 
(select max(sales) from superstore_sales);


-- Count of orders on Dates with Maximum Sales Amount

select order_date, count(*) AS order_count
from superstore_sales
where sales = 
(select max(sales) from superstore_sales)
group by order_date;



/* SQL Constraints - : They are used to specify rules for data in table and
these rules are specified when table is created

1. not null
2. unique
3. primary key
4. foreign key
5. check
6. default

so these all i can read and learn from web and keep practicing.