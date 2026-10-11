using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.None)]
public class QuickRadioButtonReflectable : ToolStripRadioButton, IQuickItem
{
	private ToolStripRadioButton m_reflectedRadioButton;

	private bool m_bExactCopy;

	public ToolStripRadioButton ReflectedRadioButton
	{
		get
		{
			return m_reflectedRadioButton;
		}
		set
		{
			if (m_reflectedRadioButton != null)
			{
				m_reflectedRadioButton.EnabledChanged -= OnReflectedRadioButtonEnabledChanged;
				m_reflectedRadioButton.CheckedChanged -= OnReflectedRadioButtonCheckedChanged;
			}
			m_reflectedRadioButton = value;
			if (m_reflectedRadioButton != null)
			{
				m_reflectedRadioButton.EnabledChanged += OnReflectedRadioButtonEnabledChanged;
				m_reflectedRadioButton.CheckedChanged += OnReflectedRadioButtonCheckedChanged;
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
			if (m_reflectedRadioButton != null)
			{
				return m_reflectedRadioButton.Enabled;
			}
			return false;
		}
		set
		{
			if (m_reflectedRadioButton != null)
			{
				m_reflectedRadioButton.Enabled = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override RightToLeft RightToLeft
	{
		get
		{
			if (m_reflectedRadioButton != null)
			{
				return m_reflectedRadioButton.RightToLeft;
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
			if (m_bExactCopy && m_reflectedRadioButton != null && !base.AutoSize)
			{
				return m_reflectedRadioButton.Size;
			}
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	public override int GroupID
	{
		get
		{
			return m_reflectedRadioButton.GroupID;
		}
		set
		{
			m_reflectedRadioButton.GroupID = value;
		}
	}

	public Component ReflectedComponent => m_reflectedRadioButton;

	public QuickRadioButtonReflectable()
	{
		base.DisplayStyle = ToolStripItemDisplayStyle.Image;
	}

	public QuickRadioButtonReflectable(ToolStripRadioButton reflectedItem)
		: this(reflectedItem, bExactCopy: false)
	{
	}

	internal QuickRadioButtonReflectable(ToolStripRadioButton reflectedItem, bool bExactCopy)
		: this()
	{
		m_bExactCopy = bExactCopy;
		ReflectedRadioButton = reflectedItem;
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		if (m_bExactCopy && m_reflectedRadioButton != null)
		{
			return m_reflectedRadioButton.GetPreferredSize(constrainingSize);
		}
		return base.GetPreferredSize(constrainingSize);
	}

	protected override void OnClick(EventArgs e)
	{
		base.OnClick(e);
		m_reflectedRadioButton.PerformClick();
	}

	protected internal override void CheckCurrentButton()
	{
	}

	protected internal override void CheckCurrentUncheckedButton()
	{
	}

	protected internal override void CheckRemainingUncheckedButtons()
	{
	}

	private void OnReflectedRadioButtonEnabledChanged(object sender, EventArgs e)
	{
		Invalidate();
	}

	private void OnReflectedRadioButtonCheckedChanged(object sender, EventArgs e)
	{
		base.Checked = m_reflectedRadioButton.Checked;
	}

	public void Reset()
	{
		if (m_reflectedRadioButton != null)
		{
			Image = m_reflectedRadioButton.Image;
			GroupID = m_reflectedRadioButton.GroupID;
			Text = m_reflectedRadioButton.Text;
			base.ToolTipText = m_reflectedRadioButton.ToolTipText;
			base.Checked = m_reflectedRadioButton.Checked;
			if (m_bExactCopy)
			{
				base.AutoSize = m_reflectedRadioButton.AutoSize;
				TextAlign = m_reflectedRadioButton.TextAlign;
				base.CheckAlign = m_reflectedRadioButton.CheckAlign;
			}
			Invalidate();
		}
	}

	public bool Reflects(IComponent c)
	{
		return c == m_reflectedRadioButton;
	}
}
