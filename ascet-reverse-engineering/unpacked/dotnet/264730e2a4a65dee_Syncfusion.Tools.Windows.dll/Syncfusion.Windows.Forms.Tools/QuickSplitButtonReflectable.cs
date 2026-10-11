using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.None)]
public class QuickSplitButtonReflectable : ToolStripSplitButton, IQuickItem
{
	private ToolStripSplitButton m_reflectedSplitButton;

	private bool m_bExactCopy;

	public ToolStripSplitButton ReflectedSplitButton
	{
		get
		{
			return m_reflectedSplitButton;
		}
		set
		{
			if (m_reflectedSplitButton != null)
			{
				m_reflectedSplitButton.EnabledChanged -= OnReflectedSplitButtonEnabledChanged;
			}
			m_reflectedSplitButton = value;
			if (m_reflectedSplitButton != null)
			{
				m_reflectedSplitButton.EnabledChanged += OnReflectedSplitButtonEnabledChanged;
			}
			Reset();
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override bool Enabled
	{
		get
		{
			if (m_reflectedSplitButton != null)
			{
				return m_reflectedSplitButton.Enabled;
			}
			return false;
		}
		set
		{
			if (m_reflectedSplitButton != null)
			{
				m_reflectedSplitButton.Enabled = value;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override RightToLeft RightToLeft
	{
		get
		{
			if (m_reflectedSplitButton != null)
			{
				return m_reflectedSplitButton.RightToLeft;
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
			if (m_bExactCopy && m_reflectedSplitButton != null && !base.AutoSize)
			{
				return m_reflectedSplitButton.Size;
			}
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	public Component ReflectedComponent => m_reflectedSplitButton;

	public QuickSplitButtonReflectable()
	{
		DisplayStyle = ToolStripItemDisplayStyle.Image;
	}

	public QuickSplitButtonReflectable(ToolStripSplitButton reflectedItem)
		: this(reflectedItem, bExactCopy: false)
	{
	}

	public QuickSplitButtonReflectable(ToolStripSplitButton reflectedItem, bool bExactCopy)
		: this()
	{
		m_bExactCopy = bExactCopy;
		ReflectedSplitButton = reflectedItem;
	}

	protected override void Dispose(bool disposing)
	{
		base.DropDown = null;
		base.Dispose(disposing);
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		if (m_bExactCopy && m_reflectedSplitButton != null)
		{
			return m_reflectedSplitButton.GetPreferredSize(constrainingSize);
		}
		return base.GetPreferredSize(constrainingSize);
	}

	protected override void OnOwnerChanged(EventArgs e)
	{
		if (base.Owner == null && base.DropDown.OwnerItem == this)
		{
			base.DropDown.OwnerItem = m_reflectedSplitButton;
		}
		base.OnOwnerChanged(e);
	}

	protected override void OnButtonClick(EventArgs e)
	{
		base.OnButtonClick(e);
		m_reflectedSplitButton.PerformButtonClick();
	}

	private void OnReflectedSplitButtonEnabledChanged(object sender, EventArgs e)
	{
		Invalidate();
	}

	public void Reset()
	{
		if (m_reflectedSplitButton != null)
		{
			base.DropDown = m_reflectedSplitButton.DropDown;
			Image = m_reflectedSplitButton.Image;
			Text = m_reflectedSplitButton.Text;
			base.ToolTipText = m_reflectedSplitButton.ToolTipText;
			if (m_bExactCopy)
			{
				base.AutoSize = m_reflectedSplitButton.AutoSize;
				DisplayStyle = m_reflectedSplitButton.DisplayStyle;
				base.ImageAlign = m_reflectedSplitButton.ImageAlign;
				base.ImageScaling = m_reflectedSplitButton.ImageScaling;
				TextAlign = m_reflectedSplitButton.TextAlign;
				base.TextImageRelation = m_reflectedSplitButton.TextImageRelation;
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
		return c == m_reflectedSplitButton;
	}
}
