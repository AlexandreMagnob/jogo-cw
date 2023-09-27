extends RichTextLabel



func _ready():
	Signals.connect("record",self,"record")


func updaterecord(record):
	self.text = String(record)

	
