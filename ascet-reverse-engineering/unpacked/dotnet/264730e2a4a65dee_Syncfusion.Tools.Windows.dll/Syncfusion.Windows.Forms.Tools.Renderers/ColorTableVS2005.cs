using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class ColorTableVS2005 : ColorTableBase
{
	protected Color m_TextColor;

	protected Color m_ActiveTextColor;

	protected Color m_BorderColor;

	protected Color m_InnerBorderColor;

	protected Color m_CaptionTopColor;

	protected Color m_CaptionBottomColor;

	protected Color m_ActiveCaptionTopColor;

	protected Color m_ActiveCaptionBottomColor;

	protected Color m_ButtonBorderColor;

	protected Color m_ActiveButtonBorderColor;

	protected Color m_ActiveButtonColor;

	protected Color m_PushedButtonColor;

	protected Color m_ButtonColor;

	protected Color m_SplitterColor;

	protected Color m_ButtonImageColor;

	protected Color m_ActiveButtonImageColor;

	protected bool m_bThemesXP;

	public Color TextColor
	{
		get
		{
			if (m_bThemesXP)
			{
				return m_TextColor;
			}
			return SystemColors.InactiveCaptionText;
		}
	}

	public Color ActiveTextColor
	{
		get
		{
			if (m_bThemesXP)
			{
				return m_ActiveTextColor;
			}
			return SystemColors.ActiveCaptionText;
		}
	}

	public Color BorderColor => m_BorderColor;

	public Color InnerBorderColor => m_InnerBorderColor;

	public Color CaptionTopColor
	{
		get
		{
			if (m_bThemesXP)
			{
				return m_CaptionTopColor;
			}
			return SystemColors.InactiveCaption;
		}
	}

	public Color CaptionBottomColor
	{
		get
		{
			if (m_bThemesXP)
			{
				return m_CaptionBottomColor;
			}
			return SystemColors.InactiveCaption;
		}
	}

	public Color ActiveCaptionTopColor
	{
		get
		{
			if (m_bThemesXP)
			{
				return m_ActiveCaptionTopColor;
			}
			return SystemColors.ActiveCaption;
		}
	}

	public Color ActiveCaptionBottomColor
	{
		get
		{
			if (m_bThemesXP)
			{
				return m_ActiveCaptionBottomColor;
			}
			return SystemColors.ActiveCaption;
		}
	}

	public Color ButtonBorderColor => m_ButtonBorderColor;

	public Color ActiveButtonBorderColor => m_ActiveButtonBorderColor;

	public Color ButtonImageColor
	{
		get
		{
			if (m_bThemesXP)
			{
				return m_ButtonImageColor;
			}
			return SystemColors.InactiveCaptionText;
		}
	}

	public Color ActiveButtonImageColor
	{
		get
		{
			if (m_bThemesXP)
			{
				return m_ActiveButtonImageColor;
			}
			return SystemColors.ActiveCaptionText;
		}
	}

	public Color ActiveButtonColor
	{
		get
		{
			if (m_bThemesXP)
			{
				return m_ActiveButtonColor;
			}
			return SystemColors.ActiveCaption;
		}
	}

	public Color PushedButtonColor
	{
		get
		{
			if (m_bThemesXP)
			{
				return m_PushedButtonColor;
			}
			return Color.FromArgb(SystemColors.ActiveCaption.R + (255 - SystemColors.ActiveCaption.R) / 4, SystemColors.ActiveCaption.G + (255 - SystemColors.ActiveCaption.G) / 4, SystemColors.ActiveCaption.B + (255 - SystemColors.ActiveCaption.B) / 4);
		}
	}

	public Color ButtonColor
	{
		get
		{
			if (m_bThemesXP)
			{
				return m_ButtonColor;
			}
			return SystemColors.InactiveCaption;
		}
	}

	public Color SplitterColor => m_SplitterColor;

	protected override void InitWindowsClassicColors()
	{
		m_bThemesXP = false;
		m_BorderColor = Color.FromArgb(128, 128, 128);
		m_InnerBorderColor = Color.FromArgb(230, 230, 230);
		m_ButtonBorderColor = Color.FromArgb(255, 255, 255);
		m_ActiveButtonBorderColor = Color.FromArgb(255, 255, 255);
		m_SplitterColor = Color.FromArgb(246, 245, 244);
	}

	protected override void InitXPBlueColors()
	{
		m_bThemesXP = true;
		m_TextColor = Color.FromArgb(0, 0, 0);
		m_ActiveTextColor = Color.FromArgb(255, 255, 255);
		m_BorderColor = Color.FromArgb(172, 168, 153);
		m_InnerBorderColor = Color.FromArgb(239, 238, 235);
		m_CaptionTopColor = Color.FromArgb(204, 199, 186);
		m_CaptionBottomColor = Color.FromArgb(204, 199, 186);
		m_ActiveCaptionTopColor = Color.FromArgb(59, 128, 237);
		m_ActiveCaptionBottomColor = Color.FromArgb(49, 106, 197);
		m_ButtonBorderColor = Color.FromArgb(140, 134, 123);
		m_ActiveButtonBorderColor = Color.FromArgb(60, 90, 170);
		m_ActiveButtonColor = Color.FromArgb(156, 182, 231);
		m_PushedButtonColor = Color.FromArgb(120, 150, 210);
		m_ButtonColor = Color.FromArgb(236, 233, 216);
		m_SplitterColor = Color.FromArgb(244, 242, 232);
		m_ButtonImageColor = Color.FromArgb(0, 0, 0);
		m_ActiveButtonImageColor = Color.FromArgb(255, 255, 255);
	}

	protected override void InitXPSilverColors()
	{
		m_bThemesXP = true;
		m_TextColor = Color.FromArgb(0, 0, 0);
		m_ActiveTextColor = Color.FromArgb(0, 0, 0);
		m_BorderColor = Color.FromArgb(145, 155, 156);
		m_InnerBorderColor = Color.FromArgb(233, 235, 236);
		m_CaptionTopColor = Color.FromArgb(240, 240, 245);
		m_CaptionBottomColor = Color.FromArgb(240, 240, 245);
		m_ActiveCaptionTopColor = Color.FromArgb(211, 212, 221);
		m_ActiveCaptionBottomColor = Color.FromArgb(166, 165, 191);
		m_ButtonBorderColor = Color.FromArgb(123, 125, 148);
		m_ActiveButtonBorderColor = Color.FromArgb(74, 73, 107);
		m_ActiveButtonColor = Color.FromArgb(255, 227, 173);
		m_PushedButtonColor = Color.FromArgb(255, 182, 115);
		m_ButtonColor = Color.FromArgb(214, 215, 222);
		m_SplitterColor = Color.FromArgb(243, 243, 247);
		m_ButtonImageColor = Color.FromArgb(0, 0, 0);
		m_ActiveButtonImageColor = Color.FromArgb(0, 0, 0);
	}

	protected override void InitXPOliveColors()
	{
		m_bThemesXP = true;
		m_TextColor = Color.FromArgb(0, 0, 0);
		m_ActiveTextColor = Color.FromArgb(255, 255, 255);
		m_BorderColor = Color.FromArgb(172, 168, 153);
		m_InnerBorderColor = Color.FromArgb(239, 238, 235);
		m_CaptionTopColor = Color.FromArgb(204, 199, 186);
		m_CaptionBottomColor = Color.FromArgb(204, 199, 186);
		m_ActiveCaptionTopColor = Color.FromArgb(182, 195, 146);
		m_ActiveCaptionBottomColor = Color.FromArgb(145, 160, 117);
		m_ButtonBorderColor = Color.FromArgb(140, 134, 123);
		m_ActiveButtonBorderColor = Color.FromArgb(118, 128, 95);
		m_ActiveButtonColor = Color.FromArgb(181, 199, 140);
		m_PushedButtonColor = Color.FromArgb(148, 162, 115);
		m_ButtonColor = Color.FromArgb(236, 233, 216);
		m_SplitterColor = Color.FromArgb(244, 242, 232);
		m_ButtonImageColor = Color.FromArgb(0, 0, 0);
		m_ActiveButtonImageColor = Color.FromArgb(255, 255, 255);
	}

	protected override void InitXPZuneColors()
	{
		m_bThemesXP = true;
		m_TextColor = Color.FromArgb(0, 0, 0);
		m_ActiveTextColor = Color.FromArgb(255, 255, 255);
		m_BorderColor = Color.FromArgb(172, 168, 153);
		m_InnerBorderColor = Color.FromArgb(239, 238, 235);
		m_CaptionTopColor = Color.FromArgb(204, 199, 186);
		m_CaptionBottomColor = Color.FromArgb(204, 199, 186);
		m_ActiveCaptionTopColor = Color.FromArgb(45, 45, 45);
		m_ActiveCaptionBottomColor = Color.FromArgb(75, 75, 75);
		m_ButtonBorderColor = Color.FromArgb(140, 134, 123);
		m_ActiveButtonBorderColor = Color.FromArgb(68, 68, 68);
		m_ActiveButtonColor = Color.FromArgb(52, 52, 52);
		m_PushedButtonColor = Color.FromArgb(52, 52, 52);
		m_ButtonColor = Color.FromArgb(236, 233, 216);
		m_SplitterColor = Color.FromArgb(244, 242, 232);
		m_ButtonImageColor = Color.FromArgb(0, 0, 0);
		m_ActiveButtonImageColor = Color.FromArgb(255, 255, 255);
	}
}
