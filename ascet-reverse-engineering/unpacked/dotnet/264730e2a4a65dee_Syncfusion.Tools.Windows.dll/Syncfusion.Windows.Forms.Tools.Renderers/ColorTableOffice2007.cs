using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class ColorTableOffice2007 : ColorTableOffice2007Base
{
	protected Color m_ButtonBorderColor;

	protected Color m_ActiveButtonBorderColor;

	protected Color m_PushedButtonBorderColor;

	public Color ButtonBorderColor => m_ButtonBorderColor;

	public Color ActiveButtonBorderColor => m_ActiveButtonBorderColor;

	public Color PushedButtonBorderColor => m_PushedButtonBorderColor;

	protected override void InitOffice2007BlueColors()
	{
		m_TextColor = Color.FromArgb(16, 65, 140);
		m_BorderColor = Color.FromArgb(181, 207, 247);
		m_InnerBorderColor = Color.FromArgb(222, 235, 255);
		m_CaptionUpperTopColor = Color.FromArgb(231, 235, 255);
		m_CaptionUpperBottomColor = Color.FromArgb(222, 231, 255);
		m_CaptionLowerTopColor = Color.FromArgb(206, 223, 247);
		m_CaptionLowerBottomColor = Color.FromArgb(222, 247, 255);
		m_ActiveCaptionUpperTopColor = Color.FromArgb(198, 223, 255);
		m_ActiveCaptionUpperBottomColor = Color.FromArgb(231, 231, 231);
		m_ActiveCaptionLowerTopColor = Color.FromArgb(214, 227, 227);
		m_ActiveCaptionLowerBottomColor = Color.FromArgb(231, 211, 165);
		m_ButtonBorderColor = Color.FromArgb(101, 147, 207);
		m_ActiveButtonBorderColor = Color.FromArgb(255, 189, 105);
		m_PushedButtonBorderColor = Color.FromArgb(251, 140, 60);
		m_ActiveButtonColor = Color.FromArgb(255, 231, 162);
		m_PushedButtonColor = Color.FromArgb(251, 140, 60);
		m_ButtonColor = Color.FromArgb(214, 232, 255);
		m_SplitterColor = Color.FromArgb(219, 230, 244);
		m_ButtonImageColor = Color.FromArgb(140, 166, 206);
		m_ActiveButtonImageColor = Color.FromArgb(99, 101, 99);
	}

	protected override void InitOffice2007BlackColors()
	{
		m_TextColor = Color.FromArgb(255, 255, 255);
		m_BorderColor = Color.FromArgb(41, 44, 41);
		m_InnerBorderColor = Color.FromArgb(148, 146, 148);
		m_CaptionUpperTopColor = Color.FromArgb(66, 69, 82);
		m_CaptionUpperBottomColor = Color.FromArgb(57, 60, 66);
		m_CaptionLowerTopColor = Color.FromArgb(41, 48, 49);
		m_CaptionLowerBottomColor = Color.FromArgb(57, 60, 57);
		m_ActiveCaptionUpperTopColor = Color.FromArgb(148, 150, 148);
		m_ActiveCaptionUpperBottomColor = Color.FromArgb(115, 109, 90);
		m_ActiveCaptionLowerTopColor = Color.FromArgb(107, 105, 90);
		m_ActiveCaptionLowerBottomColor = Color.FromArgb(231, 190, 41);
		m_ButtonBorderColor = Color.FromArgb(82, 93, 99);
		m_ActiveButtonBorderColor = Color.FromArgb(239, 186, 107);
		m_PushedButtonBorderColor = Color.FromArgb(255, 162, 49);
		m_ActiveButtonColor = Color.FromArgb(255, 207, 74);
		m_PushedButtonColor = Color.FromArgb(255, 162, 49);
		m_ButtonColor = Color.FromArgb(115, 125, 140);
		m_SplitterColor = Color.FromArgb(82, 81, 82);
		m_ButtonImageColor = Color.FromArgb(206, 211, 214);
		m_ActiveButtonImageColor = Color.FromArgb(99, 101, 99);
	}

	protected override void InitOffice2007SilverColors()
	{
		m_TextColor = Color.FromArgb(90, 97, 107);
		m_BorderColor = Color.FromArgb(198, 190, 198);
		m_InnerBorderColor = Color.FromArgb(247, 247, 255);
		m_CaptionUpperTopColor = Color.FromArgb(231, 227, 231);
		m_CaptionUpperBottomColor = Color.FromArgb(206, 208, 214);
		m_CaptionLowerTopColor = Color.FromArgb(189, 195, 206);
		m_CaptionLowerBottomColor = Color.FromArgb(239, 239, 247);
		m_ActiveCaptionUpperTopColor = Color.FromArgb(222, 219, 231);
		m_ActiveCaptionUpperBottomColor = Color.FromArgb(239, 231, 222);
		m_ActiveCaptionLowerTopColor = Color.FromArgb(231, 223, 214);
		m_ActiveCaptionLowerBottomColor = Color.FromArgb(239, 211, 148);
		m_ButtonBorderColor = Color.FromArgb(206, 207, 206);
		m_ActiveButtonBorderColor = Color.FromArgb(206, 182, 157);
		m_PushedButtonBorderColor = Color.FromArgb(255, 162, 49);
		m_ActiveButtonColor = Color.FromArgb(255, 211, 74);
		m_PushedButtonColor = Color.FromArgb(255, 162, 49);
		m_ButtonColor = Color.FromArgb(247, 251, 255);
		m_SplitterColor = Color.FromArgb(239, 243, 239);
		m_ButtonImageColor = Color.FromArgb(140, 154, 181);
		m_ActiveButtonImageColor = Color.FromArgb(66, 69, 66);
	}

	protected override void InitOffice2007ManagedColors()
	{
		Office2007Colors colorTable = Office2007Colors.GetColorTable(Office2007Theme.Managed);
		m_TextColor = colorTable.FormTextColor;
		m_BorderColor = colorTable.ActiveFormBorderColor;
		m_InnerBorderColor = colorTable.ActiveFormBorderColor;
		m_CaptionUpperTopColor = colorTable.InactiveTitleGradientBegin;
		m_CaptionUpperBottomColor = colorTable.InactiveTitleGradientBegin;
		m_CaptionLowerTopColor = colorTable.InactiveTitleGradientBegin;
		m_CaptionLowerBottomColor = colorTable.InactiveTitleGradientEnd;
		m_ActiveCaptionUpperTopColor = colorTable.ActiveTitleGradientBegin;
		m_ActiveCaptionUpperBottomColor = colorTable.ActiveTitleGradientBegin;
		m_ActiveCaptionLowerTopColor = colorTable.ActiveTitleGradientBegin;
		m_ActiveCaptionLowerBottomColor = colorTable.ActiveTitleGradientEnd;
		m_ButtonBorderColor = colorTable.ButtonDefaultBorderColor;
		m_ActiveButtonBorderColor = colorTable.ButtonSelectedBorderColor;
		m_PushedButtonBorderColor = colorTable.ButtonPressedBorderColor;
		m_ActiveButtonColor = colorTable.SystemButtonSelectedGradientBegin;
		m_PushedButtonColor = colorTable.SystemButtonPressedGradientBegin;
		m_ButtonColor = Color.FromArgb(247, 251, 255);
		m_SplitterColor = colorTable.TabBarSplitterBackColor;
		m_ButtonImageColor = Color.FromArgb(140, 154, 181);
		m_ActiveButtonImageColor = Color.FromArgb(66, 69, 66);
	}
}
