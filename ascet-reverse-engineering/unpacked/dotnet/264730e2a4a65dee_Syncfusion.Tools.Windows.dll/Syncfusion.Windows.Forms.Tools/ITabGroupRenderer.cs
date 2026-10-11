using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public interface ITabGroupRenderer
{
	ITabData TabData { get; set; }

	RectangleF Bounds { get; set; }

	RectangleF GetGroupItemBounds(int i);

	SizeF GetOverlapSize(SizeF tabSize);

	SizeF GetPreferredSize(Graphics g);
}
