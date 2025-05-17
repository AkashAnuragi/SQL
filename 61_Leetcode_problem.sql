SELECT 
    sample_id,
    dna_sequence,
    species,
    
    -- Check if sequence starts with ATG
    CASE 
        WHEN dna_sequence LIKE 'ATG%' THEN 1 
        ELSE 0 
    END AS has_start,
    
    -- Check if sequence ends with TAA, TAG, or TGA
    CASE 
        WHEN dna_sequence LIKE '%TAA' OR 
             dna_sequence LIKE '%TAG' OR 
             dna_sequence LIKE '%TGA' THEN 1 
        ELSE 0 
    END AS has_stop,
    
    -- Check if sequence contains ATAT
    CASE 
        WHEN dna_sequence LIKE '%ATAT%' THEN 1 
        ELSE 0 
    END AS has_atat,
    
    -- Check if sequence contains at least 3 consecutive Gs (e.g. GGG or GGGG)
    CASE 
        WHEN dna_sequence REGEXP 'G{3,}' THEN 1 
        ELSE 0 
    END AS has_ggg

FROM Samples
ORDER BY sample_id ASC;
