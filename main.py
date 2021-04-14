import sys
import os

from PyQt5.QtCore import QObject, QUrl, Qt, pyqtSlot, pyqtSignal, pyqtProperty
from PyQt5.QtWidgets import QApplication
from PyQt5.QtQml import QQmlApplicationEngine

class Manager(QObject):
    #slider Value
    currentValueChanged = pyqtSignal()
    def __init__(self):
        QObject.__init__(self)
        self.m_currentValue =0
        #slider
        self.currentValueChanged.connect(self.on_currentValueChanged)

    #slide stuff
    @pyqtProperty(float, notify=currentValueChanged)
    def currentValue(self):
        return self.m_currentValue

    #slider
    @currentValue.setter
    def currentValue(self, val):
        if self.m_currentValue == val:
            return
        self.m_currentValue = val
        self.currentValueChanged.emit()


    #slider VOlUME CHANGED <<<<<<<<<<<<<<<<<<<<<<<<< WORKS>>>>>>>>>>>>>>>>>>>>>>
    @pyqtSlot()
    def on_currentValueChanged(self):
        print(self.m_currentValue)

if __name__ == "__main__":
    os.environ["QT_QUICK_CONTROLS_STYLE"] = "Material"
    app = QApplication(sys.argv)

    engine = QQmlApplicationEngine()
    manager = Manager()
    ctx = engine.rootContext()
    ctx.setContextProperty("Manager", manager)
    engine.load('main.qml')
    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec_())
