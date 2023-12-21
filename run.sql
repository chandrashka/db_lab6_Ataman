-- Виклик функції
SELECT get_average_streams(1);

-- Виклик процедури
CALL update_track_energy_percent(2, 0.9);

-- Вставка нового track (спрацює тригер)
INSERT INTO Track (track_name, artist_count, artist_id, released_year, released_month, released_day, bpm, key, mode, danceability_percent, valence_percent, energy_percent, acousticness_percent, instrumentalness_percent, liveness_percent, speechiness_percent)
VALUES ('New Track', 1, 1, 2023, 12, 31, 120, 3, 1, 0.75, 0.85, 0.78, 0.12, 0, 0.09, 0.05);
