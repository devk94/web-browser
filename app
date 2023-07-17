form pyQt5.QtWidgets import *
form pyQt5.QtGui import *
form pyQt5.QtCore import *
form pyQt5.QtWebEngineWidgets import *


class MyWebBrowser(QMainWindow):

   def __init__(self):
       super(MyWebBrowser, self).__init__(*args, **kwargs)

       self.window = QWidget()
       self.window.setWindowTitle("NeuralNine Web Browser")
 
       self.layout = QVBoxLayout()
       self.horizontal = QHBoxLayout()

       self.url_bar = QTextEdit()
       self.url_bar.setMaximumHight(30)

       self.go_btn = QPushButton("Go")
       self.go_btn.setMinimumHeight(30)

       self.back_btn = QPushButton("<")
       self.back_btn.setMinimumHeight(30)

       self.forward_btn = QPushButton(">")
       self.forward_btn.setMinimumHeight(30)
       
       self.horizontal.addWidget(self.url_bar)
       self.horizontal.addWidget(self.go_btn)
       self.horizontal.addWidget(self.back_btn)
       self.horizontal.addWidget(self.forward_btn)

       self.browser = QWebEngineView()

       self.layout.addLayout(self.horizontal)
       self.layout.addWidget(self.browser)

       self.browser.setUrl(QUrl("http://google.com"))

       self.window.setLayout(self.layout)
       self.window.show()

       app = QApplication() 
       window = MyWebBrowser()
       app.exec_()
