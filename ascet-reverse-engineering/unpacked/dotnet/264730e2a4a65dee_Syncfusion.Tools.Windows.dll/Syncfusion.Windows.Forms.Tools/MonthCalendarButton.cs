using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
[ToolboxItem(false)]
public class MonthCalendarButton : ButtonAdv
{
	private bool m_bInitializing;

	private bool m_bUseVisualStyle;

	private ButtonAppearance m_appearance;

	internal bool Initializing
	{
		get
		{
			return m_bInitializing;
		}
		set
		{
			if (value != m_bInitializing)
			{
				m_bInitializing = value;
				if (!m_bInitializing)
				{
					RevertInitialAppearance();
				}
			}
		}
	}

	public new ButtonAppearance Appearance
	{
		get
		{
			return base.Appearance;
		}
		set
		{
			if (m_bInitializing)
			{
				m_appearance = value;
			}
			else
			{
				base.Appearance = value;
			}
		}
	}

	public override bool UseVisualStyle
	{
		get
		{
			return base.UseVisualStyle;
		}
		set
		{
			if (m_bInitializing)
			{
				m_bUseVisualStyle = value;
			}
			else
			{
				base.UseVisualStyle = value;
			}
		}
	}

	[DefaultValue(FlatStyle.Popup)]
	public new FlatStyle FlatStyle
	{
		get
		{
			return base.FlatStyle;
		}
		set
		{
			base.FlatStyle = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new string Name
	{
		get
		{
			return base.Name;
		}
		set
		{
			base.Name = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new int TabIndex
	{
		get
		{
			return base.TabIndex;
		}
		set
		{
			base.TabIndex = value;
		}
	}

	public new Size Size
	{
		get
		{
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	private void RevertInitialAppearance()
	{
		base.Appearance = m_appearance;
		base.UseVisualStyle = m_bUseVisualStyle;
	}
}
