using System;
using System.ComponentModel;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace de.etas.util;

[ComVisible(false)]
public class StringPrompter
{
	private Button cancelButton;

	private Button okButton;

	private Panel pane;

	private Form stringPromptDlg;

	private TextBox textField;

	private string title;

	private string value_Renamed;

	private Form parent;

	private Button CancelButton
	{
		get
		{
			if (cancelButton == null)
			{
				try
				{
					cancelButton = new Button();
					cancelButton.Name = "CancelStringPrompt";
					cancelButton.SetBounds(15, 60, 60, 23);
					cancelButton.Text = "Cancel";
				}
				catch (Exception exception)
				{
					handleException(exception);
				}
			}
			return cancelButton;
		}
	}

	private Button OkButton
	{
		get
		{
			if (okButton == null)
			{
				try
				{
					okButton = new Button();
					okButton.Name = "OkStringPrompt";
					okButton.SetBounds(205, 60, 60, 23);
					okButton.Text = "Ok";
				}
				catch (Exception exception)
				{
					handleException(exception);
				}
			}
			return okButton;
		}
	}

	private Panel Pane
	{
		get
		{
			if (pane == null)
			{
				try
				{
					pane = new Panel();
					pane.Name = "Pane";
					Pane.Controls.Add(TextField);
					TextField.Dock = DockStyle.None;
					TextField.BringToFront();
					Pane.Controls.Add(CancelButton);
					CancelButton.Dock = DockStyle.None;
					CancelButton.BringToFront();
					Pane.Controls.Add(OkButton);
					OkButton.Dock = DockStyle.None;
					OkButton.BringToFront();
				}
				catch (Exception exception)
				{
					handleException(exception);
				}
			}
			return pane;
		}
	}

	private Form StringPromptDlg
	{
		get
		{
			if (stringPromptDlg == null)
			{
				try
				{
					stringPromptDlg = SupportClass.DialogSupport.CreateDialog(new Form());
					stringPromptDlg.Name = "StringPromptDlg";
					stringPromptDlg.SetBounds(134, 102, 280, 130);
					stringPromptDlg.Text = title;
					stringPromptDlg.FormBorderStyle = FormBorderStyle.FixedToolWindow;
					StringPromptDlg.Controls.Add(Pane);
					Pane.Dock = DockStyle.Fill;
					Pane.BringToFront();
				}
				catch (Exception exception)
				{
					handleException(exception);
				}
			}
			return stringPromptDlg;
		}
	}

	private TextBox TextField
	{
		get
		{
			if (textField == null)
			{
				try
				{
					textField = new TextBox();
					textField.Name = "StringValue";
					textField.BackColor = Color.White;
					textField.SetBounds(15, 20, 250, 23);
				}
				catch (Exception exception)
				{
					handleException(exception);
				}
			}
			return textField;
		}
	}

	private string Value => value_Renamed;

	private StringPrompter(string title, string def, Form parent)
	{
		this.parent = parent;
		this.title = title;
		TextField.Text = def;
		initialize();
	}

	public virtual void actionPerformed(object event_sender, EventArgs e)
	{
		if (event_sender == OkButton)
		{
			value_Renamed = TextField.Text;
			close();
		}
		if (event_sender == CancelButton)
		{
			close();
		}
	}

	private void close()
	{
		StringPromptDlg.Activated -= windowActivated;
		StringPromptDlg.Closed -= windowClosed;
		StringPromptDlg.Closing -= windowClosing;
		StringPromptDlg.Deactivate -= windowDeactivated;
		StringPromptDlg.Load -= windowOpened;
		OkButton.Click -= actionPerformed;
		CancelButton.Click -= actionPerformed;
		StringPromptDlg.Dispose();
	}

	private void handleException(Exception exception)
	{
	}

	private void initialize()
	{
		OkButton.Click += actionPerformed;
		SupportClass.CommandManager.CheckCommand(OkButton);
		CancelButton.Click += actionPerformed;
		SupportClass.CommandManager.CheckCommand(CancelButton);
		StringPromptDlg.Activated += windowActivated;
		StringPromptDlg.Closed += windowClosed;
		StringPromptDlg.Closing += windowClosing;
		StringPromptDlg.Deactivate += windowDeactivated;
		StringPromptDlg.Load += windowOpened;
	}

	private void open()
	{
		TextField.SelectAll();
		TextField.Focus();
		StringPromptDlg.ShowDialog();
	}

	public static string prompt()
	{
		return prompt("", "", new Form());
	}

	public static string prompt(string title)
	{
		return prompt(title, "", new Form());
	}

	public static string prompt(string title, string def)
	{
		return prompt(title, def, new Form());
	}

	public static string prompt(string title, string def, Form parent)
	{
		StringPrompter stringPrompter = new StringPrompter(title, def, parent);
		stringPrompter.open();
		return stringPrompter.value_Renamed;
	}

	public virtual void windowActivated(object event_sender, EventArgs e)
	{
	}

	public virtual void windowClosed(object event_sender, EventArgs e)
	{
	}

	public virtual void windowClosing(object event_sender, CancelEventArgs e)
	{
		e.Cancel = true;
		close();
	}

	public virtual void windowDeactivated(object event_sender, EventArgs e)
	{
	}

	public virtual void windowDeiconified(object event_sender, EventArgs e)
	{
	}

	public virtual void windowIconified(object event_sender, EventArgs e)
	{
	}

	public virtual void windowOpened(object event_sender, EventArgs e)
	{
	}
}
