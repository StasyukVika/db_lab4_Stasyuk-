-- Запит 1: Кількість бджолиних колоній з Алабами
SELECT state , COUNT(reg) AS Colonies_from_Alabama
FROM State
WHERE reg = 'Alabama';

-- Запит 2: Вивести максимальну кількість колоній медоносних бджіл з кожного штату
SELECT State.state, Colonies.max_colonies
FROM State
INNER JOIN Colonies ON State.num_colonies=Colonies.num_colonies;


-- Запит 3: Вивести колонії бджіл, де кількість втрат колоній менша за кількість доданих колоній
SELECT State.state, Colonies.max_colonies
FROM State
INNER JOIN Colonies ON State.num_colonies=Colonies.num_colonies
WHERE Colonies.lost_colonies < Colonies.added_colonies;