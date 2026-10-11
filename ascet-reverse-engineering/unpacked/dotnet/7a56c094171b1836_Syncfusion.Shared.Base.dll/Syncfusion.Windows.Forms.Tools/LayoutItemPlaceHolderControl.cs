using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[DocumentationExclude]
public class LayoutItemPlaceHolderControl : Control, IProvideLayoutInformation
{
	private LayoutItemBase layoutItem;

	private bool visible;

	public LayoutItemBase LayoutComponent => layoutItem;

	[Obsolete("Use LayoutPreferredSize instead. There was a naming conflict with Whidbeys Control.PreferredSize property.")]
	public new Size PreferredSize => layoutItem.PreferredSize;

	[Obsolete("Use LayoutMinimumSize instead. There was a naming conflict with Whidbeys Control.PreferredSize property.")]
	public new Size MinimumSize => layoutItem.MinimumSize;

	public Size LayoutPreferredSize => layoutItem.PreferredSize;

	public Size LayoutMinimumSize => layoutItem.MinimumSize;

	public new virtual bool Visible
	{
		get
		{
			return visible;
		}
		set
		{
			base.Visible = value;
		}
	}

	protected internal LayoutManager LayoutManager
	{
		set
		{
			layoutItem.LayoutManager = value;
		}
	}

	public LayoutItemPlaceHolderControl(LayoutItemBase layoutItem)
	{
		this.layoutItem = layoutItem;
	}

	protected override void SetVisibleCore(bool value)
	{
		if (visible != value)
		{
			visible = value;
		}
		base.OnLocationChanged(EventArgs.Empty);
	}
}
