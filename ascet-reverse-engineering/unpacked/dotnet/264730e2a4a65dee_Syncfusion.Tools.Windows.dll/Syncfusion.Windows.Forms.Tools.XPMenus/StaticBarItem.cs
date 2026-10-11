using System;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Serializable]
public class StaticBarItem : BarItemEx, ICloneable, ISerializable
{
	private Color flatBorderColor = Color.Empty;

	[Browsable(false)]
	public override bool Checked
	{
		get
		{
			return base.Checked;
		}
		set
		{
			base.Checked = value;
		}
	}

	[Browsable(false)]
	public override bool Enabled
	{
		get
		{
			return base.Enabled;
		}
		set
		{
			base.Enabled = value;
		}
	}

	[Browsable(false)]
	public override bool IsRecentlyUsedItem
	{
		get
		{
			return base.IsRecentlyUsedItem;
		}
		set
		{
			base.IsRecentlyUsedItem = value;
		}
	}

	[Browsable(false)]
	public override Shortcut Shortcut
	{
		get
		{
			return base.Shortcut;
		}
		set
		{
			base.Shortcut = value;
		}
	}

	[Category("Appearance")]
	public virtual Color FlatBorderColor
	{
		get
		{
			return flatBorderColor;
		}
		set
		{
			if (flatBorderColor != value)
			{
				Color color = flatBorderColor;
				flatBorderColor = value;
				OnPropertyChanged(new SyncfusionPropertyChangedEventArgs(PropertyChangeEffect.NeedRepaint, "FlatBorderColor", color, flatBorderColor));
			}
		}
	}

	public StaticBarItem()
	{
		Init();
	}

	public StaticBarItem(string text)
		: base(text)
	{
		Init();
	}

	private void Init()
	{
	}

	[Browsable(false)]
	public void ResetFlatBorderColor()
	{
		flatBorderColor = Color.Empty;
	}

	[Browsable(false)]
	public bool ShouldSerializeFlatBorderColor()
	{
		if (flatBorderColor == Color.Empty)
		{
			return false;
		}
		return true;
	}

	object ICloneable.Clone()
	{
		return Clone();
	}

	public override object Clone()
	{
		StaticBarItem staticBarItem = new StaticBarItem();
		CopyTo(staticBarItem);
		return staticBarItem;
	}

	public override void CopyTo(BarItem barItem)
	{
		if (!(barItem is StaticBarItem))
		{
			throw new ArgumentException("barItem should be of type StaticBarItem.", "barItem");
		}
		base.CopyTo(barItem);
		StaticBarItem staticBarItem = barItem as StaticBarItem;
		staticBarItem.FlatBorderColor = FlatBorderColor;
	}

	protected StaticBarItem(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		Init();
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			SerializationEntry current = enumerator.Current;
			string name;
			if ((name = current.Name) != null && name == "FlatBorderColor")
			{
				FlatBorderColor = (Color)current.Value;
			}
		}
	}

	public override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
		info.AddValue("FlatBorderColor", FlatBorderColor);
	}
}
