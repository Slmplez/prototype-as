using System.ComponentModel;

namespace Syncfusion.Windows.Forms;

public enum PressedZone
{
	[Browsable(false)]
	None = -1,
	MinButton,
	MaxButton,
	Thumb,
	ThumbLeftZone,
	ThumbRightZone,
	[Browsable(false)]
	Length
}
