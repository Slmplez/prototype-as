using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal interface IDragTargetControl : IDragControl
{
	Form InternalControl { get; }

	void OnPaint(object sender, PaintEventArgs e);

	void SetBounds(Rectangle bounds);
}
