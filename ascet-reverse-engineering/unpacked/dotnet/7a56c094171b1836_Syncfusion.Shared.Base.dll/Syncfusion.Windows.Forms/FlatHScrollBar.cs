using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
[ToolboxItem(false)]
public class FlatHScrollBar : FlatScrollBar
{
	protected override CreateParams CreateParams
	{
		[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ClassName = null;
			createParams.Style |= 1048576;
			return createParams;
		}
	}

	public FlatHScrollBar()
	{
		base.Size = new Size(75, SystemInformation.HorizontalScrollBarHeight + 1);
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		int horizontalScrollBarHeight = SystemInformation.HorizontalScrollBarHeight;
		if (height <= horizontalScrollBarHeight)
		{
			base.SetBoundsCore(x, y - 1, width, horizontalScrollBarHeight + 1, specified);
		}
		else
		{
			base.SetBoundsCore(x, y, width, height, specified);
		}
	}
}
