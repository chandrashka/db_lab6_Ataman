CREATE OR REPLACE PROCEDURE update_track_energy_percent(p_track_id INTEGER, p_new_energy_percent DOUBLE PRECISION)
AS $$
BEGIN
    UPDATE Track
    SET energy_percent = p_new_energy_percent
    WHERE track_id = p_track_id;
END;
$$ LANGUAGE plpgsql;
