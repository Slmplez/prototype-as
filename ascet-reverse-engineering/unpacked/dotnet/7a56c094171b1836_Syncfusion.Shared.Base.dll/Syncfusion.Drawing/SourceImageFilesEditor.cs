using System;
using System.ComponentModel.Design;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Drawing;

[DocumentationExclude]
public class SourceImageFilesEditor : CollectionEditor
{
	public SourceImageFilesEditor(Type type)
		: base(type)
	{
	}

	protected override object CreateInstance(Type type)
	{
		OpenFileDialog openFileDialog = new OpenFileDialog();
		openFileDialog.Filter = "All Image Files(*.bmp,*.gif,*.jpg,*.jpeg,*.png,*.ico)|*.bmp;*.gif;*.jpg;*.jpeg;*.png;*.ico";
		openFileDialog.FilterIndex = 1;
		openFileDialog.RestoreDirectory = true;
		openFileDialog.Multiselect = false;
		if (openFileDialog.ShowDialog() == DialogResult.OK)
		{
			return openFileDialog.FileName.ToLower(CultureInfo.CurrentUICulture);
		}
		return null;
	}

	protected override object SetItems(object editValue, object[] value)
	{
		ArrayListExt arrayListExt = editValue as ArrayListExt;
		arrayListExt.SuspendEvents();
		arrayListExt.Clear();
		if (value.Length > 0)
		{
			foreach (object obj in value)
			{
				arrayListExt.Add((string)obj);
			}
		}
		arrayListExt.ResumeEvents(throwEvent: true);
		return editValue;
	}
}
