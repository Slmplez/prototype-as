using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms;

public interface IExtendableTexBox : IDisposable
{
	IntPtr Handle { get; }

	bool Focused { get; }

	Color BackColor { get; }

	Rectangle ClientRectangle { get; }

	Font Font { get; }

	RightToLeft RightToLeft { get; }

	event EventHandler HandleCreated;

	event ValueChangedEventHandler TextBoxTextChanged;

	void Invalidate();
}
