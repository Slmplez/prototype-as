using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.None)]
public class QuickTextboxReflectable : ToolStripTextBox, IQuickItem
{
	private ToolStripTextBox m_reflectedTextBox;

	private bool m_bUpdatingValue;

	private bool m_bExactCopy;

	public ToolStripTextBox ReflectedTextBox
	{
		get
		{
			return m_reflectedTextBox;
		}
		set
		{
			if (m_reflectedTextBox != null)
			{
				m_reflectedTextBox.TextChanged -= OnReflectedTextBoxTextChanged;
				m_reflectedTextBox.EnabledChanged -= OnReflectedTextBoxEnabledChanged;
			}
			m_reflectedTextBox = value;
			if (m_reflectedTextBox != null)
			{
				if (m_bExactCopy)
				{
					base.AutoSize = m_reflectedTextBox.AutoSize;
				}
				m_reflectedTextBox.TextChanged += OnReflectedTextBoxTextChanged;
				m_reflectedTextBox.EnabledChanged -= OnReflectedTextBoxEnabledChanged;
				OnReflectedTextBoxTextChanged(m_reflectedTextBox, EventArgs.Empty);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override bool Enabled
	{
		get
		{
			if (m_reflectedTextBox != null)
			{
				return m_reflectedTextBox.Enabled;
			}
			return false;
		}
		set
		{
			if (m_reflectedTextBox != null)
			{
				m_reflectedTextBox.Enabled = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public override RightToLeft RightToLeft
	{
		get
		{
			if (m_reflectedTextBox != null)
			{
				return m_reflectedTextBox.RightToLeft;
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
			if (m_bExactCopy && m_reflectedTextBox != null && !base.AutoSize)
			{
				return m_reflectedTextBox.Size;
			}
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	public Component ReflectedComponent => m_reflectedTextBox;

	public QuickTextboxReflectable()
	{
	}

	public QuickTextboxReflectable(ToolStripTextBox reflectedItem)
		: this(reflectedItem, bExactCopy: false)
	{
	}

	public QuickTextboxReflectable(ToolStripTextBox reflectedItem, bool bExactCopy)
	{
		m_bExactCopy = bExactCopy;
		ReflectedTextBox = reflectedItem;
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		if (m_bExactCopy && m_reflectedTextBox != null)
		{
			return m_reflectedTextBox.GetPreferredSize(constrainingSize);
		}
		return base.GetPreferredSize(constrainingSize);
	}

	protected override void OnTextChanged(EventArgs e)
	{
		base.OnTextChanged(e);
		if (!m_bUpdatingValue)
		{
			m_bUpdatingValue = true;
			m_reflectedTextBox.Text = Text;
			m_bUpdatingValue = false;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (m_reflectedTextBox != null)
		{
			m_reflectedTextBox.TextChanged -= OnReflectedTextBoxTextChanged;
		}
		base.Dispose(disposing);
	}

	private void OnReflectedTextBoxTextChanged(object sender, EventArgs e)
	{
		if (!m_bUpdatingValue)
		{
			m_bUpdatingValue = true;
			Text = m_reflectedTextBox.Text;
			m_bUpdatingValue = false;
		}
	}

	private void OnReflectedTextBoxEnabledChanged(object sender, EventArgs e)
	{
		Invalidate();
	}

	public void Reset()
	{
		Invalidate();
	}

	public bool Reflects(IComponent c)
	{
		return c == m_reflectedTextBox;
	}
}
