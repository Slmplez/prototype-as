using System;
using System.Collections;
using System.Windows.Forms;
using Microsoft.Win32;
using Syncfusion.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

public class AutoAppend : IDisposable
{
	private Hashtable controls = new Hashtable();

	internal bool disposed;

	static AutoAppend()
	{
		AppStateSerializer.SetBindingInfo("Syncfusion.Shared.Base", typeof(AutoAppend).Assembly);
	}

	~AutoAppend()
	{
		try
		{
			Dispose(disposing: false);
		}
		catch
		{
		}
	}

	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	protected virtual void Dispose(bool disposing)
	{
		if (!disposed)
		{
			disposed = true;
			Control[] array = new Control[controls.Keys.Count];
			controls.Keys.CopyTo(array, 0);
			Control[] array2 = array;
			foreach (Control control in array2)
			{
				SetAutoAppend(control, new AutoAppendInfo(autoAppend: false, string.Empty, null, 30));
			}
			controls.Clear();
			controls = null;
		}
	}

	public virtual AutoAppendInfo GetAutoAppend(Control control)
	{
		if (controls[control] != null)
		{
			return (AutoAppendInfo)controls[control];
		}
		return new AutoAppendInfo(autoAppend: false, string.Empty, null, 30);
	}

	public virtual void SetAutoAppend(Control control, AutoAppendInfo autoAppendInfo)
	{
		if (!autoAppendInfo.AutoAppend)
		{
			if (controls[control] != null)
			{
				PersistInStorage((AutoAppendInfo)controls[control]);
			}
			controls.Remove(control);
			control.Validated -= ControlValidated;
			control.Disposed -= ControlDisposed;
		}
		else
		{
			controls[control] = autoAppendInfo;
			control.Validated += ControlValidated;
			control.Disposed += ControlDisposed;
			InitFromStorage(control);
		}
	}

	private void ControlDisposed(object sender, EventArgs e)
	{
		if (disposed)
		{
			((Control)sender).Disposed -= ControlValidated;
		}
		else
		{
			SetAutoAppend(sender as Control, new AutoAppendInfo(autoAppend: false, string.Empty, null, 10));
		}
	}

	private void ControlValidated(object sender, EventArgs e)
	{
		if (disposed)
		{
			((Control)sender).Validated -= ControlValidated;
			return;
		}
		Control control = sender as Control;
		if (controls[control] == null)
		{
			return;
		}
		AutoAppendInfo autoAppendInfo = (AutoAppendInfo)controls[control];
		string text = control.Text;
		if (!(text == string.Empty))
		{
			int num = autoAppendInfo.Items.IndexOf(text);
			switch (num)
			{
			case -1:
				autoAppendInfo.Items.Insert(0, text);
				control.Text = text;
				break;
			default:
				MoveItemToTop(autoAppendInfo.Items, num);
				control.Text = text;
				break;
			case 0:
				break;
			}
		}
	}

	private void PersistInStorage(AutoAppendInfo autoAppendInfo)
	{
		if (!(autoAppendInfo.CategoryName != string.Empty))
		{
			return;
		}
		ArrayList arrayList = new ArrayList();
		int num = 0;
		foreach (string item in autoAppendInfo.Items)
		{
			num++;
			arrayList.Add(item);
			if (num > autoAppendInfo.MaxItems)
			{
				break;
			}
		}
		RegistryKey currentUser = Registry.CurrentUser;
		currentUser = currentUser.CreateSubKey("Software\\Syncfusion\\AutoAppend");
		AppStateSerializer appStateSerializer = new AppStateSerializer(SerializeMode.WindowsRegistry, currentUser);
		appStateSerializer.SerializeObject(autoAppendInfo.CategoryName, arrayList);
		appStateSerializer.PersistNow();
	}

	private void InitFromStorage(Control control)
	{
		AutoAppendInfo autoAppendInfo = (AutoAppendInfo)controls[control];
		if (autoAppendInfo.CategoryName == string.Empty)
		{
			return;
		}
		autoAppendInfo.Items.Clear();
		RegistryKey currentUser = Registry.CurrentUser;
		currentUser = currentUser.CreateSubKey("Software\\Syncfusion\\AutoAppend");
		AppStateSerializer appStateSerializer = new AppStateSerializer(SerializeMode.WindowsRegistry, currentUser);
		object obj = appStateSerializer.DeserializeObject(autoAppendInfo.CategoryName);
		if (obj is ArrayList arrayList)
		{
			foreach (string item in arrayList)
			{
				autoAppendInfo.Items.Add(item);
			}
		}
		if (autoAppendInfo.Items.Count > 0 && autoAppendInfo.Items.IndexOf(control.Text) == -1)
		{
			control.Text = (string)autoAppendInfo.Items[0];
		}
	}

	private void MoveItemToTop(IList items, int index)
	{
		if (index < items.Count)
		{
			object value = items[index];
			items.RemoveAt(index);
			items.Insert(0, value);
		}
	}

	public void InsertOrMoveToTop(Control control, string item)
	{
		if (!(item == string.Empty))
		{
			AutoAppendInfo autoAppendInfo = (AutoAppendInfo)controls[control];
			int num = autoAppendInfo.Items.IndexOf(item);
			if (num != -1)
			{
				MoveItemToTop(autoAppendInfo.Items, num);
			}
			else
			{
				autoAppendInfo.Items.Insert(0, item);
			}
		}
	}
}
