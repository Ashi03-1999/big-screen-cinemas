-- Admin Users Table
CREATE TABLE AdminUsersTab (
    uName NVARCHAR(50) PRIMARY KEY,
    pWord NVARCHAR(50)
);

-- Customer Table
CREATE TABLE CustomerTab (
    uName NVARCHAR(50) PRIMARY KEY,
    pWord NVARCHAR(50),
    cName NVARCHAR(50),
    cAdd NVARCHAR(50),
    eMail NVARCHAR(50),
    Mobile NVARCHAR(50),
    PassportNo NVARCHAR(50),
    Approved NVARCHAR(50)
);

-- Feedback Table
CREATE TABLE FeedbackTab (
    fbNo NVARCHAR(50) PRIMARY KEY,
    fbDate NVARCHAR(50),
    uName NVARCHAR(50),
    Heading NVARCHAR(50),
    details NVARCHAR(50)
);

-- Movie Show Table
CREATE TABLE MovieShowTab (
    rNo NVARCHAR(50) PRIMARY KEY,
    MovieName NVARCHAR(50),
    ScreenName NVARCHAR(50),
    ShowName NVARCHAR(50),
    fromDate NVARCHAR(50),
    toDate NVARCHAR(50)
);

-- Screen Table
CREATE TABLE ScreenTab (
    ScreenName NVARCHAR(50) PRIMARY KEY,
    eClassSeats NVARCHAR(50),
    eClassPrice NVARCHAR(50),
    qClassSeats NVARCHAR(50),
    qClassPrice NVARCHAR(50),
    pClassSeats NVARCHAR(50),
    pClassPrice NVARCHAR(50),
    show1 NVARCHAR(50),
    show2 NVARCHAR(50),
    show3 NVARCHAR(50),
    show4 NVARCHAR(50),
    show5 NVARCHAR(50)
);

-- Ticket Table
CREATE TABLE TicketTab (
    TicketNo NVARCHAR(50) PRIMARY KEY,
    bDate NVARCHAR(50),
    sDate NVARCHAR(50),
    MovieName NVARCHAR(50),
    ScreenName NVARCHAR(50),
    ShowName NVARCHAR(50),
    TicketType NVARCHAR(50),
    tPrice NVARCHAR(50),
    tQty NVARCHAR(50),
    tTotal NVARCHAR(50),
    uName NVARCHAR(50)
);

-- Movie Table
CREATE TABLE MovieTab (
    MovieName NVARCHAR(50) PRIMARY KEY,
    Language NVARCHAR(50),
    Actors NVARCHAR(50),
    details NVARCHAR(50),
    mfileName NVARCHAR(50)
);
