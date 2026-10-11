using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Drawing;

[DocumentationExclude]
public interface INonClientPaintingSupport
{
	IntPtr NonClientPaint(PaintEventArgs e, Rectangle displayRect, Rectangle windowRectInScreen);
}
