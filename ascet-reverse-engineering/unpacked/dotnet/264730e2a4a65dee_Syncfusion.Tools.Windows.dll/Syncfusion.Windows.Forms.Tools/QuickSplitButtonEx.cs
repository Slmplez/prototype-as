using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class QuickSplitButtonEx : ToolStripSplitButtonEx, IQuickItem
{
	private ToolStripSplitButtonEx m_reflectedItem;

	private bool m_bExactCopy;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ToolStripSplitButtonEx ReflectedItem
	{
		get
		{
			return m_reflectedItem;
		}
		set
		{
			if (m_reflectedItem != null)
			{
				m_reflectedItem.EnabledChanged -= OnEnabledChanged;
			}
			m_reflectedItem = value;
			if (m_reflectedItem != null)
			{
				m_reflectedItem.EnabledChanged += OnEnabledChanged;
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
			if (m_reflectedItem != null)
			{
				return m_reflectedItem.Enabled;
			}
			return false;
		}
		set
		{
			if (m_reflectedItem != null)
			{
				m_reflectedItem.Enabled = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override RightToLeft RightToLeft
	{
		get
		{
			if (m_reflectedItem != null)
			{
				return m_reflectedItem.RightToLeft;
			}
			return base.RightToLeft;
		}
		set
		{
			base.RightToLeft = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override Size Size
	{
		get
		{
			if (m_bExactCopy && m_reflectedItem != null && !base.AutoSize)
			{
				return m_reflectedItem.Size;
			}
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	public Component ReflectedComponent => m_reflectedItem;

	public QuickSplitButtonEx(ToolStripSplitButtonEx item)
		: this(item, bExactCopy: false)
	{
	}

	public QuickSplitButtonEx(ToolStripSplitButtonEx item, bool bExactCopy)
	{
		m_bExactCopy = bExactCopy;
		ReflectedItem = item;
	}

	protected override void Dispose(bool disposing)
	{
		base.DropDown = null;
		base.Dispose(disposing);
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		if (m_bExactCopy && m_reflectedItem != null)
		{
			return m_reflectedItem.GetPreferredSize(constrainingSize);
		}
		return base.GetPreferredSize(constrainingSize);
	}

	protected override void OnOwnerChanged(EventArgs e)
	{
		if (base.Owner == null && base.DropDown.OwnerItem == this)
		{
			base.DropDown.OwnerItem = m_reflectedItem;
		}
		base.OnOwnerChanged(e);
	}

	protected override void OnClick(EventArgs e)
	{
		base.OnClick(e);
		m_reflectedItem.PerformClick();
	}

	public void Reset()
	{
		if (m_reflectedItem != null)
		{
			base.DropDown = m_reflectedItem.DropDown;
			Image = m_reflectedItem.Image;
			Text = m_reflectedItem.Text;
			base.ToolTipText = m_reflectedItem.ToolTipText;
			if (m_bExactCopy)
			{
				base.AutoSize = m_reflectedItem.AutoSize;
				DisplayStyle = m_reflectedItem.DisplayStyle;
				base.ImageAlign = m_reflectedItem.ImageAlign;
				base.ImageScaling = m_reflectedItem.ImageScaling;
				TextAlign = m_reflectedItem.TextAlign;
				base.TextImageRelation = m_reflectedItem.TextImageRelation;
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
		return c == m_reflectedItem;
	}

	private void OnEnabledChanged(object sender, EventArgs e)
	{
		Invalidate();
	}
}
