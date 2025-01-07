from flask import Flask, request, jsonify, render_template
from ros_node.move_base_node import MoveBaseNode  # ROS 노드 가져오기
import sys
import os

# 프로젝트 루트 디렉토리를 Python 경로에 추가
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

# Flask 앱 초기화
app = Flask(__name__)

# ROS 노드 초기화
node = MoveBaseNode()

@app.route('/')
def index():
    name = "Flask User"
    return render_template('main.html', name=name)  # 메인 페이지

@app.route('/main')
def main():
    return render_template('main.html')  # main.html 템플릿 반환

@app.route('/pin')
def pin():
    return render_template('pin.html')  # PIN 입력 페이지

@app.route('/manager')
def manager():
    return render_template('manager.html')  # 관리자 페이지

@app.route('/move')
def move():
    return render_template('move.html')  # 이동 명령 페이지

@app.route('/face')
def face():
    return render_template('face.html')  # 얼굴 등록 페이지

@app.route('/move', methods=['POST'])
def move_robot():
    data = request.json
    x = float(data.get('x', 0))
    y = float(data.get('y', 0))
    theta = float(data.get('theta', 0))
    node.move_absolute(x, y, theta)
    return jsonify({"message": f"Moving to X={x}, Y={y}, Theta={theta}"})

@app.route('/stop', methods=['POST'])
def stop():
    node.stop_robot()
    return jsonify({"message": "Robot stopped"})

@app.route('/explore', methods=['POST'])
def explore():
    state = request.json.get('state', 'start')
    if state == "start":
        node.toggle_explore()
        return jsonify({"message": "Exploration started"})
    elif state == "stop":
        node.toggle_explore()
        return jsonify({"message": "Exploration stopped"})
    return jsonify({"message": "Invalid state"}), 400

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')