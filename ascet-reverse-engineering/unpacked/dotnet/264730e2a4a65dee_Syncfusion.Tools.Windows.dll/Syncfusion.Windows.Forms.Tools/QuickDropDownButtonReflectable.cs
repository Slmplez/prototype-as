using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.None)]
public class QuickDropDownButtonReflectable : ToolStripDropDownButton, IQuickItem
{
	private ToolStripDropDownButton m_reflectedDropDownButton;

	private bool m_bExactCopy;

	public ToolStripDropDownButton ReflectedDropDownButton
	{
		get
		{
			return m_reflectedDropDownButton;
		}
		set
		{
			if (m_reflectedDropDownButton != null)
			{
				m_reflectedDropDownButton.EnabledChanged -= OnReflectedDropDownButtonEnabledChanged;
			}
			m_reflectedDropDownButton = value;
			if (m_reflectedDropDownButton != null)
			{
				m_reflectedDropDownButton.EnabledChanged += OnReflectedDropDownButtonEnabledChanged;
			}
			Reset();
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override bool Enabled
	{
		get
		{
			if (m_reflectedDropDownButton != null)
			{
				return m_reflectedDropDownButton.Enabled;
			}
			return false;
		}
		set
		{
			if (m_reflectedDropDownButton != null)
			{
				m_reflectedDropDownButton.Enabled = value;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override RightToLeft RightToLeft
	{
		get
		{
			if (m_reflectedDropDownButton != null)
			{
				return m_reflectedDropDownButton.RightToLeft;
			}
			return base.RightToLeft;
		}
		set
		{
			base.RightToLeft = value;
		}
	}

	public override Size Size
	{
		get
		{
			if (m_bExactCopy && m_reflectedDropDownButton != null && !base.AutoSize)
			{
				return m_reflectedDropDownButton.Size;
			}
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	public Component ReflectedComponent => m_reflectedDropDownButton;

	public QuickDropDownButtonReflectable()
	{
		DisplayStyle = ToolStripItemDisplayStyle.Image;
	}

	public QuickDropDownButtonReflectable(ToolStripDropDownButton reflectedItem)
		: this(reflectedItem, bExactCopy: false)
	{
	}

	internal QuickDropDownButtonReflectable(ToolStripDropDownButton reflectedItem, bool bExactCopy)
		: this()
	{
		m_bExactCopy = bExactCopy;
		ReflectedDropDownButton = reflectedItem;
	}

	protected override void Dispose(bool disposing)
	{
		base.DropDown = null;
		base.Dispose(disposing);
	}

	protected override void OnOwnerChanged(EventArgs e)
	{
		if (base.Owner == null && base.DropDown.OwnerItem == this)
		{
			base.DropDown.OwnerItem = m_reflectedDropDownButton;
		}
		base.OnOwnerChanged(e);
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		if (m_bExactCopy && m_reflectedDropDownButton != null)
		{
			return m_reflectedDropDownButton.GetPreferredSize(constrainingSize);
		}
		return base.GetPreferredSize(constrainingSize);
	}

	private void OnReflectedDropDownButtonEnabledChanged(object sender, EventArgs e)
	{
		Invalidate();
	}

	public void Reset()
	{
		if (m_reflectedDropDownButton != null)
		{
			base.DropDown = m_reflectedDropDownButton.DropDown;
			Image = m_reflectedDropDownButton.Image;
			Text = m_reflectedDropDownButton.Text;
			base.ToolTipText = m_reflectedDropDownButton.ToolTipText;
			if (m_bExactCopy)
			{
				base.AutoSize = m_reflectedDropDownButton.AutoSize;
				DisplayStyle = m_reflectedDropDownButton.DisplayStyle;
				base.ShowDropDownArrow = m_reflectedDropDownButton.ShowDropDownArrow;
				base.ImageAlign = m_reflectedDropDownButton.ImageAlign;
				base.ImageScaling = m_reflectedDropDownButton.ImageScaling;
				TextAlign = m_reflectedDropDownButton.TextAlign;
				base.TextImageRelation = m_reflectedDropDownButton.TextImageRelation;
			}
			else
			{
				DisplayStyle = ((Image == null) ? ToolStripItemDisplayStyle.Text : ToolStripItemDisplayStyle.Image);
			}
			Invalidate();
		}
	}

	public bool Reflects(IComponent c)
	{
		return c == m_reflectedDropDownButton;
	}
}
