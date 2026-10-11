using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Enums;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public abstract class Renderer : IRenderer
{
	public virtual IRendererInfo UpdateRendererInfo(SplitContainerAdv instance, IRendererInfo iri)
	{
		RendererInfo rendererInfo = iri as RendererInfo;
		if (iri == null)
		{
			rendererInfo = new RendererInfo();
		}
		rendererInfo.Orientation = instance.Orientation;
		rendererInfo.DrawState = instance.DrawState;
		rendererInfo.Enabled = instance.Enabled;
		rendererInfo.IgnoreThemeBackground = instance.IgnoreThemeBackground;
		rendererInfo.ThemedControl = instance.ThemedControl;
		rendererInfo.ThemesEnabled = instance.ThemesEnabled;
		return rendererInfo;
	}

	public abstract void DrawBackground(PaintEventArgs e, IRendererInfo ri, Rectangle bounds);

	public abstract void DrawHotBackground(PaintEventArgs e, IRendererInfo ri, Rectangle bounds);

	public abstract void DrawThumbnail(PaintEventArgs e, IRendererInfo ri, Rectangle bounds);

	public abstract void DrawHotThumbnail(PaintEventArgs e, IRendererInfo ri, Rectangle bounds);

	public abstract void DrawForeground(PaintEventArgs e, IRendererInfo ri, Rectangle bounds);

	public abstract void DrawHotForeground(PaintEventArgs e, IRendererInfo ri, Rectangle bounds);

	public virtual IRendererInfo GetAppropriateThemeSettings(SplitContainerAdv instance, bool bInit)
	{
		return UpdateRendererInfo(instance, null);
	}

	public virtual bool CompareWithDefaultValue(RendererProperty property, object value)
	{
		return value?.Equals(GetDefaultValue(property)) ?? false;
	}

	public abstract object GetDefaultValue(RendererProperty property);

	public virtual void Draw(PaintEventArgs e, IRendererInfo ri, Rectangle bounds)
	{
		e.Graphics.SmoothingMode = SmoothingMode.AntiAlias;
		if (ri.DrawState == DrawState.Normal)
		{
			DrawBackground(e, ri, bounds);
			DrawForeground(e, ri, bounds);
			DrawThumbnail(e, ri, bounds);
		}
		else if (ri.DrawState == DrawState.Hovered)
		{
			DrawHotBackground(e, ri, bounds);
			DrawHotForeground(e, ri, bounds);
			DrawHotThumbnail(e, ri, bounds);
		}
	}

	public static Renderer GetRenderer(Style style)
	{
		Renderer instance = BasicRenderer.GetInstance();
		switch (style)
		{
		case Style.Office2007Blue:
			instance = Office2007BlueRenderer.GetInstance();
			break;
		case Style.Office2007Black:
			instance = Office2007BlackRenderer.GetInstance();
			break;
		case Style.Office2007Silver:
			instance = Office2007SilverRenderer.GetInstance();
			break;
		case Style.Office2003:
			instance = Office2003Renderer.GetInstance();
			break;
		case Style.OfficeXP:
			instance = OfficeXPRenderer.GetInstance();
			break;
		case Style.VS2005:
			instance = VS2005Renderer.GetInstance();
			break;
		case Style.Mozilla:
			instance = MozillaRenderer.GetInstance();
			break;
		case Style.Default:
			instance = DefaultRenderer.GetInstance();
			break;
		}
		return instance;
	}
}
