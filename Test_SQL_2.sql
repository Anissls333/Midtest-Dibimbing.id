/* Membuat tabel item_bought yang memiliki 2 kolom, yaitu buyer dan item */
CREATE TABLE item_bought (
    buyer TEXT NOT NULL,
    item TEXT NOT NULL
);

/* Memasukkan nilai-nilai dari buyer dan item, */
INSERT INTO item_bought (buyer, item) VALUES
('A', 'Asus'),
('B', 'Lenovo'),
('C', 'Lenovo'),
('D', 'Acer'),
('E', 'Acer'),
('F', 'Acer');

/* Mencari nama item yang 'Tidak dibeli paling banyak/paling laku' dan juga 'Tidak dibeli paling sedikit/paling tidak laku' */
WITH item_counts AS 
(
    SELECT item, COUNT(*) AS total_bought
    FROM item_bought
    GROUP BY item
),

maxmin AS 
(
    SELECT max(total_bought) AS max, min(total_bought) AS min
    FROM item_counts
)

SELECT item
FROM item_counts, maxmin
WHERE total_bought != max AND total_bought != min;


