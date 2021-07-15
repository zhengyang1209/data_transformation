




with inventory_table as (

SELECT tb1.id AS variantId, tb2.sku, tb2.cost, tb3.available, tb3.onHand
FROM italic.aurora_postgres_italic.variants tb1
LEFT JOIN italic.aurora_postgres_italic.inventoryitems tb2
ON tb1.inventoryItemId = tb2.id
LEFT JOIN italic.aurora_postgres_italic.inventorylevels tb3
ON tb2.id = tb3.inventoryItemId

)

SELECT *
FROM inventory_table


