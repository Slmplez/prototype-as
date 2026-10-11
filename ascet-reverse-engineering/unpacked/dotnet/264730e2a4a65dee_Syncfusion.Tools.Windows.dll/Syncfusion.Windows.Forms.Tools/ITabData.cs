using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public interface ITabData : IDisposable
{
	Font Font { get; set; }

	Color BackColor { get; set; }

	Color ForeColor { get; set; }

	string Text { get; set; }

	bool Enabled { get; set; }

	bool TabVisible { get; set; }

	string ToolTip { get; set; }

	Image Image { get; set; }

	Size ImageSize { get; set; }

	bool ImageChanged { get; set; }

	int ImageIndex { get; set; }

	event EventHandler BoundsAffected;

	event EventHandler PropertyChanged;
}
