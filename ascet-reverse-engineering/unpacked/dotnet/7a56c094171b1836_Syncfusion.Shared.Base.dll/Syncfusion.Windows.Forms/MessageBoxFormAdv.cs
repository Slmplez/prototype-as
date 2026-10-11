using System;
using System.ComponentModel;
using System.Drawing;
using System.Media;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

internal class MessageBoxFormAdv : Office2007Form, IMessageFilter
{
	private enum SystemLocStrings
	{
		OK,
		Cancel,
		Abort,
		Retry,
		Ignore,
		Yes,
		No,
		Close,
		Help,
		TryAgain,
		Continue
	}

	private const int c_nHorzPad = 10;

	private const int c_nVertPad = 10;

	private FlowLayoutPanel m_contentPanel;

	private FlowLayoutPanel m_buttonsPanel;

	private ButtonAdv m_ok;

	private ButtonAdv m_cancel;

	private ButtonAdv m_yes;

	private ButtonAdv m_ignore;

	private ButtonAdv m_retry;

	private ButtonAdv m_abort;

	private ButtonAdv m_no;

	private PictureBox m_image;

	private Label m_text;

	private MessageBoxButtons m_buttons;

	private MessageBoxIcon m_icon;

	private MessageBoxDefaultButton m_defaultButton;

	private MessageBoxOptions m_options;

	private IWin32Window m_owner;

	private CancelEventHandler m_helpButtonClicked;

	private static DialogResult[][] s_buttons;

	private static string[] s_buttonNames;

	private static SystemLocStrings[] s_buttonLocIDs;

	private IContainer components;

	private bool IsImageShown => m_image.Image != null;

	private bool IsCancelable
	{
		get
		{
			bool result = true;
			switch (m_buttons)
			{
			case MessageBoxButtons.AbortRetryIgnore:
			case MessageBoxButtons.YesNo:
				result = false;
				break;
			}
			return result;
		}
	}

	static MessageBoxFormAdv()
	{
		Initialize();
	}

	public MessageBoxFormAdv()
	{
		InitializeComponent();
	}

	public MessageBoxFormAdv(IWin32Window owner, string text, string caption, MessageBoxButtons buttons, MessageBoxIcon icon, MessageBoxDefaultButton defaultButton, MessageBoxOptions options, bool bShowHelpButton, CancelEventHandler helpButtonClickHandler, Image image, Size sizeImage)
		: this()
	{
		m_buttons = buttons;
		m_icon = icon;
		m_defaultButton = defaultButton;
		m_options = options;
		m_helpButtonClicked = helpButtonClickHandler;
		m_owner = owner;
		m_text.Text = text;
		Text = caption;
		base.HelpButton = bShowHelpButton;
		base.ColorScheme = MessageBoxAdv.Office2007Theme;
		if (base.ColorScheme == Office2007Theme.Black)
		{
			m_text.ForeColor = Color.White;
		}
		InitializeImage(image, sizeImage);
		InitializeButtons();
		InitializeOffice2007Style();
		InitializeOptions();
		InitializeSizes();
	}

	public MessageBoxFormAdv(IWin32Window owner, string text, string caption, MessageBoxButtons buttons, MessageBoxIcon icon, MessageBoxDefaultButton defaultButton, MessageBoxOptions options, bool bShowHelpButton, CancelEventHandler helpButtonClickHandler)
		: this(owner, text, caption, buttons, icon, defaultButton, options, bShowHelpButton, helpButtonClickHandler, null, Size.Empty)
	{
	}

	private static void Initialize()
	{
		if (s_buttons == null)
		{
			s_buttons = new DialogResult[6][]
			{
				new DialogResult[1] { DialogResult.OK },
				new DialogResult[2]
				{
					DialogResult.OK,
					DialogResult.Cancel
				},
				new DialogResult[3]
				{
					DialogResult.Abort,
					DialogResult.Retry,
					DialogResult.Ignore
				},
				new DialogResult[3]
				{
					DialogResult.Yes,
					DialogResult.No,
					DialogResult.Cancel
				},
				new DialogResult[2]
				{
					DialogResult.Yes,
					DialogResult.No
				},
				new DialogResult[2]
				{
					DialogResult.Retry,
					DialogResult.Cancel
				}
			};
		}
		if (s_buttonNames == null)
		{
			s_buttonNames = new string[8] { null, "m_ok", "m_cancel", "m_abort", "m_retry", "m_ignore", "m_yes", "m_no" };
		}
		if (s_buttonLocIDs == null)
		{
			s_buttonLocIDs = new SystemLocStrings[8]
			{
				SystemLocStrings.Close,
				SystemLocStrings.OK,
				SystemLocStrings.Cancel,
				SystemLocStrings.Abort,
				SystemLocStrings.Retry,
				SystemLocStrings.Ignore,
				SystemLocStrings.Yes,
				SystemLocStrings.No
			};
		}
	}

