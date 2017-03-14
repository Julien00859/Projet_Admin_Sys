from flask import Flask, jsonify
from psycopg2 import connect as dbconnect
from os import environ
from datetime import datetime

app = Flask(__name__)
conn = dbconnect(dbname=environ["POSTGRES_DB"], user=environ["POSTGRES_USER"], 
                 password=environ["POSTGRES_PASSWORD"], host="postgres")

@app.route("/")
def index():
	return "Hello world !\n"

@app.route("/now")
def now():
	return datetime.now().strftime("%c") + "\n"

@app.route("/db")
def db():
	cur = conn.cursor()
	cur.execute("SELECT name, stock FROM product")

	return jsonify(list(map(lambda row: {"name": row[0], "stock": row[1]}, cur.fetchall())))

if __name__ == "__main__":
	app.run(host="0.0.0.0", port=8080)

