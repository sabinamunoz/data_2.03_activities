-- 1. Select cards of type junior. Return just first 10 in your query.
select * from bank.card where type='junior';
-- 2.1 Select district name (A2) and salaries (A11), from the district table, where salary is greater than 10000. 

-- 2.2 From the district table, return the district name (A2) and region (A3) together, separate by "-". Example: "Benesov - Central Bohemia".

-- 3.1 Select those loans whose contract finished and not paid back (status = B). Return the debt value (amount of the loan - payment).
select (amount - payments) as 'Debt Value' from bank.loan
where status = 'B';
-- 3.2 From the query above, return only the loans where the debt value is greater than 10000.
select (amount - payments) as 'Debt Value' from bank.loan
where (status = 'B') and ((amount - payments) > 10000);
-- 4.1 Return card_id and year_issued for all gold cards.
select card_id, issued as 'year_issued' from bank.card where type = 'gold';
-- 4.2 Return the year of the first gold card issued.

-- 4.3 Format the issue date to be similar to the format in the example: 'November 7th, 1993'
-- 5.1 Check for transactions with null or empty values for the amount column.
select * from trans where amount is null or amount = ' ';
-- 5.2 Count how many transactions have empty and non-empty k_symbol. (Hint: use SUM and CASE WHEN)

