SELECT InvoiceId, COUNT(*) as LineItemCount
FROM InvoiceLine
GROUP BY InvoiceId;
