using System;
using System.ComponentModel;
using System.Drawing;
using System.Security.Permissions;
using System.Threading;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

public class DelayedStatusDialog : OperationFeedbackListener
{
	[DocumentationExclude]
	private class BackgroundThread
	{
		private DelayedStatusDialog parent;

		private StatusDialog dialog;

		private Thread thread;

		internal bool canceled;

		private bool alreadyStopped;

		internal BackgroundThread(DelayedStatusDialog parent)
		{
			this.parent = parent;
			thread = new Thread(Run);
			thread.SetApartmentState(ApartmentState.STA);
			thread.Start();
		}

		private void Run()
		{
			try
			{
				lock (this)
				{
					if (!alreadyStopped)
					{
						dialog = new StatusDialog();
						ThreadUnsafeUpdateLabel();
						dialog.Visible = true;
					}
				}
				if (!alreadyStopped)
				{
					Application.Run(dialog);
				}
			}
			finally
			{
				lock (this)
				{
					if (dialog != null)
					{
						dialog.Dispose();
						dialog = null;
					}
				}
			}
		}

		internal void Stop()
		{
			lock (this)
			{
				if (dialog != null && dialog.IsHandleCreated)
				{
					dialog.BeginInvoke(new MethodInvoker(dialog.Close));
				}
				alreadyStopped = true;
			}
		}

		private void ThreadUnsafeUpdateLabel()
		{
			dialog.Label = parent.description;
			dialog.Percent = parent.percent;
			dialog.AllowCancel = parent.allowCancel;
			if (dialog.Canceled)
			{
				canceled = true;
			}
		}

		internal void UpdateLabel()
		{
			if (dialog != null && dialog.IsHandleCreated)
			{
				dialog.BeginInvoke(new MethodInvoker(ThreadUnsafeUpdateLabel));
			}
		}
	}

	[DocumentationExclude]
	private class StatusDialog : Form
	{
		private ProgressBar progressBar1;

		private Label label1;

		private Button cancelButton;

		private bool canceled;

		public bool AllowCancel
		{
			get
			{
				return cancelButton.Visible;
			}
			set
			{
				cancelButton.Visible = value;
			}
		}

		public bool Canceled
		{
			get
			{
				return canceled;
			}
			set
			{
				canceled = value;
			}
		}

		public int Percent
		{
			get
			{
				return progressBar1.Value;
			}
			set
			{
				progressBar1.Value = value;
			}
		}

		public string Label
		{
			get
			{
				return label1.Text;
			}
			set
			{
				label1.Text = value;
			}
		}

		protected override CreateParams CreateParams
		{
			[SecurityPermission(SecurityAction.LinkDemand, UnmanagedCode = true)]
			get
			{
				CreateParams createParams = base.CreateParams;
				_ = Environment.OSVersion.Version;
				createParams.ExStyle |= 128;
				if (Environment.OSVersion.Platform != PlatformID.Win32NT || Environment.OSVersion.Version.Major > 5)
				{
					createParams.ExStyle |= 134217728;
				}
				createParams.ClassStyle |= 2048;
				return createParams;
			}
		}

		public StatusDialog()
		{
			InitializeComponent();
		}

