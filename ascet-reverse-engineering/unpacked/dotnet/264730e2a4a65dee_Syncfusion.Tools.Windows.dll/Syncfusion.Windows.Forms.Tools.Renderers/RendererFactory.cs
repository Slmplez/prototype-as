namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal class RendererFactory
{
	public static IStyleRenderer GetRenderer(VisualStyle style)
	{
		return style switch
		{
			VisualStyle.Default => null, 
			VisualStyle.VS2005 => new RendererVS2005(), 
			VisualStyle.Office2007 => new RendererOffice2007(), 
			VisualStyle.Office2007Outlook => new RendererOffice2007Outlook(), 
			_ => new RendererOffice2003(), 
		};
	}
}
