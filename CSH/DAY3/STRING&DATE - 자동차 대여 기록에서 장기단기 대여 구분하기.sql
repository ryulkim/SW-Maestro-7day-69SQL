SELECT HISTORY_ID, CAR_ID, DATE_FORMAT(START_DATE, "%Y-%m-%d") as START_DATE, DATE_FORMAT(END_DATE, "%Y-%m-%d") as END_DATE, IF(DATEDIFF(END_DATE, START_DATE) >= 29, "장기 대여", "단기 대여") as RENT_TYPE FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY WHERE YEAR(START_DATE)=2022 and MONTH(START_DATE)=9 ORDER BY HISTORY_ID DESC;