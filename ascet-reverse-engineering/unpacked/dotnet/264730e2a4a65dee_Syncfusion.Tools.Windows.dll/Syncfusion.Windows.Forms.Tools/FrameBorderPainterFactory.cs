namespace Syncfusion.Windows.Forms.Tools;

internal class FrameBorderPainterFactory
{
	public static IFrameBorderPainter GetPainter(FramePainter framePainter)
	{
		IFrameBorderPainter frameBorderPainter = framePainter.Painter;
		switch (framePainter.PainterType)
		{
		case PainterType.Halftone:
			if (!(frameBorderPainter is HalftoneBorderPainter))
			{
				frameBorderPainter = new HalftoneBorderPainter();
			}
			break;
		case PainterType.Colored:
			if (!(frameBorderPainter is ColorBorderPainter colorBorderPainter))
			{
				frameBorderPainter = ((framePainter.Brush == null) ? new ColorBorderPainter(framePainter.Color) : new ColorBorderPainter(framePainter.Brush));
				break;
			}
			if (framePainter.Brush != null)
			{
				colorBorderPainter.Brush = framePainter.Brush;
			}
			else
			{
				colorBorderPainter.BrushColor = framePainter.Color;
			}
			if (colorBorderPainter.Opacity != framePainter.Opacity)
			{
				colorBorderPainter.Opacity = framePainter.Opacity;
			}
			break;
		case PainterType.Custom:
			frameBorderPainter = ((framePainter.Painter == null) ? new HalftoneBorderPainter() : framePainter.Painter);
			break;
		}
		return frameBorderPainter;
	}
}
