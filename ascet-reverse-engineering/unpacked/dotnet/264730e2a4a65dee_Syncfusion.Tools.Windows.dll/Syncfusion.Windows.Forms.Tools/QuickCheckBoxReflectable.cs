using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.None)]
public class QuickCheckBoxReflectable : ToolStripCheckBox, IQuickItem
{
	private ToolStripCheckBox m_reflectedCheckBox;

	private bool m_bExactCopy;

	public ToolStripCheckBox ReflectedCheckBox
	{
		get
		{
			return m_reflectedCheckBox;
		}
		set
		{
			if (m_reflectedCheckBox != null)
			{
				m_reflectedCheckBox.EnabledChanged -= OnReflectedCheckBoxEnabledChanged;
				m_reflectedCheckBox.CheckedChanged -= OnReflectedCheckBoxCheckedChanged;
				m_reflectedCheckBox.CheckStateChanged -= OnReflectedCheckBoxCheckStateChanged;
			}
			m_reflectedCheckBox = value;
			if (m_reflectedCheckBox != null)
			{
				m_reflectedCheckBox.EnabledChanged += OnReflectedCheckBoxEnabledChanged;
				m_reflectedCheckBox.CheckedChanged += OnReflectedCheckBoxCheckedChanged;
				m_reflectedCheckBox.CheckStateChanged += OnReflectedCheckBoxCheckStateChanged;
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
			if (m_reflectedCheckBox != null)
			{
				return m_reflectedCheckBox.Enabled;
			}
			return false;
		}
		set
		{
			if (m_reflectedCheckBox != null)
			{
				m_reflectedCheckBox.Enabled = value;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override RightToLeft RightToLeft
	{
		get
		{
			if (m_reflectedCheckBox != null)
			{
				return m_reflectedCheckBox.RightToLeft;
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
			if (m_bExactCopy && m_reflectedCheckBox != null && !base.AutoSize)
			{
				return m_reflectedCheckBox.Size;
			}
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	public Component ReflectedComponent => m_reflectedCheckBox;

	public QuickCheckBoxReflectable()
	{
		base.DisplayStyle = ToolStripItemDisplayStyle.Image;
	}

	public QuickCheckBoxReflectable(ToolStripCheckBox reflectedItem)
		: this(reflectedItem, bExactCopy: false)
	{
	}

	internal QuickCheckBoxReflectable(ToolStripCheckBox reflectedItem, bool bExactCopy)
		: this()
	{
		m_bExactCopy = bExactCopy;
		ReflectedCheckBox = reflectedItem;
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		if (m_bExactCopy && m_reflectedCheckBox != null)
		{
			return m_reflectedCheckBox.GetPreferredSize(constrainingSize);
		}
		return base.GetPreferredSize(constrainingSize);
	}

	protected override void OnClick(EventArgs e)
	{
		base.OnClick(e);
		m_reflectedCheckBox.PerformClick();
	}

	private void OnReflectedCheckBoxEnabledChanged(object sender, EventArgs e)
	{
		Invalidate();
	}

	private void OnReflectedCheckBoxCheckedChanged(object sender, EventArgs e)
	{
		base.Checked = m_reflectedCheckBox.Checked;
	}

	private void OnReflectedCheckBoxCheckStateChanged(object sender, EventArgs e)
	{
		base.CheckState = m_reflectedCheckBox.CheckState;
	}

	public void Reset()
	{
		if (m_reflectedCheckBox != null)
		{
			Image = m_reflectedCheckBox.Image;
			Text = m_reflectedCheckBox.Text;
			base.ThreeState = m_reflectedCheckBox.ThreeState;
			base.CheckState = m_reflectedCheckBox.CheckState;
			base.Checked = m_reflectedCheckBox.Checked;
			base.ToolTipText = m_reflectedCheckBox.ToolTipText;
			if (m_bExactCopy)
			{
				base.AutoSize = m_reflectedCheckBox.AutoSize;
				TextAlign = m_reflectedCheckBox.TextAlign;
				base.CheckAlign = m_reflectedCheckBox.CheckAlign;
			}
			Invalidate();
		}
	}

	public bool Reflects(IComponent c)
	{
		return c == m_reflectedCheckBox;
	}
}
