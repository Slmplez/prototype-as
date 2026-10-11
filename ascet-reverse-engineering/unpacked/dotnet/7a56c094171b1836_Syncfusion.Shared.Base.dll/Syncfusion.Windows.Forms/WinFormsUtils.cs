using System.Data.OleDb;
using System.Drawing;
using System.IO;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class WinFormsUtils
{
	private static string measureWgString = "Wg;";

	public static string MeasureEmptyCellString
	{
		get
		{
			return measureWgString;
		}
		set
		{
			measureWgString = value;
		}
	}

	public static void ChangeStyle(Control control, ControlStyles styles, bool setOrReset)
	{
		MethodInfo method = typeof(Control).GetMethod("SetStyle", BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.InvokeMethod);
		if (method != null)
		{
			method.Invoke(control, new object[2]
			{
				ControlStyles.Selectable,
				false
			});
		}
	}

	public static bool ActivateAllParents(ContainerControl control)
	{
		if (control.Parent is ContainerControl && !ActivateAllParents((ContainerControl)control.Parent))
		{
			return false;
		}
		control.Select();
		if (!IsActiveControlInParent(control))
		{
			return false;
		}
		return true;
	}

	public static bool IsActiveControlInParent(Control control)
	{
		if (control.Parent is ContainerControl)
		{
			ContainerControl containerControl = control.Parent as ContainerControl;
			return containerControl.ActiveControl == control;
		}
		return true;
	}

	public static Control FocusedContainerControl()
	{
		Control control = Control.FromHandle(NativeMethods.GetFocus());
		while (control != null && !(control is ContainerControl))
		{
			control = control.Parent;
		}
		return control;
	}

	public static Control FocusedControl()
	{
		return Control.FromHandle(NativeMethods.GetFocus());
	}

	public static bool IsParent(Control parent, Control child)
	{
		while (child.Parent != null)
		{
			if (child.Parent == parent)
			{
				return true;
			}
			child = child.Parent;
		}
		return false;
	}

	public static PropertyGrid GetPropertyGridInControl(Control control)
	{
		if (control == null)
		{
			return null;
		}
		foreach (Control control2 in control.Controls)
		{
			if (control2 is PropertyGrid)
			{
				return control2 as PropertyGrid;
			}
			if (control2 is ContainerControl || control2 is Panel)
			{
				PropertyGrid propertyGridInControl = GetPropertyGridInControl(control2);
				if (propertyGridInControl != null)
				{
					return propertyGridInControl;
				}
			}
		}
		return null;
	}

	public static void UpdateDirectoryPath(OleDbConnection connection, string dataDirName, string fileName)
	{
		int num = connection.ConnectionString.IndexOf("Data Source");
		num += 11;
		num++;
		int num2 = connection.ConnectionString.IndexOf(";", num);
		string path = connection.ConnectionString.Substring(num, num2 - num);
		if (File.Exists(path))
		{
			return;
		}
		string text = string.Empty;
		for (DirectoryInfo parent = new DirectoryInfo(Application.ExecutablePath).Parent; parent != null; parent = parent.Parent)
		{
			DirectoryInfo[] directories = parent.GetDirectories(dataDirName);
			foreach (DirectoryInfo directoryInfo in directories)
			{
				if (directoryInfo.Name == dataDirName)
				{
					text = directoryInfo.FullName;
					break;
				}
			}
			if (text != string.Empty)
			{
				break;
			}
		}
		text = ((!(text != string.Empty)) ? FindFile(dataDirName, Path.GetFileName(fileName)) : (text + "\\" + fileName));
		if (text != string.Empty)
		{
			connection.ConnectionString = connection.ConnectionString.Remove(num, num2 - num);
			connection.ConnectionString = connection.ConnectionString.Insert(num, text);
		}
	}

	public static string FindFile(string dataDirName, string fileName)
	{
		dataDirName = dataDirName.TrimEnd('\\', '/');
		string text = dataDirName + "\\" + fileName;
		for (int i = 0; i < 10; i++)
		{
			if (File.Exists(fileName))
			{
				return fileName;
			}
			if (File.Exists(text))
			{
				return text;
			}
			fileName = "..\\" + fileName;
			text = "..\\" + text;
		}
		return "";
	}

	public static Size MeasureSampleWString(Graphics g, Font font)
	{
		return g.MeasureString(MeasureEmptyCellString, font).ToSize();
	}
}
