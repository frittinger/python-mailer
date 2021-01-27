# python-mailer

Reads data from a queue table in a relational database (currently postgresql) and sends an email for each row.

Data:
- mail_to: recipient
- reply_to: who should be contacted
- subject: mail subject
- data: the data to be sent 
- data_type: type of mail/data
- created_at: timestamp of creation of the entry
- processed_at: timestamp when data was processed (empty initially)

