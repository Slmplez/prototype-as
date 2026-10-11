using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class ColorTableOffice2007Base : ColorTableBase
{
	protected Office2007Theme m_Office2007Theme;

	protected Color m_TextColor;

	protected Color m_ActiveTextColor;

	protected Color m_BorderColor;

	protected Color m_InnerBorderColor;

	protected Color m_CaptionUpperTopColor;

	protected Color m_CaptionUpperBottomColor;

	protected Color m_CaptionLowerTopColor;

	protected Color m_CaptionLowerBottomColor;

	protected Color m_ActiveCaptionUpperTopColor;

	protected Color m_ActiveCaptionUpperBottomColor;

	protected Color m_ActiveCaptionLowerTopColor;

	protected Color m_ActiveCaptionLowerBottomColor;

	protected Color m_ActiveButtonColor;

	protected Color m_PushedButtonColor;

	protected Color m_ButtonColor;

	protected Color m_SplitterColor;

	protected Color m_ButtonImageColor;

	protected Color m_ActiveButtonImageColor;

	public Office2007Theme Office2007Theme
	{
		get
		{
			return m_Office2007Theme;
		}
		set
		{
			if (m_Office2007Theme != value || value == Office2007Theme.Managed)
			{
				m_Office2007Theme = value;
				InitColorTable();
			}
		}
	}

	public Color TextColor => m_TextColor;

	public Color OuterBorderColor => m_BorderColor;

	public Color InnerBorderColor => m_InnerBorderColor;

	public Color CaptionUpperTopColor => m_CaptionUpperTopColor;

	public Color CaptionUpperBottomColor => m_CaptionUpperBottomColor;

	public Color CaptionLowerTopColor => m_CaptionLowerTopColor;

	public Color CaptionLowerBottomColor => m_CaptionLowerBottomColor;

	public Color ActiveCaptionUpperTopColor => m_ActiveCaptionUpperTopColor;

	public Color ActiveCaptionUpperBottomColor => m_ActiveCaptionUpperBottomColor;

	public Color ActiveCaptionLowerTopColor => m_ActiveCaptionLowerTopColor;

	public Color ActiveCaptionLowerBottomColor => m_ActiveCaptionLowerBottomColor;

	public Color ActiveButtonColor => m_ActiveButtonColor;

	public Color PushedButtonColor => m_PushedButtonColor;

	public Color ButtonColor => m_ButtonColor;

	public Color SplitterColor => m_SplitterColor;

	public Color ButtonImageColor => m_ButtonImageColor;

	public Color ActiveButtonImageColor => m_ActiveButtonImageColor;

	public override void InitColorTable()
	{
		switch (m_Office2007Theme)
		{
		case Office2007Theme.Blue:
			InitOffice2007BlueColors();
			break;
		case Office2007Theme.Black:
			InitOffice2007BlackColors();
			break;
		case Office2007Theme.Silver:
			InitOffice2007SilverColors();
			break;
		case Office2007Theme.Managed:
			InitOffice2007ManagedColors();
			break;
		}
	}

	public void InitColorTable(Office2007Theme theme)
	{
		switch (theme)
		{
		case Office2007Theme.Blue:
			InitOffice2007BlueColors();
			break;
		case Office2007Theme.Silver:
			InitOffice2007SilverColors();
			break;
		case Office2007Theme.Black:
			InitOffice2007BlackColors();
			break;
		case Office2007Theme.Managed:
			InitOffice2007ManagedColors();
			break;
		}
	}

	public override bool RefreshColors()
	{
		InitColorTable();
		return true;
	}

	protected virtual void InitOffice2007BlueColors()
	{
	}

	protected virtual void InitOffice2007SilverColors()
	{
	}

	protected virtual void InitOffice2007BlackColors()
	{
	}

	protected virtual void InitOffice2007ManagedColors()
	{
	}
}
