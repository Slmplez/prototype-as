using System;
using System.ComponentModel;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
[ToolboxItem(false)]
[DesignTimeVisible(false)]
public class DropDownBarItem : BarItemEx, ICloneable, IParentBarItem, ISerializable, IIgnoreWorkingArea
{
	private PopupControlContainer popupContainer;

	private ParentBarItemStyle parentStyle = ParentBarItemStyle.DropDown;

	private bool m_bIgnoreWorkingArea;

	[Description("PopupControlContainer that will be dropped down from this item when placed in a menu or toolbar.")]
	[DefaultValue(null)]
	[Category("Behavior")]
	public PopupControlContainer PopupControlContainer
	{
		get
		{
			return popupContainer;
		}
		set
		{
			if (popupContainer != value)
			{
				popupContainer = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "PopupControlContainer", null, null));
			}
		}
	}

	[Description("Indicates the ParentBarItemStyle in which the menu will be drawn.")]
	[DefaultValue(ParentBarItemStyle.DropDown)]
	[Category("Behavior")]
	[Localizable(true)]
	public virtual ParentBarItemStyle ParentStyle
	{
		get
		{
			return parentStyle;
		}
		set
		{
			if (parentStyle != value)
			{
				parentStyle = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "ParentStyle", null, null));
			}
		}
	}

	[DefaultValue(false)]
	public bool IgnoreWorkingArea
	{
		get
		{
			return m_bIgnoreWorkingArea;
		}
		set
		{
			m_bIgnoreWorkingArea = value;
		}
	}

	public DropDownBarItem()
		: this(MenuMerge.Add, 0, Shortcut.None, "", null, null, null)
	{
	}

	public DropDownBarItem(string text)
		: this(MenuMerge.Add, 0, Shortcut.None, text, null, null, null)
	{
	}

	public DropDownBarItem(string text, EventHandler onClick)
		: this(MenuMerge.Add, 0, Shortcut.None, text, onClick, null, null)
	{
	}

	public DropDownBarItem(string text, EventHandler onClick, Shortcut shortcut)
		: this(MenuMerge.Add, 0, shortcut, text, onClick, null, null)
	{
	}

	public DropDownBarItem(MenuMerge mergeType, int mergeOrder, Shortcut shortcut, string text, EventHandler onClick, EventHandler onPopup, EventHandler onSelect)
		: base(mergeType, mergeOrder, shortcut, text, onClick, onPopup, onSelect)
	{
		Init();
	}

	private void Init()
	{
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && popupContainer != null)
		{
			popupContainer.Dispose();
			popupContainer = null;
		}
		base.Dispose(disposing);
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	public override object Clone()
	{
		DropDownBarItem dropDownBarItem = new DropDownBarItem();
		base.CopyTo(dropDownBarItem);
		return dropDownBarItem;
	}

	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
	}

	protected DropDownBarItem(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		Init();
	}
}
