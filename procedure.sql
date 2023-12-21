-- процедура, яка оновлює дані у таблиці Track
CREATE OR REPLACE PROCEDURE update_track_energy_percent(track_id INTEGER, new_energy_percent FLOAT)
AS $$
BEGIN
    UPDATE Track
    SET energy_percent = new_energy_percent
    WHERE track_id = update_track_energy_percent.track_id;
END;
$$ LANGUAGE plpgsql;
