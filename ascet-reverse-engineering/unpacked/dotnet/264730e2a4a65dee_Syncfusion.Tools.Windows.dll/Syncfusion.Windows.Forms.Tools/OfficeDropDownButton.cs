using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(OfficeDropDownButton), "ToolboxIcons.OfficeDropDownButton.bmp")]
[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.None)]
public class OfficeDropDownButton : ToolStripDropDownButton
{
	private const int ARROW_BUTTON_WIDTH = 9;

	private const int TIMER_INT = 500;

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

	public OfficeDropDownButton()
	{
		m_timer = new Timer();
		m_timer.Interval = 500;
		m_timer.Tick += OnTimerTick;
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		Size preferredSize = base.GetPreferredSize(constrainingSize);
		if (base.ShowDropDownArrow)
		{
			int num = base.Height / 2;
			if (num > 9)
			{
				preferredSize.Width += num - 9;
			}
		}
		return preferredSize;
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
