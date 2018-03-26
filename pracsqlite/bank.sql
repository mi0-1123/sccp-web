-- 銀行の利用者
CREATE TABLE customers (
  -- 利用者ID
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  -- 利用者名義
  name varchar(64) NOT NULL
);

-- 口座
CREATE TABLE accounts (
  -- 口座ID
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  -- 口座名義の利用者ID
  customer_id INTEGER REFERENCES customers(id) NOT NULL,

  -- 口座番号
  code INTEGER NOT NULL
);

-- 借り入れ履歴
CREATE TABLE deposits (
  -- 借り入れ履歴ID
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  -- 対象の口座ID
  account_id INTEGER REFERENCES accounts(id) NOT NULL,

  -- 金額
  ammount INTEGER NOT NULL
);

-- 引き出し履歴
CREATE TABLE withdrawals (
  -- 引き出し履歴ID
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  -- 対象の口座ID
  account_id INTEGER REFERENCES accounts(id) NOT NULL,

  -- 金額
  ammount INTEGER NOT NULL
);

INSERT INTO customers(name) VALUES ('Jhon');
INSERT INTO customers(name) VALUES ('Pole');
INSERT INTO customers(name) VALUES ('Ann');
INSERT INTO customers(name) VALUES ('Alexthunder');
INSERT INTO customers(name) VALUES ('Mary');
INSERT INTO customers(name) VALUES ('Bob');

INSERT INTO accounts(customer_id, code) VALUES (1, 123001);
INSERT INTO accounts(customer_id, code) VALUES (2, 123002);
INSERT INTO accounts(customer_id, code) VALUES (2, 123003);
INSERT INTO accounts(customer_id, code) VALUES (3, 123004);
INSERT INTO accounts(customer_id, code) VALUES (4, 123005);
INSERT INTO accounts(customer_id, code) VALUES (4, 123006);
INSERT INTO accounts(customer_id, code) VALUES (5, 123007);
INSERT INTO accounts(customer_id, code) VALUES (6, 123008);

INSERT INTO deposits(account_id, ammount) VALUES(1, 1000);
INSERT INTO deposits(account_id, ammount) VALUES(1, 3000);
INSERT INTO deposits(account_id, ammount) VALUES(2, 1000);
INSERT INTO deposits(account_id, ammount) VALUES(3, 1000);
INSERT INTO deposits(account_id, ammount) VALUES(3,10000);
INSERT INTO deposits(account_id, ammount) VALUES(4, 1000);
INSERT INTO deposits(account_id, ammount) VALUES(5, 1000);
INSERT INTO deposits(account_id, ammount) VALUES(1, 10000);
INSERT INTO deposits(account_id, ammount) VALUES(6, 1000);

INSERT INTO withdrawals(account_id, ammount) VALUES(1,  2000);
INSERT INTO withdrawals(account_id, ammount) VALUES(1,  1000);
INSERT INTO withdrawals(account_id, ammount) VALUES(2,  2000);
INSERT INTO withdrawals(account_id, ammount) VALUES(3,110000);
INSERT INTO withdrawals(account_id, ammount) VALUES(4,  6000);
INSERT INTO withdrawals(account_id, ammount) VALUES(5, 21000);
INSERT INTO withdrawals(account_id, ammount) VALUES(2,  2000);
INSERT INTO withdrawals(account_id, ammount) VALUES(1,  9000);