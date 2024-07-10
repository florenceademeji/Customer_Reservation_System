CREATE PROCEDURE GetAllReservations()
BEGIN
    SELECT R.*, U.Username AS userUsername, V.VenueName AS venueName
    FROM Reservations R
    JOIN Users U ON R.UserID = U.UserID
    JOIN Venues V ON R.VenueID = V.VenueID;
END;




