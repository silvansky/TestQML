import QtQuick 1.1

Rectangle {
	width: 450;  height: 450
	color: "#00222222" // transparent
	GridView {
		id: grid
		interactive: false
		anchors {
			topMargin: 10; bottomMargin: 10
			leftMargin: 10; rightMargin: 10
			fill: parent
		}
		cellWidth: 120; cellHeight: 120;
		model: WidgetModel { id: icons }
		delegate: IconItem { }
		MouseArea {
			property int currentId: -1                       // Original position in model
			property int newIndex                            // Current Position in model
			property int index: grid.indexAt(mouseX, mouseY) // Item underneath cursor
			id: loc
			anchors.fill: parent
			onPressAndHold: currentId = icons.get(newIndex = index).gridId
			onReleased: currentId = -1
			onMousePositionChanged:
			    if (loc.currentId != -1 && index != -1 && index != newIndex)
				    icons.move(newIndex, newIndex = index, 1)
		}
	}
}