	private void InitializeButtons()
	{
		DialogResult[] buttons = GetButtons();
		int num = 0;
		DialogResult[] array = buttons;
		foreach (DialogResult btn in array)
		{
			ButtonAdv button = GetButton(btn);
			OperatingSystem oSVersion = Environment.OSVersion;
			if (oSVersion.Version.Major != 6 && oSVersion.Version.Minor != 1)
			{
				string locString = GetLocString(btn);
				if (!string.IsNullOrEmpty(locString))
				{
					button.Text = locString;
				}
			}
			num = (button.TabIndex = num + 1);
			m_buttonsPanel.Controls.SetChildIndex(button, num);
			button.Visible = true;
		}
		int num3 = -1;
		switch (m_defaultButton)
		{
		case MessageBoxDefaultButton.Button1:
			num3 = 0;
			break;
		case MessageBoxDefaultButton.Button2:
			num3 = 1;
			break;
		case MessageBoxDefaultButton.Button3:
			num3 = 2;
			break;
		}
		if (num3 >= 0 && num3 < buttons.Length)
		{
			ButtonAdv buttonAdv = (ButtonAdv)(base.AcceptButton = GetButton(buttons[num3]));
			buttonAdv.Select();
		}
		base.ControlBox = IsCancelable;
	}

	private DialogResult[] GetButtons()
	{
		return s_buttons[(int)m_buttons];
	}

	private void InitializeOffice2007Style()
	{
		InitializeOffice2007Style(this);
		InitializeOffice2007Style(m_contentPanel);
		InitializeOffice2007Style(m_buttonsPanel);
	}

	private void InitializeOffice2007Style(Control control)
	{
		foreach (Control control2 in control.Controls)
		{
			if (control2 is ISupportOffice2007Theme supportOffice2007Theme)
			{
				supportOffice2007Theme.Office2007ColorTheme = base.ColorScheme;
			}
		}
	}

	private void InitializeImage(Image image, Size sizeImage)
	{
		SystemSound systemSound = SystemSounds.Beep;
		if (image == null)
		{
			systemSound = InitializeSysIcon();
		}
		else
		{
			m_image.Size = (sizeImage.IsEmpty ? image.Size : sizeImage);
			m_image.Image = image;
			m_image.Visible = true;
		}
		systemSound.Play();
	}

	private SystemSound InitializeSysIcon()
	{
		SystemSound systemSound = null;
		Icon icon = null;
		switch (m_icon)
		{
		case MessageBoxIcon.Asterisk:
			icon = SystemIcons.Asterisk;
			systemSound = SystemSounds.Asterisk;
			break;
		case MessageBoxIcon.Hand:
			icon = SystemIcons.Hand;
			systemSound = SystemSounds.Hand;
			break;
		case MessageBoxIcon.Exclamation:
			icon = SystemIcons.Exclamation;
			systemSound = SystemSounds.Exclamation;
			break;
		case MessageBoxIcon.Question:
			icon = SystemIcons.Question;
			systemSound = SystemSounds.Question;
			break;
		default:
			systemSound = SystemSounds.Beep;
			break;
		}
		if (icon != null)
		{
			m_image.Size = icon.Size;
			m_image.Image = icon.ToBitmap();
			m_image.Visible = true;
			icon.Dispose();
		}
		return systemSound;
	}

	private void InitializeOptions()
	{
		if ((m_options & MessageBoxOptions.RtlReading) != 0)
		{
			RightToLeft = RightToLeft.Yes;
			RightToLeftLayout = true;
		}
		if ((m_options & MessageBoxOptions.RightAlign) != 0)
		{
			m_text.TextAlign = ContentAlignment.MiddleRight;
		}
	}

