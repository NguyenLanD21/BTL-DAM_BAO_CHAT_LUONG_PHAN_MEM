-- Drop the existing status_is_approved table if it exists
DROP TABLE IF EXISTS status_is_approved;

-- Create the status_is_approved table with a unique constraint on the status column
CREATE TABLE status_is_approved (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    note VARCHAR(255),
    status VARCHAR(255),
    UNIQUE KEY status_unique (status)
);

-- Insert all the status values at once to avoid duplicates
INSERT INTO status_is_approved (note, status) VALUES
    ('', 'FOLLOWUP'),
    ('', 'PAYMENTPHASE1'),
    ('', 'PAYMENTPHASE2'),
    ('', 'SUCCESS'),
    ('', 'FAILED'),
    ('', 'FINISHED'),
    ('', 'CHECKING'),
    ('', 'CANCELED'),
    ('', 'PROCESSING');

-- Explanation for users:
/*
This script fixes the "Query did not return a unique result: 4 results were returned" error
by ensuring that the status_is_approved table has unique status values. 

Steps taken:
1. Recreated the table with a UNIQUE constraint on the status column
2. Inserted all status values at once to avoid duplicates

Make sure to run this script before running any other database scripts that reference
the status_is_approved table, such as medical_registry_list insertions.

This ensures that findByStatus methods will return a single result as expected.
*/ 