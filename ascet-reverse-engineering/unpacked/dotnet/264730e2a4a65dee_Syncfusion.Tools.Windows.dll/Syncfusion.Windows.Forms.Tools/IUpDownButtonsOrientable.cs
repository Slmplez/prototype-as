using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public interface IUpDownButtonsOrientable
{
	Orientation SpinOrientation { get; }

	event EventHandler SpinOrientationChanged;
}
