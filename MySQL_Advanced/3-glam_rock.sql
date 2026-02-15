-- Script that lists all bands with Glam rock as their main style, ranked by longevity
SELECT band_name, (IFNULL(split, 2024) - formed) AS lifespan
    FROM bands
    WHERE style LIKE '%Glam rock%'
    ORDER BY lifespan DESC;
