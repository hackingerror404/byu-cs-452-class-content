create table Person (
    person_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(50) NOT NULL,
    phone_number INT
);

create table Employee (
    person_id INT PRIMARY KEY NOT NULL,
    employee_position VARCHAR(15) NOT NULL,
    wages REAL,
    date_hired DATE,
    is_adult INTEGER,
    FOREIGN KEY (person_id) references Person (person_id)
);

create table Customer (
    person_id INT PRIMARY KEY NOT NULL,
    rewards_points INT,
    payment_number VARCHAR(20),
    FOREIGN KEY (person_id) references Person (person_id)
);

create table Theater_Order (
    order_id INT PRIMARY KEY NOT NULL,
    buyer_id INT NOT NULL,
    total_price REAL,
    order_type INTEGER,
    FOREIGN KEY (buyer_id) REFERENCES Customer (person_id)
);

create table Individual_Theater (
    theater_id INT PRIMARY KEY NOT NULL,
    theater_format VARCHAR(10),
    max_guests SMALLINT,
    num_rows SMALLINT
);

create table Movie (
    movie_id INT PRIMARY KEY NOT NULL,
    title TEXT,
    distributor TEXT,
    runtime SMALLINT,
    NPAA_rating VARCHAR(5)
);

create table Showing (
    showing_id INT PRIMARY KEY NOT NULL,
    theater_id INT NOT NULL,
    showing_time DATETIME NOT NULL,
    movie_id INT NOT NULL,
    FOREIGN KEY (theater_id) REFERENCES Individual_Theater (theater_id),
    FOREIGN KEY (movie_id) REFERENCES Movie (movie_id)
);

create table Ticket (
    ticket_id INT PRIMARY KEY NOT NULL,
    order_id INT NOT NULL,
    showing_id INT NOT NULL,
    theater_id INT NOT NULL,
    showing_time DATETIME NOT NULL,
    movie_id INT NOT NULL,
    seat_number VARCHAR(4),
    price REAL,
    ticket_type INTEGER,
    FOREIGN KEY (order_id) REFERENCES Theater_Order (order_id),
    FOREIGN KEY (showing_id) REFERENCES Showing (showing_id),
    FOREIGN KEY (theater_id) REFERENCES Showing (theater_id),
    FOREIGN KEY (showing_time) REFERENCES Showing (showing_time),
    FOREIGN KEY (movie_id) REFERENCES Showing (movie_id)
);
