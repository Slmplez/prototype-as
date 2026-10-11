using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class WorkbookForm : Form, IThemedControl
{
	private WorkbookView workbookView;

	private Container components;

	private bool themesEnabled;

	public WorkbookView WorkbookView
	{
		get
		{
			return workbookView;
		}
		set
		{
			workbookView = value;
		}
	}

	public virtual bool ThemesEnabled
	{
		get
		{
			return themesEnabled;
		}
		set
		{
			if (themesEnabled != value)
			{
				themesEnabled = value;
				OnThemeChanged(EventArgs.Empty);
			}
		}
	}

	public event EventHandler ThemeChanged;

	public WorkbookForm(WorkbookView workbookView)
	{
		if (workbookView == null)
		{
			throw new ArgumentNullException("workbookView");
		}
		this.workbookView = workbookView;
		InitializeWorkbookView();
	}

	public WorkbookForm(WorkbookModel workbookModel)
	{
		if (workbookModel == null)
		{
			throw new ArgumentNullException("workbookModel");
		}
		workbookView = new WorkbookView(workbookModel);
		InitializeWorkbookView();
	}

	protected WorkbookForm()
	{
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeWorkbookView()
	{
		components = new Container();
		workbookView.DisabledColor = SystemColors.GrayText;
		workbookView.Size = base.Size;
		workbookView.RelativeWidth = 64;
		workbookView.ButtonLook = ButtonLook.Flat;
		workbookView.Dock = DockStyle.Fill;
		workbookView.Resizable = true;
		workbookView.ScrollButtons = DisplayArrowButtons.All;
		workbookView.RepeatClickDelay = 10;
		workbookView.TabIndex = 0;
		workbookView.ShowToolTips = true;
		workbookView.EnabledColor = SystemColors.WindowText;
		workbookView.ThemesEnabled = ThemesEnabled;
		base.Controls.Add(workbookView);
	}

	protected virtual void OnThemeChanged(EventArgs e)
	{
		if (this.ThemeChanged != null)
		{
			try
			{
				this.ThemeChanged(this, e);
			}
			catch (Exception ex)
			{
				TraceUtil.TraceExceptionCatched(ex);
				if (!ExceptionManager.RaiseExceptionCatched(null, ex))
				{
					throw;
				}
			}
		}
		if (workbookView != null)
		{
			workbookView.ThemesEnabled = ThemesEnabled;
		}
	}
}
