# SQL Murder Mystery 
[link](https://mystery.knightlab.com/)

- Murder occurred 
    - on Jan 15 2018 
    - in SQL City
- Desc:
    - Security footage shows that there were 2 witnesses. The first witness lives at the **last house** on **"Northwestern Dr"**. The second witness, named **Annabel**, lives somewhere on **"Franklin Ave"**.	

## Witnesses and interviews
- Annabel Miller, id 16371, licence_id 490173, address 103 Franklin Ave, ssn 318771143
    - I saw the murder happen, and I recognized the killer from my gym when I was working out last week on **January the 9th**.

- Morty Schapiro, id 14887, licence_id 118009, address 4919 Northwestern Dr, ssn 111564949
    - I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "**48Z**". **Only gold** members have those bags. The man got into a car with a plate that included "**H42W**".
    - 2 check_ins on 9th Jan starting with that ID

## SUSPECTS 
`SELECT * FROM get_fit_now_check_in WHERE date = 20180109;` then
`SELECT * FROM get_fit_now_member WHERE id = '48Z7A';` then
`SELECT * FROM get_fit_now_member WHERE id = '48Z55';` then
`SELECT * FROM person WHERE name = 'Joe Germuska';` then
`SELECT * FROM person WHERE name = 'Jeremy Bowers';`
| name          | member since | per_id | m'ship | date     | in   | out  | addr                      | ssn       | licence |
| ------------- | ------------ | ------ | ------ | -------- | ---- | ---- | ------------------------- | --------- | ------- |
| Joe Germuska  | 20160305     | 28819  | 48Z7A  | 20180109 | 1600 | 1730 | 111 Fisk Rd               | 138909730 | 173289  |
| Jeremy Bowers | 20160101     | 67318  | 48Z55  | 20180109 | 1530 | 1700 | 530 Washington Pl, Apt 3A | 871539279 | 423327  |

## Vehicle --- stolen?
`SELECT * FROM drivers_license WHERE plate_number LIKE '%H42W%';`
None of the license numbers match those of Joe OR Jeremy, car could be stolen
| id     | age | height | eye_color | hair_color | gender | plate_number | car_make  | car_model |
| ------ | --- | ------ | --------- | ---------- | ------ | ------------ | --------- | --------- |
| 183779 | 21  | 65     | blue      | blonde     | female | H42W0X       | Toyota    | Prius     |
| 423327 | 30  | 70     | brown     | brown      | male   | 0H42W2       | Chevrolet | Spark LS  |
| 664760 | 21  | 71     | black     | black      | male   | 4H42WR       | Nissan    | Altima    |