	private void InitializeSizes()
	{
		Size sz = Size.Subtract(base.Bounds.Size, base.ClientSize);
		Screen screen = ((m_owner != null && m_owner.Handle != IntPtr.Zero) ? Screen.FromHandle(m_owner.Handle) : Screen.PrimaryScreen);
		Size size = screen.WorkingArea.Size;
		Size preferredSize = m_text.GetPreferredSize(Size.Empty);
		int num = size.Width - sz.Width - 20;
		if (IsImageShown)
		{
			num -= 10 + m_image.Width;
		}
		float num2 = (float)num / (float)preferredSize.Height;
		float num3 = Math.Max((float)Math.Sqrt((double)preferredSize.Height * (double)preferredSize.Width / (double)num2), preferredSize.Height);
		if (IsImageShown)
		{
			num3 = Math.Max(num3, m_image.Height);
		}
		float num4 = num2 * num3;
		preferredSize = new Size((int)Math.Round(num4), (int)Math.Round(num3));
		preferredSize = m_text.GetPreferredSize(preferredSize);
		if (IsImageShown)
		{
			preferredSize.Height = Math.Max(preferredSize.Height, m_image.Height);
		}
		Size size2 = GetClientSize(preferredSize);
		int buttonsWidth = GetButtonsWidth();
		if (buttonsWidth > size2.Width)
		{
			num4 = preferredSize.Width;
			num3 = preferredSize.Height;
			preferredSize.Width = buttonsWidth - (size2.Width - preferredSize.Width);
			num3 = Math.Max(num4 * num3 / (float)preferredSize.Width, preferredSize.Height);
			if (IsImageShown)
			{
				num3 = Math.Max(num3, m_image.Height);
			}
			preferredSize.Height = (int)Math.Round(num3);
			size2 = GetClientSize(preferredSize);
		}
		else
		{
			SetButonsPadding(size2, buttonsWidth);
		}
		Size sz2 = Size.Add(size2, sz);
		Size sz3 = Size.Subtract(size, sz2);
		if (sz3.Width > 0)
		{
			sz3.Width = 0;
		}
		if (sz3.Height > 0)
		{
			sz3.Height = 0;
		}
		if (!sz3.IsEmpty)
		{
			size2 = Size.Add(size2, sz3);
			preferredSize = Size.Add(preferredSize, sz3);
			if (buttonsWidth < size2.Width)
			{
				SetButonsPadding(size2, buttonsWidth);
			}
		}
		base.ClientSize = size2;
		m_text.ClientSize = preferredSize;
	}

	private ButtonAdv GetButton(DialogResult btn)
	{
		string key = s_buttonNames[(int)btn];
		return (ButtonAdv)m_buttonsPanel.Controls[key];
	}

	private void SetButonsPadding(Size clientSize, int btnsWidth)
	{
		int num = (clientSize.Width - btnsWidth) / 2;
		Padding padding = m_buttonsPanel.Padding;
		if (RightToLeft == RightToLeft.Yes)
		{
			padding.Right = num;
		}
		else
		{
			padding.Left = num;
		}
		m_buttonsPanel.Padding = padding;
	}

	private Size GetClientSize(Size textSize)
	{
		Size result = new Size
		{
			Width = 10 + textSize.Width + 10
		};
		if (IsImageShown)
		{
			result.Width += 10 + m_image.Width + 10;
		}
		result.Height = 10 + textSize.Height + 5 + m_buttonsPanel.Height + 10;
		return result;
	}

	private int GetButtonsWidth()
	{
		int num = 10;
		DialogResult[] buttons = GetButtons();
		DialogResult[] array = buttons;
		foreach (DialogResult btn in array)
		{
			ButtonAdv button = GetButton(btn);
			num += button.Width + button.Margin.Horizontal;
		}
		return num;
	}

	private string GetLocString(DialogResult btn)
	{
		string result = null;
		SystemLocStrings i = s_buttonLocIDs[(int)btn];
		try
		{
			result = NativeMethods.MB_GetString((int)i);
		}
		catch
		{
		}
		return result;
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		Application.AddMessageFilter(this);
		if (SystemInformation.IsSnapToDefaultEnabled)
		{
			MethodInvoker method = SnapToDefault;
			BeginInvoke(method);
		}
	}

	private void SnapToDefault()
	{
		if (base.AcceptButton is Control control)
		{
			Point p = new Point(control.Width / 2, control.Height / 2);
			p = control.PointToScreen(p);
			Cursor.Position = p;
		}
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		Application.RemoveMessageFilter(this);
		base.OnHandleDestroyed(e);
	}

	protected override void OnClosing(CancelEventArgs e)
	{
		base.OnClosing(e);
		bool flag = true;
		DialogResult[] buttons = GetButtons();
		DialogResult[] array = buttons;
		foreach (DialogResult dialogResult in array)
		{
			if (dialogResult == base.DialogResult)
			{
				flag = false;
				break;
			}
		}
		e.Cancel = flag && (!IsCancelable || base.DialogResult != DialogResult.Cancel);
	}

	protected override void OnHelpButtonClicked(CancelEventArgs e)
	{
		base.OnHelpButtonClicked(e);
		if (m_helpButtonClicked != null)
		{
			m_helpButtonClicked(this, e);
		}
	}

