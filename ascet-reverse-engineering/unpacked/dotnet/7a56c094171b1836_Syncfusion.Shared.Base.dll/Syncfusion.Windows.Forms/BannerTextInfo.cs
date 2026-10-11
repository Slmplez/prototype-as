using System.ComponentModel;
using System.Drawing;

namespace Syncfusion.Windows.Forms;

[TypeConverter(typeof(BannerTextInfoTypeConverter))]
public class BannerTextInfo
{
	private string m_sText = string.Empty;

	private bool m_bVisible;

	private Font m_font;

	private BannerTextMode m_mode;

	private Color m_color = SystemColors.ControlDark;

	public static readonly BannerTextInfo Empty;

	[DefaultValue("")]
	[Localizable(true)]
	[Description("Specifies banner text.")]
	public string Text
	{
		get
		{
			return m_sText;
		}
		set
		{
			m_sText = value;
		}
	}

	[Description("Specifies whether banner text is visible.")]
	[DefaultValue(false)]
	public bool Visible
	{
		get
		{
			return m_bVisible;
		}
		set
		{
			m_bVisible = value;
		}
	}

	[DefaultValue(null)]
	[Description("Specifies font of banner text.")]
	public Font Font
	{
		get
		{
			return m_font;
		}
		set
		{
			m_font = value;
		}
	}

	[Description("Specifies banner text rendering mode. See BannerTextMode for details.")]
	[DefaultValue(BannerTextMode.FocusMode)]
	public BannerTextMode Mode
	{
		get
		{
			return m_mode;
		}
		set
		{
			m_mode = value;
		}
	}

	[Description("Specifies banner text color.")]
	public Color Color
	{
		get
		{
			return m_color;
		}
		set
		{
			m_color = value;
		}
	}

	static BannerTextInfo()
	{
		Empty = new BannerTextInfo();
	}

	public BannerTextInfo()
	{
	}

	public BannerTextInfo(BannerTextInfo other)
	{
		Color = other.Color;
		Font = other.Font;
		Mode = other.Mode;
		Text = other.Text;
		Visible = other.Visible;
	}

	public BannerTextInfo(string text, bool bVisible, Font font, Color color, BannerTextMode mode)
	{
		Text = text;
		Visible = bVisible;
		Font = font;
		Color = color;
		Mode = mode;
	}

	protected bool ShouldSerializeColor()
	{
		return Color != Empty.Color;
	}

	protected void ResetColor()
	{
		Color = Empty.Color;
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}

	public override bool Equals(object obj)
	{
		bool flag = false;
		if (obj != null)
		{
			flag = object.ReferenceEquals(this, obj);
			if (!flag)
			{
				BannerTextInfo bannerTextInfo = obj as BannerTextInfo;
				if (bannerTextInfo != null)
				{
					flag = Text == bannerTextInfo.Text && Visible == bannerTextInfo.Visible && Color == bannerTextInfo.Color && Mode == bannerTextInfo.Mode;
					if (flag)
					{
						flag = ((Font == null) ? (bannerTextInfo.Font == null) : ((bannerTextInfo.Font != null) ? (Font.ToString() == bannerTextInfo.Font.ToString()) : (Font == null)));
					}
				}
			}
		}
		return flag;
	}

	public static bool operator ==(BannerTextInfo lVal, BannerTextInfo rVal)
	{
		if (!object.ReferenceEquals(lVal, null))
		{
			return lVal.Equals(rVal);
		}
		return object.ReferenceEquals(rVal, null);
	}

	public static bool operator !=(BannerTextInfo lVal, BannerTextInfo rVal)
	{
		return !(lVal == rVal);
	}
}
