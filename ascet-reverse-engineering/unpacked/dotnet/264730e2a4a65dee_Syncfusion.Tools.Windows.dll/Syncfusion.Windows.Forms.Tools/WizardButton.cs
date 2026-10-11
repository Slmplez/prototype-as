using System;
using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
internal class WizardButton : ButtonAdv
{
	internal WizardControl m_Parent;

	[EditorBrowsable(EditorBrowsableState.Always)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new int TabIndex
	{
		get
		{
			return base.TabIndex;
		}
		set
		{
		}
	}

	[Browsable(true)]
	[DefaultValue(FlatStyle.System)]
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

	protected override void OnClick(EventArgs e)
	{
		if (m_Parent == null || m_Parent.CanPerformClick(this))
		{
			base.OnClick(e);
		}
	}
}
