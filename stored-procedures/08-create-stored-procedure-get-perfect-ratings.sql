-- Creates a stored procedure to fetch venues with perfect ratings
CREATE PROCEDURE GetPerfectRatedVenues()
BEGIN
    -- Selects venue names from the Venues table
    SELECT V.VenueName
    FROM Venues V
    WHERE V.VenueID IN (
        -- Subquery to select VenueIDs from Reviews where the rating is 5
        SELECT R.VenueID 
        FROM Reviews R 
        WHERE R.Rating = 5
    );
END;
