using System;
using System.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
[DocumentationExclude]
public class ThemedComboBox : ComboBoxEx, ISupportOffice2007Theme
{
	private Office2007Theme m_office2007Theme;

	private ThemedComboBoxStyles m_visualStyle;

	private Office12ColorTable m_colorTable = new Office12ColorTable(Office2007Theme.Blue);

	[DefaultValue(Office2007Theme.Blue)]
	[Description("Office2007 theme.")]
	public Office2007Theme Office2007ColorTheme
	{
		get
		{
			return m_office2007Theme;
		}
		set
		{
			if (m_office2007Theme != value)
			{
				m_office2007Theme = value;
				if (m_office2007Theme != Office2007Theme.Managed)
				{
					m_colorTable.UpdateColorScheme(m_office2007Theme);
				}
				else
				{
					m_colorTable = Office12ColorTable.ManagedColors;
				}
				Invalidate(invalidateChildren: true);
			}
		}
	}

	[Description("Control's visual style.")]
	[DefaultValue(ThemedComboBoxStyles.Default)]
	public ThemedComboBoxStyles VisualStyle
	{
		get
		{
			return m_visualStyle;
		}
		set
		{
			if (m_visualStyle != value)
			{
				m_visualStyle = value;
				base.IsStyled = VisualStyle != ThemedComboBoxStyles.Default;
				Invalidate(invalidateChildren: true);
			}
		}
	}

	protected override Office12ColorTable ColorTable => m_colorTable;

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			m_colorTable = null;
		}
		base.Dispose(disposing);
	}

	protected override void OnDropDownClosed(EventArgs e)
	{
		base.OnDropDownClosed(e);
		base.ReleaseListBoxWindowHandle();
	}

	protected override void OnDropDown(EventArgs e)
	{
		base.CreateListBoxWindowHandle();
		base.OnDropDown(e);
	}

	void ISupportOffice2007Theme.EnableOffice2007Style()
	{
		VisualStyle = ThemedComboBoxStyles.Office2007;
	}
}
