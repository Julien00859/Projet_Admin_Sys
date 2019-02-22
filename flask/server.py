from flask import Flask, request, render_template
from psycopg2 import connect as dbconnect
from os import environ
from datetime import datetime
from time import sleep

app = Flask(__name__)
for x in range(5):
	try:
		conn = dbconnect(dbname=environ["POSTGRES_DB"], user=environ["POSTGRES_USER"], 
                		 password=environ["POSTGRES_PASSWORD"], host="postgres")
	except:
		print("Connexion error, retry in 5 seconds")
		sleep(5)
	else:
		break
		

@app.route("/", methods=["GET", "POST"])
def index():
	cur = conn.cursor()
	if request.method == "POST":
		cur.execute("INSERT INTO product (name, stock) VALUES (%s, %s);", (request.form["name"], request.form["stock"]))
	
	cur.execute("SELECT name, stock FROM product")
	return render_template("index.html", products=cur.fetchall())

if __name__ == "__main__":
	app.run(host="0.0.0.0", port=8080)

