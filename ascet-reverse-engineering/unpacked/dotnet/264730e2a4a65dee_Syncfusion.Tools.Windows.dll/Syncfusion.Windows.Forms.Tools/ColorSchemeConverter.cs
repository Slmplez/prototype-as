using System;

namespace Syncfusion.Windows.Forms.Tools;

internal static class ColorSchemeConverter
{
	public static Office2007Theme ToOffice2007Theme(ToolStripEx.ColorScheme colorScheme)
	{
		return colorScheme switch
		{
			ToolStripEx.ColorScheme.Silver => Office2007Theme.Silver, 
			ToolStripEx.ColorScheme.Blue => Office2007Theme.Blue, 
			ToolStripEx.ColorScheme.Black => Office2007Theme.Black, 
			ToolStripEx.ColorScheme.Managed => Office2007Theme.Managed, 
			_ => throw new NotSupportedException("Converting from " + colorScheme.ToString() + "to Office2007Theme isn't supported."), 
		};
	}
}
