using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.None)]
[ToolboxBitmap(typeof(OfficeSplitButton), "ToolboxIcons.OfficeSplitButton.bmp")]
public class OfficeSplitButton : ToolStripSplitButton
{
	private const int DROPDOWN_BUTTON_WIDTH = 11;

	private const int TIMER_INT = 500;

	private bool m_bSplitButtonSelected;

	private Timer m_timer;

	private string m_sDropDownText = string.Empty;

	private Font m_ftDropDownFont;

	protected override Point DropDownLocation
	{
		get
		{
			if (base.Parent is MenuDropDown { AuxItemsBounds: { Size: { Width: >0, Height: >0 } } } menuDropDown)
			{
				return menuDropDown.PointToScreen(menuDropDown.AuxItemsBounds.Location);
			}
			return base.DropDownLocation;
		}
	}

	internal bool SplitButtonSelected
	{
		get
		{
			return m_bSplitButtonSelected;
		}
		set
		{
			if (m_bSplitButtonSelected != value)
			{
				m_bSplitButtonSelected = value;
				Invalidate();
			}
		}
	}

	[DefaultValue("")]
	[Category("Appearance")]
	public string DropDownText
	{
		get
		{
			return m_sDropDownText;
		}
		set
		{
			m_sDropDownText = value;
		}
	}

	[Category("Appearance")]
	public Font DropDownFont
	{
		get
		{
			if (m_ftDropDownFont == null)
			{
				return m_ftDropDownFont = new Font(Control.DefaultFont, FontStyle.Bold);
			}
			return m_ftDropDownFont;
		}
		set
		{
			m_ftDropDownFont = value;
		}
	}

	public OfficeSplitButton()
	{
		m_timer = new Timer();
		m_timer.Interval = 500;
		m_timer.Tick += OnTimerTick;
	}

	protected override void OnLayout(LayoutEventArgs e)
	{
		int num = base.Height / 2;
		base.DropDownButtonWidth = ((num < 11) ? 11 : num);
		base.OnLayout(e);
	}

	protected override void OnMouseMove(MouseEventArgs mea)
	{
		SplitButtonSelected = base.ButtonBounds.Contains(mea.Location);
		base.OnMouseMove(mea);
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		m_timer.Stop();
		base.OnMouseLeave(e);
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		m_timer.Start();
		base.OnMouseEnter(e);
	}

	protected override void OnDropDownOpened(EventArgs e)
	{
		if (base.DropDown is OfficeDropDown officeDropDown)
		{
			if (base.Parent != null && base.Parent.Renderer is RibbonControlAdvHeader.RibbonControlAdvHeaderRenderer renderer)
			{
				officeDropDown.Renderer = renderer;
			}
			officeDropDown.CaptionText = DropDownText;
			officeDropDown.CaptionFont = DropDownFont;
		}
		m_timer.Stop();
		base.OnDropDownOpened(e);
	}

	protected override ToolStripDropDown CreateDefaultDropDown()
	{
		return new OfficeDropDown(this);
	}

	private void OnTimerTick(object sender, EventArgs e)
	{
		base.DropDown.OwnerItem = this;
		base.DropDown.Bounds = new Rectangle(DropDownLocation, Size);
		ShowDropDown();
		Invalidate();
		m_timer.Stop();
	}

	private bool ShouldSerializeDropDownFont()
	{
		return m_ftDropDownFont != null;
	}

	private void ResetDropDownFont()
	{
		m_ftDropDownFont = null;
	}
}
