using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Globalization;
using System.IO;
using System.Windows.Forms;
using Syncfusion.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Drawing;

[DocumentationExclude]
[ToolboxItem(false)]
public class ImageListSourceFiles : Component
{
	private ImageList il;

	private ArrayListExt sourceFilesList;

	private string baseDir = string.Empty;

	[Description("The ImageList to wrap around.")]
	public ImageList ImageList
	{
		get
		{
			return il;
		}
		set
		{
			il = value;
		}
	}

	public string BaseDirectory
	{
		get
		{
			return baseDir;
		}
		set
		{
			value = value.Trim('\\', '/');
			if (baseDir != value)
			{
				value = value.ToLower(CultureInfo.CurrentUICulture);
				if (value.Length == 0 || Directory.Exists(value))
				{
					RemoveRelativePaths();
					baseDir = value;
					ApplyRelativePaths();
				}
				else if (base.DesignMode)
				{
					MessageBox.Show(value + " is not a valid directory.");
				}
			}
		}
	}

	[Editor(typeof(SourceImageFilesEditor), typeof(UITypeEditor))]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Returns the source of the Images in the underlying ImageList. Bind this object to an ImageList before editing this property.")]
	public ArrayListExt SourceFiles => sourceFilesList;

	internal IDesignerHost Designer => GetService(typeof(IDesignerHost)) as IDesignerHost;

	public ImageListSourceFiles()
	{
		sourceFilesList = new ArrayListExt();
		sourceFilesList.CollectionChanged += Collection_Changed;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			sourceFilesList.CollectionChanged -= Collection_Changed;
		}
		base.Dispose(disposing);
	}

	protected virtual void RemoveRelativePaths()
	{
		if (baseDir.Length == 0)
		{
			return;
		}
		sourceFilesList.SuspendEvents();
		for (int i = 0; i < sourceFilesList.Count; i++)
		{
			string text = (string)sourceFilesList[i];
			if (text.IndexOf(":") == -1)
			{
				sourceFilesList[i] = baseDir + "\\" + text;
			}
		}
		sourceFilesList.ResumeEvents(throwEvent: false);
	}

	protected virtual void ApplyRelativePaths()
	{
		sourceFilesList.SuspendEvents();
		for (int i = 0; i < sourceFilesList.Count; i++)
		{
			string text = (string)sourceFilesList[i];
			if (text.IndexOf(baseDir) == 0)
			{
				string text2 = text.Substring(baseDir.Length);
				text2 = text2.Trim('\\', '/');
				sourceFilesList[i] = text2;
			}
		}
		sourceFilesList.ResumeEvents(throwEvent: false);
	}

	private void Collection_Changed(object sender, CollectionChangeEventArgs e)
	{
		OnSourceFilesChanged();
	}

	protected virtual void OnSourceFilesChanged()
	{
		ApplyRelativePaths();
		il.Images.Clear();
		foreach (string sourceFiles in sourceFilesList)
		{
			string text2 = sourceFiles;
			if (text2.IndexOf(":") == -1)
			{
				text2 = baseDir + "\\" + text2;
			}
			if (File.Exists(text2))
			{
				if (text2.IndexOf(".ico") != -1)
				{
					Icon value = new Icon(text2);
					il.Images.Add(value);
				}
				else
				{
					il.Images.Add(Image.FromFile(text2));
				}
			}
		}
	}
}
