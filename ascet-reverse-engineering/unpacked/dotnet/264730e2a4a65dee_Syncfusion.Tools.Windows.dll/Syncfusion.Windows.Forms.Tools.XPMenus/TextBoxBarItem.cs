using System;
using System.ComponentModel;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
[DesignTimeVisible(false)]
[ToolboxItem(false)]
public class TextBoxBarItem : BarItemEx, IRequiresControl, ICloneable
{
	private string textBoxValue;

	private int minwidth = 40;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public string ControlType => "TextBox";

	[Browsable(false)]
	public object Value
	{
		get
		{
			return TextBoxValue;
		}
		set
		{
			if (value != null)
			{
				TextBoxValue = value.ToString();
			}
			else
			{
				TextBoxValue = string.Empty;
			}
		}
	}

	[DefaultValue("")]
	[Localizable(true)]
	public virtual string TextBoxValue
	{
		get
		{
			return textBoxValue;
		}
		set
		{
			if (textBoxValue != value)
			{
				textBoxValue = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "TextBoxValue", null, null));
			}
		}
	}

	[Localizable(true)]
	[DefaultValue(40)]
	public virtual int MinWidth
	{
		get
		{
			return minwidth;
		}
		set
		{
			if (minwidth != value)
			{
				minwidth = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedLayout, "Width", null, null));
			}
		}
	}

	[Description("Lets handle the textBox inside the textBoxItem.")]
	public event TextBoxItemBoundEventHandler TextBoxItemBound;

	public TextBoxBarItem()
		: this(MenuMerge.Add, 0, Shortcut.None, "", null, null, null)
	{
	}

	public TextBoxBarItem(string text)
		: this(MenuMerge.Add, 0, Shortcut.None, text, null, null, null)
	{
	}

	public TextBoxBarItem(string text, EventHandler onClick)
		: this(MenuMerge.Add, 0, Shortcut.None, text, onClick, null, null)
	{
	}

	public TextBoxBarItem(string text, EventHandler onClick, Shortcut shortcut)
		: this(MenuMerge.Add, 0, shortcut, text, onClick, null, null)
	{
	}

	public TextBoxBarItem(MenuMerge mergeType, int mergeOrder, Shortcut shortcut, string text, EventHandler onClick, EventHandler onPopup, EventHandler onSelect)
		: base(mergeType, mergeOrder, shortcut, text, onClick, onPopup, onSelect)
	{
		Init();
	}

	private void Init()
	{
	}

	public virtual void OnTextBoxItemBound(TextBoxItemBoundEventArgs e)
	{
		if (this.TextBoxItemBound != null)
		{
			this.TextBoxItemBound(this, e);
		}
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	public override object Clone()
	{
		TextBoxBarItem textBoxBarItem = new TextBoxBarItem();
		CopyTo(textBoxBarItem);
		return textBoxBarItem;
	}

	public override void CopyTo(BarItem barItem)
	{
		if (!(barItem is TextBoxBarItem))
		{
			throw new ArgumentException("barItem should be of type TextBoxBarItem.", "barItem");
		}
		base.CopyTo(barItem);
		TextBoxBarItem textBoxBarItem = barItem as TextBoxBarItem;
		textBoxBarItem.TextBoxValue = TextBoxValue;
		textBoxBarItem.MinWidth = MinWidth;
	}

	protected TextBoxBarItem(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		Init();
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			SerializationEntry current = enumerator.Current;
			switch (current.Name)
			{
			case "TextBoxValue":
				TextBoxValue = (string)current.Value;
				break;
			case "MinWidth":
				if (current.Value is string)
				{
					MinWidth = (int)Convert.ChangeType(current.Value, typeof(int));
				}
				else
				{
					MinWidth = (int)current.Value;
				}
				break;
			}
		}
	}

	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
		info.AddValue("TextBoxValue", TextBoxValue);
		info.AddValue("MinWidth", MinWidth);
	}
}
