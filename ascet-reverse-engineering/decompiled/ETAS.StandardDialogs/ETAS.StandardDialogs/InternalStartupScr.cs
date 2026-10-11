using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using ETAS.StandardDialogs.Dialogs;
using ETAS.StandardDialogs.Resources;

namespace ETAS.StandardDialogs;

public class InternalStartupScr : Form
{
	private EApplicationDialogType m_ApplicationDialogType;

	private IContainer components;

	private Label m_Headline;

	private Label m_Subheadline;

	private Label m_Information;

	private ProgressBar m_ProgressBar;

	private ExtendedPanel panel1;

	public EApplicationDialogType DialogType
	{
		get
		{
			return m_ApplicationDialogType;
		}
		set
		{
			if (base.InvokeRequired)
			{
				Invoke((MethodInvoker)delegate
				{
					DialogType = value;
				});
			}
			else
			{
				m_ApplicationDialogType = value;
				InitializeControlls();
			}
		}
	}

	public string Headline
	{
		get
		{
			return m_Headline.Text;
		}
		set
		{
			if (base.InvokeRequired)
			{
				Invoke((MethodInvoker)delegate
				{
					Headline = value;
				});
			}
			else
			{
				m_Headline.Text = value;
				m_Headline.Refresh();
				panel1.Refresh();
			}
		}
	}

	public string SubHeadline
	{
		get
		{
			return m_Subheadline.Text;
		}
		set
		{
			if (base.InvokeRequired)
			{
				Invoke((MethodInvoker)delegate
				{
					SubHeadline = value;
				});
			}
			else
			{
				m_Subheadline.Text = value;
				m_Subheadline.Refresh();
				panel1.Refresh();
			}
		}
	}

	public bool ShowText
	{
		get
		{
			return m_Information.Visible;
		}
		set
		{
			if (base.InvokeRequired)
			{
				Invoke((MethodInvoker)delegate
				{
					ShowText = value;
				});
			}
			else
			{
				m_Information.Visible = value;
				m_Information.Refresh();
			}
		}
	}

	public bool ShowProgressBar
	{
		get
		{
			return m_ProgressBar.Visible;
		}
		set
		{
			if (base.InvokeRequired)
			{
				Invoke((MethodInvoker)delegate
				{
					ShowProgressBar = value;
				});
			}
			else
			{
				m_ProgressBar.Visible = value;
				m_ProgressBar.Refresh();
			}
		}
	}

	public int ProgressBarValue
	{
		get
		{
			return m_ProgressBar.Value;
		}
		set
		{
			try
			{
				if (base.InvokeRequired)
				{
					Invoke((MethodInvoker)delegate
					{
						ProgressBarValue = value;
					});
				}
				else
				{
					m_ProgressBar.Value = value;
					m_ProgressBar.Refresh();
					panel1.Refresh();
				}
			}
			catch (Exception)
			{
			}
		}
	}

	public Color TextColor
	{
		get
		{
			return m_Information.ForeColor;
		}
		set
		{
			m_Information.ForeColor = value;
			m_Information.Refresh();
		}
	}

	public Point TextPosition
	{
		get
		{
			return m_Information.Location;
		}
		set
		{
			m_Information.Location = value;
			m_Information.Refresh();
		}
	}

	public int TextWidth
	{
		get
		{
			return m_Information.Width;
		}
		set
		{
			m_Information.Width = value;
			m_Information.Refresh();
		}
	}

	public Color ProgressBarColor
	{
		get
		{
			return m_ProgressBar.ForeColor;
		}
		set
		{
			m_ProgressBar.ForeColor = value;
			m_ProgressBar.Refresh();
		}
	}

	public Point ProgressBarPosition
	{
		get
		{
			return m_ProgressBar.Location;
		}
		set
		{
			m_ProgressBar.Location = value;
			m_ProgressBar.Refresh();
		}
	}

	public int ProgressBarWidth
	{
		get
		{
			return m_ProgressBar.Width;
		}
		set
		{
			m_ProgressBar.Width = value;
			m_ProgressBar.Refresh();
		}
	}

	public int ProgressBarHeight
	{
		get
		{
			return m_ProgressBar.Height;
		}
		set
		{
			m_ProgressBar.Height = value;
			m_ProgressBar.Refresh();
		}
	}

