from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return '<h1>Hola Clase!</h1><br><div class="tenor-gif-embed" data-postid="5114770" data-share-method="host" data-width="100%" data-aspect-ratio="2.0"><a href="https://tenor.com/view/hey-tomhanks-gif-5114770">Hey GIF</a> from <a href="https://tenor.com/search/hey-gifs">Hey GIFs</a></div><script type="text/javascript" async src="https://tenor.com/embed.js"></script>'

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=5000)
