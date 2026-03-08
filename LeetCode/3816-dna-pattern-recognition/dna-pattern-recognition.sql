# Write your MySQL query statement below
SELECT
    sample_id,
    dna_sequence,
    species,
    IF(dna_sequence LIKE 'ATG%',1,0) as has_start,
    IF(dna_sequence LIKE '%TAG' OR dna_sequence LIKE '%TAA' OR dna_sequence LIKE '%TGA',1,0) as has_stop,
    IF(dna_sequence LIKE '%ATAT%',1,0) as has_atat,
    IF(dna_sequence LIKE '%GGG%',1,0) as has_ggg
FROM Samples
GROUP BY sample_id
ORDER BY sample_id;