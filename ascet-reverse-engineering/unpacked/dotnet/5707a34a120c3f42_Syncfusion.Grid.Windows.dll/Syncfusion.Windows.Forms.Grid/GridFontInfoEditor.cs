using System;
using System.ComponentModel;
using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Grid;

public class GridFontInfoEditor : UITypeEditor
{
	private FontDialog fontDialog;

	private GridFontInfo value;

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		return UITypeEditorEditStyle.Modal;
	}

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		this.value = value as GridFontInfo;
		if (provider != null)
		{
			IWindowsFormsEditorService windowsFormsEditorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			if (windowsFormsEditorService != null)
			{
				if (fontDialog == null)
				{
					fontDialog = new FontDialog();
					fontDialog.ShowApply = false;
					fontDialog.ShowColor = false;
					fontDialog.AllowScriptChange = false;
					fontDialog.AllowSimulations = false;
					fontDialog.AllowVectorFonts = false;
					fontDialog.AllowVerticalFonts = false;
				}
				if (value != null)
				{
					this.value.ResetGdipFont();
					fontDialog.Font = this.value.GdipFont;
				}
				IntPtr focus = NativeMethods.GetFocus();
				try
				{
					if (fontDialog.ShowDialog() == DialogResult.OK)
					{
						GridFontInfo gridFontInfo = new GridFontInfo(fontDialog.Font);
						if (fontDialog.Font.GdiVerticalFont)
						{
							gridFontInfo.Orientation = 90;
						}
						this.value.CopyFrom(gridFontInfo);
					}
				}
				finally
				{
					if (focus != IntPtr.Zero)
					{
						NativeMethods.SetFocus(focus);
					}
				}
			}
		}
		value = this.value;
		this.value = null;
		return value;
	}
}
