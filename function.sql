CREATE OR REPLACE FUNCTION get_average_streams(p_track_id INTEGER)
RETURNS FLOAT AS $$
DECLARE
   avg_streams FLOAT;
BEGIN
   SELECT AVG(streams) INTO avg_streams
   FROM Streams
   WHERE track_id = p_track_id;

   RETURN avg_streams;
END;
$$ LANGUAGE plpgsql;
