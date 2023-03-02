SELECT InvoiceId, COUNT(*) AS line_item_count
FROM InvoiceLine
GROUP BY InvoiceId;
