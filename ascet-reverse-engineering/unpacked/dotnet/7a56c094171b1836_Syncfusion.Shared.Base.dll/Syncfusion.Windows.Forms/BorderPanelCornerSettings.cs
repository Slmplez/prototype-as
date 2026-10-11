using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms;

[TypeConverter(typeof(ExpandableObjectConverter))]
public class BorderPanelCornerSettings
{
	private int topLeft;

	private int topRight;

	private int bottomLeft;

	private int bottomRight;

	public static BorderPanelCornerSettings Default => new BorderPanelCornerSettings();

	[Description("Indicates the BottomRight round corner radius.")]
	public int BottomRight
	{
		get
		{
			return bottomRight;
		}
		set
		{
			if (bottomRight != value)
			{
				bottomRight = value;
				StateChanged();
			}
		}
	}

	[Description("Indicates the BottomLeft round corner radius.")]
	public int BottomLeft
	{
		get
		{
			return bottomLeft;
		}
		set
		{
			if (bottomLeft != value)
			{
				bottomLeft = value;
				StateChanged();
			}
		}
	}

	[Description("Indicates the TopRight round corner radius.")]
	public int TopRight
	{
		get
		{
			return topRight;
		}
		set
		{
			if (topRight != value)
			{
				topRight = value;
				StateChanged();
			}
		}
	}

	[Description("Indicates the TopLeft round corner radius.")]
	public int TopLeft
	{
		get
		{
			return topLeft;
		}
		set
		{
			if (topLeft != value)
			{
				topLeft = value;
				StateChanged();
			}
		}
	}

	[Description("Sets all the other values to the specified value.")]
	public int All
	{
		get
		{
			return topLeft;
		}
		set
		{
			topLeft = value;
			topRight = value;
			bottomLeft = value;
			bottomRight = value;
			StateChanged();
		}
	}

	public event EventHandler SettingsChanged;

	protected virtual void OnSettingsChanged(EventArgs e)
	{
		if (this.SettingsChanged != null)
		{
			this.SettingsChanged(this, e);
		}
	}

	public static bool operator ==(BorderPanelCornerSettings c1, BorderPanelCornerSettings c2)
	{
		if (c1.TopLeft == c2.TopLeft && c1.TopRight == c2.TopRight && c1.BottomLeft == c2.BottomLeft)
		{
			return c1.BottomRight == c2.BottomRight;
		}
		return false;
	}

	public static bool operator !=(BorderPanelCornerSettings c1, BorderPanelCornerSettings c2)
	{
		return !(c1 == c2);
	}

	public override bool Equals(object o)
	{
		if (o is BorderPanelCornerSettings)
		{
			return this == (BorderPanelCornerSettings)o;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}

	private void StateChanged()
	{
		OnSettingsChanged(EventArgs.Empty);
	}

	public BorderPanelCornerSettings(int topLeft, int topRight, int bottomLeft, int bottomRight)
	{
		this.topLeft = topLeft;
		this.topRight = topRight;
		this.bottomLeft = bottomLeft;
		this.bottomRight = bottomRight;
	}

	public BorderPanelCornerSettings()
		: this(20, 20, 20, 20)
	{
	}

	public BorderPanelCornerSettings(int all)
		: this(all, all, all, all)
	{
	}
}
