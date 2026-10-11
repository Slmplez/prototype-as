using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.None)]
public class QuickComboBoxEx : ToolStripComboBoxEx, IQuickItem
{
	private ToolStripComboBoxEx m_reflectedCombobox;

	private bool m_bUpdatingValue;

	private bool m_bExactCopy;

	public ToolStripComboBoxEx ReflectedComboBox
	{
		get
		{
			return m_reflectedCombobox;
		}
		set
		{
			Detach();
			m_reflectedCombobox = value;
			Attach();
			Reset();
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override bool Enabled
	{
		get
		{
			if (m_reflectedCombobox != null)
			{
				return m_reflectedCombobox.Enabled;
			}
			return false;
		}
		set
		{
			if (m_reflectedCombobox != null)
			{
				m_reflectedCombobox.Enabled = value;
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override RightToLeft RightToLeft
	{
		get
		{
			if (m_reflectedCombobox != null)
			{
				return m_reflectedCombobox.RightToLeft;
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
			if (m_bExactCopy && m_reflectedCombobox != null && !base.AutoSize)
			{
				return m_reflectedCombobox.Size;
			}
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	public Component ReflectedComponent => m_reflectedCombobox;

	public QuickComboBoxEx()
	{
	}

	public QuickComboBoxEx(ToolStripComboBoxEx reflectedItem)
		: this(reflectedItem, bExactCopy: false)
	{
	}

	public QuickComboBoxEx(ToolStripComboBoxEx reflectedItem, bool bExactCopy)
	{
		m_bExactCopy = bExactCopy;
		ReflectedComboBox = reflectedItem;
	}

	public override Size GetPreferredSize(Size constrainingSize)
	{
		if (m_bExactCopy && m_reflectedCombobox != null)
		{
			return m_reflectedCombobox.GetPreferredSize(constrainingSize);
		}
		return base.GetPreferredSize(constrainingSize);
	}

	protected override void OnTextChanged(EventArgs e)
	{
		base.OnTextChanged(e);
		if (!m_bUpdatingValue)
		{
			m_bUpdatingValue = true;
			m_reflectedCombobox.Text = Text;
			m_bUpdatingValue = false;
		}
	}

	protected override void OnSelectedIndexChanged(EventArgs e)
	{
		base.OnSelectedIndexChanged(e);
		if (!m_bUpdatingValue)
		{
			m_bUpdatingValue = true;
			m_reflectedCombobox.SelectedIndex = base.SelectedIndex;
			m_bUpdatingValue = false;
		}
	}

	protected override void Dispose(bool disposing)
	{
		Detach();
		base.Dispose(disposing);
	}

	private void OnReflectedComboBoxTextChanged(object sender, EventArgs e)
	{
		if (!m_bUpdatingValue)
		{
			m_bUpdatingValue = true;
			Text = m_reflectedCombobox.Text;
			m_bUpdatingValue = false;
		}
	}

	private void OnReflectedComboboxSelectedIndexChanged(object sender, EventArgs e)
	{
		if (!m_bUpdatingValue)
		{
			m_bUpdatingValue = true;
			base.SelectedIndex = m_reflectedCombobox.SelectedIndex;
			m_bUpdatingValue = false;
		}
	}

	private void OnReflectedComboboxEnabledChanged(object sender, EventArgs e)
	{
		Invalidate();
	}

	public void Reset()
	{
		if (m_reflectedCombobox != null)
		{
			Text = m_reflectedCombobox.Text;
			object[] array = new object[m_reflectedCombobox.Items.Count];
			m_reflectedCombobox.Items.CopyTo(array, 0);
			base.Items.Clear();
			base.Items.AddRange(array);
			base.DropDownStyle = m_reflectedCombobox.DropDownStyle;
			base.SelectedIndex = m_reflectedCombobox.SelectedIndex;
			if (m_bExactCopy)
			{
				base.AutoSize = m_reflectedCombobox.AutoSize;
			}
		}
	}

	public bool Reflects(IComponent c)
	{
		return c == m_reflectedCombobox;
	}

	private void Detach()
	{
		if (m_reflectedCombobox != null)
		{
			m_reflectedCombobox.TextChanged -= OnReflectedComboBoxTextChanged;
			m_reflectedCombobox.EnabledChanged -= OnReflectedComboboxEnabledChanged;
			m_reflectedCombobox.SelectedIndexChanged -= OnReflectedComboboxSelectedIndexChanged;
		}
	}

	private void Attach()
	{
		if (m_reflectedCombobox != null)
		{
			m_reflectedCombobox.TextChanged += OnReflectedComboBoxTextChanged;
			m_reflectedCombobox.EnabledChanged += OnReflectedComboboxEnabledChanged;
			m_reflectedCombobox.SelectedIndexChanged += OnReflectedComboboxSelectedIndexChanged;
		}
	}
}
