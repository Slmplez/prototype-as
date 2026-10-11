using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Design;
using System.IO;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public class ImageExtEditor : UITypeEditor
{
	private const string DEF_ICON_EXTENSION = ".ico";

	public override object EditValue(ITypeDescriptorContext context, IServiceProvider provider, object value)
	{
		if (context != null && context.Instance != null && provider != null)
		{
			IWindowsFormsEditorService windowsFormsEditorService = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
			if (windowsFormsEditorService != null && context.Instance is BarItem)
			{
				OpenFileDialog openFileDialog = new OpenFileDialog();
				openFileDialog.Filter = GetFilterString();
				if (openFileDialog.ShowDialog() == DialogResult.OK)
				{
					_ = openFileDialog.FilterIndex;
					string text = Path.GetExtension(openFileDialog.FileName).ToLower();
					FileStream stream = new FileStream(openFileDialog.FileName, FileMode.Open, FileAccess.Read, FileShare.Read);
					ImageExt imageExt = null;
					imageExt = ((text == ".ico") ? ((ImageExt)LoadIcon(stream)) : (imageExt = LoadImage(stream)));
					value = imageExt;
				}
			}
		}
		return value;
	}

	public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
	{
		if (context != null && context.Instance != null)
		{
			return UITypeEditorEditStyle.Modal;
		}
		return base.GetEditStyle(context);
	}

	protected virtual Icon LoadIcon(Stream stream)
	{
		return new Icon(stream);
	}

	protected virtual Bitmap LoadImage(Stream stream)
	{
		return new Bitmap(stream);
	}

	private string GetFilterString()
	{
		return "Image files (*.bmp, *.gif, *.jpg, *.jpeg, *.png, *.ico)|*.bmp; *.gif; *.jpg; *.jpeg; *.png; *.ico";
	}
}
