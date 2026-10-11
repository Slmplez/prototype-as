using System;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.ComponentModel;

public class WindowsFormsEditorServiceContainer : IWindowsFormsEditorService, IServiceProvider
{
	private DialogResult result = DialogResult.Cancel;

	private IServiceProvider serviceProvider;

	public DialogResult DialogResult => result;

	public IServiceProvider ServiceProvider
	{
		get
		{
			return serviceProvider;
		}
		set
		{
			if (value != serviceProvider)
			{
				serviceProvider = value;
			}
		}
	}

	public event ControlEventHandler ShowingDialog;

	public WindowsFormsEditorServiceContainer(IServiceProvider serviceProvider)
	{
		this.serviceProvider = serviceProvider;
	}

	void IWindowsFormsEditorService.CloseDropDown()
	{
	}

	DialogResult IWindowsFormsEditorService.ShowDialog(Form dialog)
	{
		if (this.ShowingDialog != null)
		{
			ControlEventArgs e = new ControlEventArgs(dialog);
			this.ShowingDialog(this, e);
		}
		dialog.Cursor = Cursors.Default;
		foreach (Control control in dialog.Controls)
		{
			control.Cursor = Cursors.Default;
		}
		Button button = (Button)dialog.AcceptButton;
		button.Click += WindowsFormsEditorServiceContainer_Click;
		dialog.ShowDialog();
		button.Click -= WindowsFormsEditorServiceContainer_Click;
		dialog.DialogResult = result;
		return result;
	}

	private void WindowsFormsEditorServiceContainer_Click(object sender, EventArgs e)
	{
		result = DialogResult.OK;
	}

	void IWindowsFormsEditorService.DropDownControl(Control ctl)
	{
	}

	object IServiceProvider.GetService(Type classService)
	{
		if (classService == typeof(IWindowsFormsEditorService))
		{
			return this;
		}
		if (ServiceProvider != null)
		{
			return serviceProvider.GetService(classService);
		}
		return null;
	}
}
