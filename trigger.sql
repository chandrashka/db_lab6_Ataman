-- Наприклад, тригер, який автоматично додає запис у Streams при вставці нового track
CREATE OR REPLACE FUNCTION insert_into_streams()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO Streams (track_id, streams)
    VALUES (NEW.track_id, 0); -- Початкова кількість streams - 0
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_insert_streams
AFTER INSERT ON Track
FOR EACH ROW
EXECUTE FUNCTION insert_into_streams();
