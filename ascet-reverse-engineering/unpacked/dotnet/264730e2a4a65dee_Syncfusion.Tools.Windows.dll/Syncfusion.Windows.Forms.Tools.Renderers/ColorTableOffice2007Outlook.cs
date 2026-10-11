using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class ColorTableOffice2007Outlook : ColorTableOffice2007Base
{
	protected override void InitOffice2007BlueColors()
	{
		m_TextColor = Color.FromArgb(33, 77, 140);
		m_BorderColor = Color.FromArgb(181, 207, 247);
		m_InnerBorderColor = Color.FromArgb(222, 235, 255);
		m_CaptionUpperTopColor = Color.FromArgb(231, 235, 255);
		m_CaptionUpperBottomColor = Color.FromArgb(222, 231, 255);
		m_CaptionLowerTopColor = Color.FromArgb(206, 223, 247);
		m_CaptionLowerBottomColor = Color.FromArgb(222, 247, 255);
		m_ActiveCaptionUpperTopColor = Color.FromArgb(255, 223, 156);
		m_ActiveCaptionUpperBottomColor = Color.FromArgb(255, 203, 123);
		m_ActiveCaptionLowerTopColor = Color.FromArgb(255, 170, 82);
		m_ActiveCaptionLowerBottomColor = Color.FromArgb(255, 219, 140);
		m_ActiveButtonColor = Color.FromArgb(255, 199, 99);
		m_PushedButtonColor = Color.FromArgb(239, 130, 8);
		m_ButtonColor = Color.FromArgb(214, 232, 255);
		m_SplitterColor = Color.FromArgb(219, 230, 244);
		m_ButtonImageColor = Color.FromArgb(82, 125, 181);
		m_ActiveButtonImageColor = Color.FromArgb(0, 0, 0);
	}

	protected override void InitOffice2007BlackColors()
	{
		m_TextColor = Color.FromArgb(255, 252, 248);
		m_BorderColor = Color.FromArgb(41, 44, 41);
		m_InnerBorderColor = Color.FromArgb(148, 158, 165);
		m_CaptionUpperTopColor = Color.FromArgb(99, 105, 115);
		m_CaptionUpperBottomColor = Color.FromArgb(57, 60, 66);
		m_CaptionLowerTopColor = Color.FromArgb(41, 40, 41);
		m_CaptionLowerBottomColor = Color.FromArgb(66, 65, 66);
		m_ActiveCaptionUpperTopColor = Color.FromArgb(225, 193, 136);
		m_ActiveCaptionUpperBottomColor = Color.FromArgb(225, 183, 113);
		m_ActiveCaptionLowerTopColor = Color.FromArgb(225, 150, 62);
		m_ActiveCaptionLowerBottomColor = Color.FromArgb(225, 199, 120);
		m_ActiveButtonColor = Color.FromArgb(255, 199, 99);
		m_PushedButtonColor = Color.FromArgb(239, 130, 8);
		m_ButtonColor = Color.FromArgb(181, 182, 198);
		m_SplitterColor = Color.FromArgb(82, 81, 82);
		m_ButtonImageColor = Color.FromArgb(206, 211, 214);
		m_ActiveButtonImageColor = Color.FromArgb(99, 101, 99);
	}

	protected override void InitOffice2007SilverColors()
	{
		m_TextColor = Color.FromArgb(74, 81, 90);
		m_BorderColor = Color.FromArgb(198, 190, 198);
		m_InnerBorderColor = Color.FromArgb(247, 247, 255);
		m_CaptionUpperTopColor = Color.FromArgb(247, 243, 235);
		m_CaptionUpperBottomColor = Color.FromArgb(222, 223, 239);
		m_CaptionLowerTopColor = Color.FromArgb(206, 203, 214);
		m_CaptionLowerBottomColor = Color.FromArgb(222, 223, 222);
		m_ActiveCaptionUpperTopColor = Color.FromArgb(255, 223, 156);
		m_ActiveCaptionUpperBottomColor = Color.FromArgb(255, 203, 123);
		m_ActiveCaptionLowerTopColor = Color.FromArgb(255, 170, 82);
		m_ActiveCaptionLowerBottomColor = Color.FromArgb(255, 219, 140);
		m_ActiveButtonColor = Color.FromArgb(255, 195, 99);
		m_PushedButtonColor = Color.FromArgb(239, 125, 8);
		m_ButtonColor = Color.FromArgb(255, 251, 255);
		m_SplitterColor = Color.FromArgb(231, 235, 247);
		m_ButtonImageColor = Color.FromArgb(99, 105, 115);
		m_ActiveButtonImageColor = Color.FromArgb(74, 77, 82);
	}
}