		private void InitializeComponent()
		{
			this.progressBar1 = new System.Windows.Forms.ProgressBar();
			this.label1 = new System.Windows.Forms.Label();
			this.cancelButton = new System.Windows.Forms.Button();
			base.SuspendLayout();
			this.progressBar1.Anchor = System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left | System.Windows.Forms.AnchorStyles.Right;
			this.progressBar1.Location = new System.Drawing.Point(24, 64);
			this.progressBar1.Name = "progressBar1";
			this.progressBar1.Size = new System.Drawing.Size(336, 32);
			this.progressBar1.Step = 5;
			this.progressBar1.TabIndex = 0;
			this.label1.Location = new System.Drawing.Point(24, 16);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(328, 32);
			this.label1.TabIndex = 1;
			this.label1.Text = "label1";
			this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
			this.cancelButton.Location = new System.Drawing.Point(152, 112);
			this.cancelButton.Name = "cancelButton";
			this.cancelButton.TabIndex = 2;
			this.cancelButton.Text = "&Cancel";
			this.cancelButton.Click += new System.EventHandler(cancelButton_Click);
			base.CausesValidation = false;
			base.ClientSize = new System.Drawing.Size(386, 160);
			base.ControlBox = false;
			base.Controls.AddRange(new System.Windows.Forms.Control[3] { this.cancelButton, this.label1, this.progressBar1 });
			base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
			base.MaximizeBox = false;
			base.MinimizeBox = false;
			base.Name = "StatusDialog";
			base.ShowInTaskbar = false;
			this.Text = "ProviderProgress";
			base.TopMost = true;
			base.ResumeLayout(false);
		}

		private void cancelButton_Click(object sender, EventArgs e)
		{
			canceled = true;
		}
	}

	private string description = "";

	private int percent;

	private BackgroundThread backgroundThread;

	private Cursor savedCursor;

	private int showDialogPercentRule = 25;

	private int showWaitCursorPercentRule = 75;

	private bool showWaitCursor = true;

	private bool allowCancel = true;

	private bool dialogShown;

	[DefaultValue(25)]
	public int ShowDialogPercentRule
	{
		get
		{
			return showDialogPercentRule;
		}
		set
		{
			showDialogPercentRule = value;
		}
	}

	[DefaultValue(75)]
	public int ShowWaitCursorPercentRule
	{
		get
		{
			return showWaitCursorPercentRule;
		}
		set
		{
			showWaitCursorPercentRule = value;
		}
	}

	[DefaultValue(true)]
	public bool ShowWaitCursor
	{
		get
		{
			return showWaitCursor;
		}
		set
		{
			showWaitCursor = value;
		}
	}

	private bool IsDialogVisible => backgroundThread != null;

	public DelayedStatusDialog()
	{
		base.Delay = 500;
	}

	public DelayedStatusDialog(IOperationFeedbackProvider provider)
		: this()
	{
		AddProvider(provider);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			CloseStatusDialog(null);
		}
		base.Dispose(disposing);
	}

	protected override void OnProgress(OperationFeedbackEventArgs e)
	{
		if (e.Milestone == OperationMilestone.Progress)
		{
			int num = e.Percent;
			if (dialogShown || (num >= 0 && num < showDialogPercentRule))
			{
				ShowStatusDialog(e);
				dialogShown = true;
			}
			else if (savedCursor == null && showWaitCursor && num < showWaitCursorPercentRule)
			{
				savedCursor = Cursor.Current;
				Cursor.Current = Cursors.WaitCursor;
			}
		}
		else if (e.Milestone == OperationMilestone.Finished)
		{
			if (savedCursor != null)
			{
				Cursor.Current = savedCursor;
				savedCursor = null;
			}
			CloseStatusDialog(e);
			dialogShown = false;
		}
	}

	private void ShowStatusDialog(OperationFeedbackEventArgs e)
	{
		if (!SystemInformation.UserInteractive)
		{
			return;
		}
		if (e.Percent > -1)
		{
			percent = e.Percent;
		}
		description = e.Description;
		allowCancel = e.AllowCancel;
		if (backgroundThread == null)
		{
			backgroundThread = new BackgroundThread(this);
		}
		if (backgroundThread != null)
		{
			backgroundThread.UpdateLabel();
			if (backgroundThread.canceled)
			{
				e.Cancel = true;
				CloseStatusDialog(e);
			}
		}
	}

	private void CloseStatusDialog(OperationFeedbackEventArgs e)
	{
		if (backgroundThread != null)
		{
			backgroundThread.Stop();
		}
		backgroundThread = null;
	}
}
