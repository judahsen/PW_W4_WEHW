INSERT INTO customer(
        customer_name,
        customer_address,
        phone,
        email
    )
VALUES (
        'Mike C',
        '123 Street St',
        1234567,
        'Mikec@email.com'
    ),
(
        'Derim S',
        '321 Lowden Avenue',
        9995464,
        'Derims@email.com'
    )
INSERT INTO car(
        customer_id,
        year,
        make,
        model,
        price,
        color
    )
VALUES (
        1,
        2022,
        'McLaren',
        'Artura',
        232500,
        'Red'
    ),
(
        2,
        2018,
        'Aston Martin',
        'DB11',
        106871,
        'Black'
    )
INSERT INTO salesperson(
        store,
        salesperson_name,
        email,
        phone,
        status
    )
VALUES (
        1,
        'Randy O',
        'randyO@carshop.com',
        1234567890,
        'A'
    ),
(
        2,
        'Lian F',
        'lianF@carshop.com',
        3214567890,
        'NA'
    )
INSERT INTO mechanic(
        store,
        mechanic_name,
        phone,
        email,
        status
    )
VALUES (
        1,
        'Henrik W',
        2314560987,
        'henrikW@carsquad.com',
        'NA'
    ),
(
        2,
        'Martina Z',
        0987654321,
        'martinaZ@carsquad.com',
        'A'
    )