using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Enums;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public interface IRenderer
{
	IRendererInfo UpdateRendererInfo(SplitContainerAdv instance, IRendererInfo ri);

	void Draw(PaintEventArgs e, IRendererInfo ri, Rectangle bounds);

	void DrawBackground(PaintEventArgs e, IRendererInfo ri, Rectangle bounds);

	void DrawHotBackground(PaintEventArgs e, IRendererInfo ri, Rectangle bounds);

	void DrawThumbnail(PaintEventArgs e, IRendererInfo ri, Rectangle bounds);

	void DrawHotThumbnail(PaintEventArgs e, IRendererInfo ri, Rectangle bounds);

	void DrawForeground(PaintEventArgs e, IRendererInfo ri, Rectangle bounds);

	void DrawHotForeground(PaintEventArgs e, IRendererInfo ri, Rectangle bounds);

	IRendererInfo GetAppropriateThemeSettings(SplitContainerAdv instance, bool bInit);

	bool CompareWithDefaultValue(RendererProperty property, object value);

	object GetDefaultValue(RendererProperty property);
}
