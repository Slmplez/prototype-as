using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal abstract class CustomBorderPainter : IFrameBorderPainter
{
	private int tabHeight = 22;

	private bool isMirrored;

	public int TabHeight
	{
		get
		{
			return tabHeight;
		}
		set
		{
			tabHeight = value;
		}
	}

	public bool IsMirrored
	{
		get
		{
			return isMirrored;
		}
		set
		{
			isMirrored = value;
		}
	}

	public abstract void StartPaint();

	public abstract void EndPaint();

	public abstract void DrawFrame(Rectangle rectangle);

	public abstract void DrawTabFrame(Rectangle rectangle, DockTabAlignmentStyle alignment);

	public abstract void DrawRectangle(Rectangle rectangle);
}