	bool IMessageFilter.PreFilterMessage(ref Message m)
	{
		if (base.IsHandleCreated && m.Msg == 256)
		{
			Keys keys = (Keys)((int)m.WParam | (int)Control.ModifierKeys);
			if (keys == Keys.Escape && base.ControlBox && (base.Handle == m.HWnd || NativeMethods.IsChild(base.Handle, m.HWnd)))
			{
				if (m_buttons == MessageBoxButtons.OK)
				{
					base.DialogResult = DialogResult.OK;
				}
				else
				{
					base.DialogResult = DialogResult.Cancel;
				}
			}
		}
		return false;
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
		this.m_ok = new Syncfusion.Windows.Forms.ButtonAdv();
		this.m_yes = new Syncfusion.Windows.Forms.ButtonAdv();
		this.m_abort = new Syncfusion.Windows.Forms.ButtonAdv();
		this.m_retry = new Syncfusion.Windows.Forms.ButtonAdv();
		this.m_ignore = new Syncfusion.Windows.Forms.ButtonAdv();
		this.m_no = new Syncfusion.Windows.Forms.ButtonAdv();
		this.m_cancel = new Syncfusion.Windows.Forms.ButtonAdv();
		this.m_text = new System.Windows.Forms.Label();
		this.m_image = new System.Windows.Forms.PictureBox();
		this.m_contentPanel = new System.Windows.Forms.FlowLayoutPanel();
		this.m_buttonsPanel = new System.Windows.Forms.FlowLayoutPanel();
		((System.ComponentModel.ISupportInitialize)this.m_image).BeginInit();
		this.m_contentPanel.SuspendLayout();
		this.m_buttonsPanel.SuspendLayout();
		base.SuspendLayout();
		this.m_ok.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.m_ok.DialogResult = System.Windows.Forms.DialogResult.OK;
		this.m_ok.Location = new System.Drawing.Point(515, 5);
		this.m_ok.Margin = new System.Windows.Forms.Padding(5, 5, 5, 8);
		this.m_ok.Name = "m_ok";
		this.m_ok.Size = new System.Drawing.Size(75, 23);
		this.m_ok.TabIndex = 0;
		this.m_ok.Text = "&OK";
		this.m_ok.UseVisualStyle = true;
		this.m_ok.Visible = false;
		this.m_yes.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.m_yes.DialogResult = System.Windows.Forms.DialogResult.Yes;
		this.m_yes.Location = new System.Drawing.Point(430, 5);
		this.m_yes.Margin = new System.Windows.Forms.Padding(5, 5, 5, 8);
		this.m_yes.Name = "m_yes";
		this.m_yes.Size = new System.Drawing.Size(75, 23);
		this.m_yes.TabIndex = 0;
		this.m_yes.Text = "&Yes";
		this.m_yes.UseVisualStyle = true;
		this.m_yes.Visible = false;
		this.m_abort.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.m_abort.DialogResult = System.Windows.Forms.DialogResult.Abort;
		this.m_abort.Location = new System.Drawing.Point(345, 5);
		this.m_abort.Margin = new System.Windows.Forms.Padding(5, 5, 5, 8);
		this.m_abort.Name = "m_abort";
		this.m_abort.Size = new System.Drawing.Size(75, 23);
		this.m_abort.TabIndex = 0;
		this.m_abort.Text = "&Abort";
		this.m_abort.UseVisualStyle = true;
		this.m_abort.Visible = false;
		this.m_retry.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.m_retry.DialogResult = System.Windows.Forms.DialogResult.Retry;
		this.m_retry.Location = new System.Drawing.Point(5, 5);
		this.m_retry.Margin = new System.Windows.Forms.Padding(5, 5, 5, 8);
		this.m_retry.Name = "m_retry";
		this.m_retry.Size = new System.Drawing.Size(75, 23);
		this.m_retry.TabIndex = 0;
		this.m_retry.Text = "&Retry";
		this.m_retry.UseVisualStyle = true;
		this.m_retry.Visible = false;
		this.m_ignore.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.m_ignore.DialogResult = System.Windows.Forms.DialogResult.Ignore;
		this.m_ignore.Location = new System.Drawing.Point(260, 5);
		this.m_ignore.Margin = new System.Windows.Forms.Padding(5, 5, 5, 8);
		this.m_ignore.Name = "m_ignore";
		this.m_ignore.Size = new System.Drawing.Size(75, 23);
		this.m_ignore.TabIndex = 0;
		this.m_ignore.Text = "&Ignore";
		this.m_ignore.UseVisualStyle = true;
		this.m_ignore.Visible = false;
		this.m_no.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.m_no.DialogResult = System.Windows.Forms.DialogResult.No;
		this.m_no.Location = new System.Drawing.Point(175, 5);
		this.m_no.Margin = new System.Windows.Forms.Padding(5, 5, 5, 8);
		this.m_no.Name = "m_no";
		this.m_no.Size = new System.Drawing.Size(75, 23);
		this.m_no.TabIndex = 0;
		this.m_no.Text = "&No";
		this.m_no.UseVisualStyle = true;
		this.m_no.Visible = false;
		this.m_cancel.Appearance = Syncfusion.Windows.Forms.ButtonAppearance.Office2007;
		this.m_cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		this.m_cancel.Location = new System.Drawing.Point(90, 5);
		this.m_cancel.Margin = new System.Windows.Forms.Padding(5, 5, 5, 8);
		this.m_cancel.Name = "m_cancel";
		this.m_cancel.Size = new System.Drawing.Size(75, 23);
		this.m_cancel.TabIndex = 0;
		this.m_cancel.Text = "&Cancel";
		this.m_cancel.UseVisualStyle = true;
		this.m_cancel.Visible = false;
		this.m_text.BackColor = System.Drawing.Color.Transparent;
		this.m_text.Location = new System.Drawing.Point(73, 10);
		this.m_text.Margin = new System.Windows.Forms.Padding(10, 10, 5, 5);
		this.m_text.Name = "m_text";
		this.m_text.Size = new System.Drawing.Size(513, 48);
		this.m_text.TabIndex = 0;
		this.m_text.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
		this.m_image.BackColor = System.Drawing.Color.Transparent;
		this.m_image.Location = new System.Drawing.Point(5, 10);
		this.m_image.Margin = new System.Windows.Forms.Padding(5, 10, 10, 5);
		this.m_image.Name = "m_image";
		this.m_image.Size = new System.Drawing.Size(48, 48);
		this.m_image.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
		this.m_image.TabIndex = 2;
		this.m_image.TabStop = false;
		this.m_image.Visible = false;
		this.m_contentPanel.AutoSize = true;
		this.m_contentPanel.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
		this.m_contentPanel.BackColor = System.Drawing.Color.Transparent;
		this.m_contentPanel.Controls.Add(this.m_image);
		this.m_contentPanel.Controls.Add(this.m_text);
		this.m_contentPanel.Dock = System.Windows.Forms.DockStyle.Fill;
		this.m_contentPanel.Location = new System.Drawing.Point(5, 0);
		this.m_contentPanel.Name = "m_contentPanel";
		this.m_contentPanel.Size = new System.Drawing.Size(591, 67);
		this.m_contentPanel.TabIndex = 0;
		this.m_contentPanel.WrapContents = false;
		this.m_buttonsPanel.AutoSize = true;
		this.m_buttonsPanel.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
		this.m_buttonsPanel.BackColor = System.Drawing.Color.Transparent;
		this.m_buttonsPanel.Controls.Add(this.m_retry);
		this.m_buttonsPanel.Controls.Add(this.m_cancel);
		this.m_buttonsPanel.Controls.Add(this.m_no);
		this.m_buttonsPanel.Controls.Add(this.m_ignore);
		this.m_buttonsPanel.Controls.Add(this.m_abort);
		this.m_buttonsPanel.Controls.Add(this.m_yes);
		this.m_buttonsPanel.Controls.Add(this.m_ok);
		this.m_buttonsPanel.Dock = System.Windows.Forms.DockStyle.Bottom;
		this.m_buttonsPanel.Location = new System.Drawing.Point(5, 67);
		this.m_buttonsPanel.Name = "m_buttonsPanel";
		this.m_buttonsPanel.Size = new System.Drawing.Size(591, 36);
		this.m_buttonsPanel.TabIndex = 0;
		this.m_buttonsPanel.WrapContents = false;
		base.ClientSize = new System.Drawing.Size(601, 103);
		base.Controls.Add(this.m_contentPanel);
		base.Controls.Add(this.m_buttonsPanel);
		base.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
		base.KeyPreview = true;
		base.MaximizeBox = false;
		base.MinimizeBox = false;
		base.Name = "MessageBoxFormAdv";
		base.Padding = new System.Windows.Forms.Padding(5, 0, 5, 0);
		base.ShowIcon = false;
		base.ShowInTaskbar = false;
		base.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
		base.UseOffice2007SchemeBackColor = true;
		((System.ComponentModel.ISupportInitialize)this.m_image).EndInit();
		this.m_contentPanel.ResumeLayout(false);
		this.m_buttonsPanel.ResumeLayout(false);
		base.ResumeLayout(false);
		base.PerformLayout();
	}
}
