from flask import Flask, render_template, request
from flask import session
from flask_sqlalchemy import SQLAlchemy

from datetime import datetime
import json

from pip._internal.network import session

with open('config.json', 'r') as c:
    params = json.load(c)["params"]

local_server = True
app = Flask(__name__)
app.secret_key = 'super-secret-key'

if (local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params["local_uri"]
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params["prod_uri"]


db = SQLAlchemy(app)

class Contacts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    phone_num = db.Column(db.String(12), nullable=False)
    msg = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)
    email = db.Column(db.String(20), nullable=False)

class Posts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80), nullable=False)
    slug = db.Column(db.String(30), nullable=False)
    content = db.Column(db.String(200), nullable=False)
    date = db.Column(db.String(12), nullable=True)
    img_file = db.Column(db.String(25), nullable=True)
    tagline = db.Column(db.String(200), nullable=False)


@app.route("/")
def home():
    posts = Posts.query.filter_by().all()[0:params['no_of_post']]
    return render_template('index.html',params = params,posts=posts)




@app.route("/about")
def about():
    return render_template('about.html',params = params)


@app.route("/contact", methods = ['GET', 'POST'])
def contact():
    if(request.method=='POST'):
        '''Add entry to the database'''
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        message = request.form.get('message')
        entry = Contacts(name=name, phone_num = phone, msg = message,email = email )
        db.session.add(entry)
        db.session.commit()
    return render_template('contact.html',params = params)


@app.route("/post/<string:post_slug>", methods = ['GET'])
def post(post_slug):
    post = Posts.query.filter_by(slug = post_slug).first()
    return render_template('post.html',params = params ,post=post)


app.run(debug=True)
