using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public class ColorTableOffice2003 : ColorTableBase
{
	protected Color m_TextColor;

	protected Color m_ActiveTextColor;

	protected Color m_OuterBorderColor;

	protected Color m_InnerBorderColor;

	protected Color m_CaptionTopColor;

	protected Color m_CaptionBottomColor;

	protected Color m_ActiveCaptionTopColor;

	protected Color m_ActiveCaptionBottomColor;

	protected Color m_GripperForegroundColor;

	protected Color m_GripperBackgroundColor;

	protected Color m_ButtonBorderColor;

	protected Color m_ActiveButtonTopColor;

	protected Color m_ActiveButtonBottomColor;

	protected Color m_PushedButtonTopColor;

	protected Color m_PushedButtonBottomColor;

	protected Color m_ButtonImageColor;

	protected Color m_PushedButtonImageColor;

	public Color TextColor => m_TextColor;

	public Color ActiveTextColor => m_ActiveTextColor;

	public Color OuterBorderColor => m_OuterBorderColor;

	public Color InnerBorderColor => m_InnerBorderColor;

	public Color CaptionTopColor => m_CaptionTopColor;

	public Color CaptionBottomColor => m_CaptionBottomColor;

	public Color ActiveCaptionTopColor => m_ActiveCaptionTopColor;

	public Color ActiveCaptionBottomColor => m_ActiveCaptionBottomColor;

	public Color GripperForegroundColor => m_GripperForegroundColor;

	public Color GripperBackgroundColor => m_GripperBackgroundColor;

	public Color ButtonBorderColor => m_ButtonBorderColor;

	public Color ActiveButtonTopColor => m_ActiveButtonTopColor;

	public Color ActiveButtonBottomColor => m_ActiveButtonBottomColor;

	public Color PushedButtonTopColor => m_PushedButtonTopColor;

	public Color PushedButtonBottomColor => m_PushedButtonBottomColor;

	public Color ButtonImageColor => m_ButtonImageColor;

	public Color PushedButtonImageColor => m_PushedButtonImageColor;

	protected override void InitWindowsClassicColors()
	{
		m_TextColor = Color.FromArgb(0, 0, 0);
		m_ActiveTextColor = Color.FromArgb(0, 0, 0);
		m_OuterBorderColor = Color.FromArgb(128, 128, 128);
		m_InnerBorderColor = Color.FromArgb(234, 232, 228);
		m_CaptionTopColor = Color.FromArgb(243, 242, 240);
		m_CaptionBottomColor = Color.FromArgb(212, 208, 200);
		m_ActiveCaptionTopColor = Color.FromArgb(212, 213, 216);
		m_ActiveCaptionBottomColor = Color.FromArgb(212, 213, 216);
		m_GripperForegroundColor = Color.FromArgb(160, 160, 160);
		m_GripperBackgroundColor = Color.FromArgb(255, 255, 255);
		m_ButtonBorderColor = Color.FromArgb(10, 36, 106);
		m_ActiveButtonTopColor = Color.FromArgb(182, 189, 210);
		m_ActiveButtonBottomColor = Color.FromArgb(182, 189, 210);
		m_PushedButtonTopColor = Color.FromArgb(133, 146, 181);
		m_PushedButtonBottomColor = Color.FromArgb(133, 146, 181);
		m_ButtonImageColor = Color.FromArgb(0, 0, 0);
		m_PushedButtonImageColor = Color.FromArgb(255, 255, 255);
	}

	protected override void InitXPBlueColors()
	{
		m_TextColor = Color.FromArgb(0, 0, 0);
		m_ActiveTextColor = Color.FromArgb(0, 0, 0);
		m_OuterBorderColor = Color.FromArgb(42, 102, 201);
		m_InnerBorderColor = Color.FromArgb(185, 212, 249);
		m_CaptionTopColor = Color.FromArgb(218, 234, 253);
		m_CaptionBottomColor = Color.FromArgb(123, 164, 224);
		m_ActiveCaptionTopColor = Color.FromArgb(255, 213, 140);
		m_ActiveCaptionBottomColor = Color.FromArgb(255, 166, 76);
		m_GripperForegroundColor = Color.FromArgb(39, 65, 118);
		m_GripperBackgroundColor = Color.FromArgb(255, 255, 255);
		m_ButtonBorderColor = Color.FromArgb(0, 0, 128);
		m_ActiveButtonTopColor = Color.FromArgb(255, 233, 186);
		m_ActiveButtonBottomColor = Color.FromArgb(255, 208, 145);
		m_PushedButtonTopColor = Color.FromArgb(254, 163, 95);
		m_PushedButtonBottomColor = Color.FromArgb(255, 211, 142);
		m_ButtonImageColor = Color.FromArgb(0, 0, 0);
		m_PushedButtonImageColor = Color.FromArgb(255, 255, 255);
	}

	protected override void InitXPSilverColors()
	{
		m_TextColor = Color.FromArgb(0, 0, 0);
		m_ActiveTextColor = Color.FromArgb(0, 0, 0);
		m_OuterBorderColor = Color.FromArgb(122, 121, 153);
		m_InnerBorderColor = Color.FromArgb(255, 255, 255);
		m_CaptionTopColor = Color.FromArgb(240, 240, 248);
		m_CaptionBottomColor = Color.FromArgb(147, 145, 176);
		m_ActiveCaptionTopColor = Color.FromArgb(255, 213, 140);
		m_ActiveCaptionBottomColor = Color.FromArgb(255, 166, 76);
		m_GripperForegroundColor = Color.FromArgb(84, 84, 117);
		m_GripperBackgroundColor = Color.FromArgb(255, 255, 255);
		m_ButtonBorderColor = Color.FromArgb(75, 75, 111);
		m_ActiveButtonTopColor = Color.FromArgb(255, 233, 186);
		m_ActiveButtonBottomColor = Color.FromArgb(255, 208, 145);
		m_PushedButtonTopColor = Color.FromArgb(254, 163, 95);
		m_PushedButtonBottomColor = Color.FromArgb(255, 211, 142);
		m_ButtonImageColor = Color.FromArgb(0, 0, 0);
		m_PushedButtonImageColor = Color.FromArgb(255, 255, 255);
	}

	protected override void InitXPOliveColors()
	{
		m_TextColor = Color.FromArgb(0, 0, 0);
		m_ActiveTextColor = Color.FromArgb(0, 0, 0);
		m_OuterBorderColor = Color.FromArgb(116, 134, 94);
		m_InnerBorderColor = Color.FromArgb(255, 255, 255);
		m_CaptionTopColor = Color.FromArgb(237, 242, 212);
		m_CaptionBottomColor = Color.FromArgb(181, 196, 143);
		m_ActiveCaptionTopColor = Color.FromArgb(255, 213, 140);
		m_ActiveCaptionBottomColor = Color.FromArgb(255, 166, 76);
		m_GripperForegroundColor = Color.FromArgb(81, 94, 51);
		m_GripperBackgroundColor = Color.FromArgb(255, 255, 255);
		m_ButtonBorderColor = Color.FromArgb(63, 93, 56);
		m_ActiveButtonTopColor = Color.FromArgb(255, 233, 186);
		m_ActiveButtonBottomColor = Color.FromArgb(255, 208, 145);
		m_PushedButtonTopColor = Color.FromArgb(254, 163, 95);
		m_PushedButtonBottomColor = Color.FromArgb(255, 211, 142);
		m_ButtonImageColor = Color.FromArgb(0, 0, 0);
		m_PushedButtonImageColor = Color.FromArgb(255, 255, 255);
	}
}
