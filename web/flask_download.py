from flask import Flask,render_template,request
from werkzueg import secure_filename
app = Flask(__name__)

@app.config['MAX_CONTENT_LENGTH'] = 16 * 1024 * 1024 #바이트

@app.route('/downfile')
def down_page():
	files = os.listdir("./uploads")
	return render_template('filedown.html',files=files)

#파일 다운로드 처리
@app.route('/fileDown', methods = ['GET', 'POST'])
def down_file():
	if request.method == 'POST':
		sw=0
		files = os.listdir("./uploads")
		for x in files:
			if(x==request.form['file']):
				sw=1

		path = "./uploads/" 
		return send_file(path + request.form['file'],
				attachment_filename = request.form['file'],
				as_attachment=True)

if __name__ == '__main__':
	#서버 실행
	app.run(host='0.0.0.0', port=8080, debug = True)
