/* Membuat tabel employee yang memiliki 2 kolom, yaitu employee dan salary */
CREATE TABLE employee_table (
    employee TEXT NOT NULL,
    salary INTEGER
);

/* Memasukkan nilai-nilai dari employee dan salary */
INSERT INTO employee_table (employee, salary) VALUES 
('Alice', 11),
('Benn', 43),
('Charles', 33),
('Dorothy', 55),
('Emma', 22),
('Franklin', 33);

/* Mencari salary tertinggi ke-3*/
SELECT DISTINCT salary
FROM employee_table
ORDER BY salary DESC /* Mengurutkan dari tinggi ke rendah (descending) berdasarkan kolom salary */
LIMIT 1 OFFSET 2; /* Mengambil nilai salary setelah 2 baris pertama */