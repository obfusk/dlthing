# Licence: GPLv3+

from flask import Flask, render_template, request
import youtube_dl

app = Flask(__name__)

@app.route("/", methods = "GET POST".split())
def index():
  return render_template("index.html",
    play = request.form.get("play"),
    **(get_video_url(request.form["url"])
      if request.method == "POST" else {}))

# TODO: ensure url? what if no url?
def get_video_url(url):
  message, vid_url = None, None; opts = dict(format = "best")
  with youtube_dl.YoutubeDL(opts) as ydl:
    try:
      vid_url = ydl.extract_info(url, download = False).get("url")
      if not vid_url: message = "youtube-dl did not return a URL"
    except youtube_dl.utils.DownloadError as e:
      message = "not a valid URL" if "not a valid URL" in e.args[0] \
                else "download error"
    return dict(vid_url = vid_url, message = message)
