using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface IFrameBorderPainter
{
	void StartPaint();

	void EndPaint();

	void DrawFrame(Rectangle rectangle);

	void DrawTabFrame(Rectangle rectangle, DockTabAlignmentStyle alignment);

	void DrawRectangle(Rectangle rectangle);
}
