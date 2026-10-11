using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal interface IDragControl
{
	void ShowControl();

	void HideControl();

	void Dispose();

	bool ProcessMouseMove(Point point);

	bool ProcessMouseUp(Point point);
}
