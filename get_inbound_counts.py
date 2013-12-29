import imaplib
from flanker import mime
import collections


mail = imaplib.IMAP4_SSL('imap.gmail.com')
mail.login('Your Email', 'Your Password')

# mail.select("inbox") # connect to inbox.
mail.select("[Gmail]/All Mail")

result, data = mail.search(None, "ALL")

ids = data[0]
id_list = ids.split()

c = collections.Counter()
for email_id in id_list:
	# for email_id in id_list[-1000:]:
	result, data = mail.fetch(email_id, "(RFC822)")
	message_string = data[0][1]
	msg = mime.from_string(message_string)
	sender = [msg.headers.items()[i][1] for i, item in enumerate(msg.headers.items()) if item[0] == 'From']
	print sender
	c.update(sender)

fo = open("inbound_emails.txt", "wb")
for item in c:
	fo.write("{}\t{}\n".format(item, c[item]));

fo.close()
