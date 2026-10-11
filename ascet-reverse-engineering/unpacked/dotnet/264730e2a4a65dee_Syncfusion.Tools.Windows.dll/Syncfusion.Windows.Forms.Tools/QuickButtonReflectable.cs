using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.None)]
public class QuickButtonReflectable : ToolStripButton, IQuickItem
{
	private ToolStripButton m_reflectedButton;

	private bool m_bExactCopy;

	public ToolStripButton ReflectedButton
	{
		get
		{
			return m_reflectedButton;
		}
		set
		{
			if (m_reflectedButton != null)
			{
				m_reflectedButton.EnabledChanged -= OnReflectedButtonEnabledChanged;
				m_reflectedButton.CheckedChanged -= OnReflectedButtonCheckedChanged;
			}
			m_reflectedButton = value;
			if (m_reflectedButton != null)
			{
				m_reflectedButton.EnabledChanged += OnReflectedButtonEnabledChanged;
				m_reflectedButton.CheckedChanged += OnReflectedButtonCheckedChanged;
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
			if (m_reflectedButton != null)
			{
				return m_reflectedButton.Enabled;
			}
			return false;
		}
		set
		{
			if (m_reflectedButton != null)
			{
				m_reflectedButton.Enabled = value;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override RightToLeft RightToLeft
	{
		get
		{
			if (m_reflectedButton != null)
			{
				return m_reflectedButton.RightToLeft;
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
			if (m_bExactCopy && m_reflectedButton != null && !base.AutoSize)
			{
				return m_reflectedButton.Size;
			}
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	public Component ReflectedComponent => m_reflectedButton;

	public QuickButtonReflectable()
	{
		DisplayStyle = ToolStripItemDisplayStyle.Image;
	}

	public QuickButtonReflectable(ToolStripButton reflectedButton)
		: this(reflectedButton, bExactCopy: false)
	{
	}

	internal QuickButtonReflectable(ToolStripButton reflectedButton, bool bExactCopy)
		: this()
	{
		m_bExactCopy = bExactCopy;
		ReflectedButton = reflectedButton;
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		if (m_bExactCopy && m_reflectedButton != null)
		{
			return m_reflectedButton.GetPreferredSize(constrainingSize);
		}
		return base.GetPreferredSize(constrainingSize);
	}

	protected override void OnClick(EventArgs e)
	{
		base.OnClick(e);
		m_reflectedButton.PerformClick();
	}

	private void OnReflectedButtonEnabledChanged(object sender, EventArgs e)
	{
		Invalidate();
	}

	private void OnReflectedButtonCheckedChanged(object sender, EventArgs e)
	{
		base.Checked = m_reflectedButton.Checked;
	}

	public void Reset()
	{
		if (m_reflectedButton != null)
		{
			base.AutoToolTip = m_reflectedButton.AutoToolTip;
			Image = m_reflectedButton.Image;
			Text = m_reflectedButton.Text;
			base.ToolTipText = m_reflectedButton.ToolTipText;
			base.Checked = m_reflectedButton.Checked;
			if (m_bExactCopy)
			{
				base.AutoSize = m_reflectedButton.AutoSize;
				DisplayStyle = m_reflectedButton.DisplayStyle;
				base.ImageAlign = m_reflectedButton.ImageAlign;
				base.ImageScaling = m_reflectedButton.ImageScaling;
				TextAlign = m_reflectedButton.TextAlign;
				base.TextImageRelation = m_reflectedButton.TextImageRelation;
			}
			else
			{
				DisplayStyle = ((Image == null) ? ToolStripItemDisplayStyle.Text : ToolStripItemDisplayStyle.Image);
			}
		}
	}

	public bool Reflects(IComponent c)
	{
		return c == m_reflectedButton;
	}
}