	public string InformationText
	{
		get
		{
			return m_Information.Text;
		}
		set
		{
			if (base.InvokeRequired)
			{
				Invoke((MethodInvoker)delegate
				{
					InformationText = value;
				});
			}
			else
			{
				m_Information.Text = value;
				m_Information.Refresh();
				panel1.Refresh();
			}
		}
	}

	public Form OwnerForm
	{
		get
		{
			return base.ParentForm;
		}
		set
		{
			base.Parent = value;
		}
	}

	public bool SandClockPointer
	{
		get
		{
			if (Cursor == Cursors.AppStarting)
			{
				return true;
			}
			return false;
		}
		set
		{
			if (base.InvokeRequired)
			{
				Invoke((MethodInvoker)delegate
				{
					if (value)
					{
						Cursor = Cursors.AppStarting;
					}
					else
					{
						Cursor = Cursors.Default;
					}
				});
			}
			else if (value)
			{
				Cursor = Cursors.AppStarting;
			}
			else
			{
				Cursor = Cursors.Default;
			}
		}
	}

	public Icon StartupScreenIcon
	{
		get
		{
			return base.Icon;
		}
		set
		{
			if (base.InvokeRequired)
			{
				Invoke((MethodInvoker)delegate
				{
					base.Icon = value;
				});
			}
			else
			{
				base.Icon = value;
			}
		}
	}

	public InternalStartupScr()
		: this(EApplicationDialogType.ASCET)
	{
	}

	public InternalStartupScr(EApplicationDialogType applicationType)
	{
		m_ApplicationDialogType = applicationType;
		InitializeComponent();
		base.Location = Screen.PrimaryScreen.Bounds.Location;
		CenterToScreen();
		InitializeControlls();
		Application.EnableVisualStyles();
	}

	private void InitializeControlls()
	{
		switch (m_ApplicationDialogType)
		{
		case EApplicationDialogType.INCA:
			BackgroundImage = ScreenResource.INCA_Loading;
			break;
		case EApplicationDialogType.LABCAR:
			BackgroundImage = ScreenResource.LABCAR_Loading;
			break;
		case EApplicationDialogType.ASCET:
			BackgroundImage = ScreenResource.ASCET_Loading;
			break;
		case EApplicationDialogType.INTECRIO:
			BackgroundImage = ScreenResource.INTECRIO_Loading;
			break;
		case EApplicationDialogType.MDA:
			BackgroundImage = ScreenResource.INCA_Loading;
			break;
		case EApplicationDialogType.RTA:
			BackgroundImage = ScreenResource.RTA_Loading;
			break;
		case EApplicationDialogType.EHOOKS_MCD:
			BackgroundImage = ScreenResource.EHOOKS_Loading;
			break;
		case EApplicationDialogType.EHOOKS_SE:
			BackgroundImage = ScreenResource.EHOOKS_Loading;
			break;
		case EApplicationDialogType.DTB:
			BackgroundImage = ScreenResource.DTB_Loading;
			break;
		case EApplicationDialogType.EE:
			BackgroundImage = ScreenResource.EE_Loading;
			break;
		}
		ShowProgressBar = false;
		ShowText = false;
		ProgressBarColor = ETASColorProvider.Blue;
		TextColor = ETASColorProvider.Blue;
		m_Headline.ForeColor = ETASColorProvider.Blue;
		m_Subheadline.ForeColor = ETASColorProvider.Blue;
		ProgressBarHeight = 15;
		float num = 96f / CreateGraphics().DpiX;
		foreach (Control control in base.Controls)
		{
			control.Font = new Font(control.Font.FontFamily, num * control.Font.Size);
		}
	}

	public void ShowStartupDialog()
	{
		if (base.InvokeRequired)
		{
			Invoke((MethodInvoker)delegate
			{
				Show();
				BringToFront();
			});
		}
		else
		{
			Show();
			BringToFront();
		}
	}

	public void ShowStartupDialog(IWin32Window owner)
	{
		if (base.InvokeRequired)
		{
			Invoke((MethodInvoker)delegate
			{
				Show(owner);
				BringToFront();
				CenterToParent();
			});
		}
		else
		{
			Show(owner);
			BringToFront();
			CenterToParent();
		}
	}

