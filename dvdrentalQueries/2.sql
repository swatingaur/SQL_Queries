-- Retrieve Staff Members and Their Managed Stores

SELECT 
    s.staff_id, s.first_name, s.last_name, st.store_id, st.manager_staff_id
FROM staff s
JOIN store st 
ON s.staff_id = st.manager_staff_id;

