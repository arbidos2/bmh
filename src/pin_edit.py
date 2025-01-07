import sys
from PyQt5 import QtWidgets, uic

# PIN 입력 창 클래스
class PinWindow(QtWidgets.QMainWindow):
    def __init__(self):
        super(PinWindow, self).__init__()
        # UI 파일 로드
        uic.loadUi("pin_window.ui", self)

        # 위젯 참조
        self.pinInput = self.findChild(QtWidgets.QLineEdit, "pinInput")
        self.confirmButton = self.findChild(QtWidgets.QPushButton, "confirmButton")
        self.messageLabel = self.findChild(QtWidgets.QLabel, "messageLabel")

        # 버튼 클릭 이벤트 연결
        self.confirmButton.clicked.connect(self.check_pin)

        # PIN 값 설정 (예: 정답 PIN)
        self.correct_pin = "1234"

    def check_pin(self):
        """PIN 번호 확인"""
        entered_pin = self.pinInput.text()
        if len(entered_pin) != 4:
            self.messageLabel.setText("PIN must be 4 digits.")
            self.messageLabel.setStyleSheet("color: red;")
        elif entered_pin == self.correct_pin:
            self.messageLabel.setText("Access Granted!")
            self.messageLabel.setStyleSheet("color: green;")
        else:
            self.messageLabel.setText("Incorrect PIN. Try again.")
            self.messageLabel.setStyleSheet("color: red;")

# 앱 실행
if __name__ == "__main__":
    app = QtWidgets.QApplication(sys.argv)
    window = PinWindow()
    window.show()
    sys.exit(app.exec_())