	public void CloseStartupDialog()
	{
		if (base.InvokeRequired)
		{
			Invoke((MethodInvoker)delegate
			{
				Close();
			});
		}
		else
		{
			Close();
		}
	}

	protected override void OnBackgroundImageChanged(EventArgs e)
	{
		base.OnBackgroundImageChanged(e);
		base.Size = new Size(Math.Max(BackgroundImage.Size.Width, 268), Math.Max(BackgroundImage.Size.Height, 108));
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.m_Information = new System.Windows.Forms.Label();
		this.m_ProgressBar = new System.Windows.Forms.ProgressBar();
		this.panel1 = new ETAS.StandardDialogs.Dialogs.ExtendedPanel();
		this.m_Headline = new System.Windows.Forms.Label();
		this.m_Subheadline = new System.Windows.Forms.Label();
		this.panel1.SuspendLayout();
		base.SuspendLayout();
		this.m_Information.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
		this.m_Information.BackColor = System.Drawing.Color.Transparent;
		this.m_Information.Font = new System.Drawing.Font("Tahoma", 8f, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, 0);
		this.m_Information.Location = new System.Drawing.Point(11, 213);
		this.m_Information.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
		this.m_Information.Name = "m_Information";
		this.m_Information.Size = new System.Drawing.Size(270, 22);
		this.m_Information.TabIndex = 2;
		this.m_Information.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
		this.m_ProgressBar.Anchor = System.Windows.Forms.AnchorStyles.Bottom;
		this.m_ProgressBar.BackColor = System.Drawing.Color.White;
		this.m_ProgressBar.Location = new System.Drawing.Point(57, 240);
		this.m_ProgressBar.Name = "m_ProgressBar";
		this.m_ProgressBar.Size = new System.Drawing.Size(179, 19);
		this.m_ProgressBar.Style = System.Windows.Forms.ProgressBarStyle.Continuous;
		this.m_ProgressBar.TabIndex = 3;
		this.panel1.BackColor = System.Drawing.Color.Transparent;
		this.panel1.Controls.Add(this.m_Headline);
		this.panel1.Controls.Add(this.m_Subheadline);
		this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
		this.panel1.Location = new System.Drawing.Point(0, 0);
		this.panel1.Name = "panel1";
		this.panel1.Size = new System.Drawing.Size(292, 266);
		this.panel1.TabIndex = 0;
		this.m_Headline.AutoSize = true;
		this.m_Headline.BackColor = System.Drawing.Color.Transparent;
		this.m_Headline.Font = new System.Drawing.Font("Tahoma", 17f);
		this.m_Headline.Location = new System.Drawing.Point(8, 25);
		this.m_Headline.Name = "m_Headline";
		this.m_Headline.Size = new System.Drawing.Size(132, 28);
		this.m_Headline.TabIndex = 0;
		this.m_Headline.Text = "m_Headline";
		this.m_Subheadline.AutoSize = true;
		this.m_Subheadline.BackColor = System.Drawing.Color.Transparent;
		this.m_Subheadline.Font = new System.Drawing.Font("Tahoma", 12f);
		this.m_Subheadline.Location = new System.Drawing.Point(10, 57);
		this.m_Subheadline.Name = "m_Subheadline";
		this.m_Subheadline.Size = new System.Drawing.Size(118, 19);
		this.m_Subheadline.TabIndex = 1;
		this.m_Subheadline.Text = "m_Subheadline";
		base.AutoScaleDimensions = new System.Drawing.SizeF(6f, 13f);
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
		this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
		base.ClientSize = new System.Drawing.Size(292, 266);
		base.ControlBox = false;
		base.Controls.Add(this.m_Information);
		base.Controls.Add(this.m_ProgressBar);
		base.Controls.Add(this.panel1);
		this.DoubleBuffered = true;
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
		base.Name = "InternalStartupScr";
		base.ShowIcon = false;
		base.ShowInTaskbar = false;
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		this.Text = "InternalStartupScr";
		this.panel1.ResumeLayout(false);
		this.panel1.PerformLayout();
		base.ResumeLayout(false);
	}
}
