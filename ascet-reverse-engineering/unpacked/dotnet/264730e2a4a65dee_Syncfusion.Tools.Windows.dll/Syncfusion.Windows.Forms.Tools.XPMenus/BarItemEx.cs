using System;
using System.ComponentModel;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class BarItemEx : BarItem
{
	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public new bool HandleDoubleClick
	{
		get
		{
			return base.HandleDoubleClick;
		}
		set
		{
			base.HandleDoubleClick = value;
		}
	}

	protected BarItemEx()
	{
	}

	protected BarItemEx(MenuMerge mergeType, int mergeOrder, Shortcut shortcut, string text, EventHandler onClick, EventHandler onPopup, EventHandler onSelect)
		: base(mergeType, mergeOrder, shortcut, text, onClick, onPopup, onSelect)
	{
	}

	protected BarItemEx(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	protected BarItemEx(string text)
		: base(text)
	{
	}

	protected BarItemEx(string text, EventHandler onClick)
		: base(text, onClick)
	{
	}

	protected BarItemEx(string text, EventHandler onClick, Shortcut shortcut)
		: base(text, onClick, shortcut)
	{
	}
}
