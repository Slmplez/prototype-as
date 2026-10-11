using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class AllowHighlightEventArgs : DragControlEventArgs
{
	private bool m_AllowHighlight = true;

	public bool AllowHighlight
	{
		get
		{
			return m_AllowHighlight;
		}
		set
		{
			m_AllowHighlight = value;
		}
	}

	public AllowHighlightEventArgs(DragTarget dragTarget)
		: base(dragTarget, Rectangle.Empty)
	{
	}
}
