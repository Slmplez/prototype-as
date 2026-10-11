using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
[ToolboxItem(false)]
public class FlatVScrollBar : FlatScrollBar
{
	protected override CreateParams CreateParams
	{
		[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ClassName = null;
			createParams.Style |= 2097152;
			return createParams;
		}
	}

	[Browsable(false)]
	public override RightToLeft RightToLeft
	{
		get
		{
			return RightToLeft.No;
		}
		set
		{
		}
	}

	public FlatVScrollBar()
	{
		base.Size = new Size(SystemInformation.VerticalScrollBarWidth + 1, 80);
		scrollBarType = FlatScrollBarType.Vertical;
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		int verticalScrollBarWidth = SystemInformation.VerticalScrollBarWidth;
		if ((!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !XPThemes.IsAppThemed) && width <= verticalScrollBarWidth)
		{
			base.SetBoundsCore(x - 1, y, verticalScrollBarWidth + 1, height, specified);
		}
		else
		{
			base.SetBoundsCore(x, y, width, height, specified);
		}
	}
}
