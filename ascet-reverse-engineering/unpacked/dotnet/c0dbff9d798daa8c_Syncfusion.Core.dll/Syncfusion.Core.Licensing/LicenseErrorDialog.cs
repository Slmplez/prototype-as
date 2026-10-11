using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Text;
using System.Windows.Forms;
using Microsoft.Win32;

namespace Syncfusion.Core.Licensing;

internal class LicenseErrorDialog : Form
{
	private static int ClientWidth = 400;

	private static int ClientHeight = 150;

	private static int ButtonSideClearance = 10;

	private static int ButtonBottomClearance = 5;

	private static int ButtonWidth = 80;

	private static int ButtonHeight = 35;

	private static int LabelLeftClearance = 10;

	private static int LabelRightClearance = 10;

	private static int LabelTopClearance = 12;

	private static int LabelHeight = 120;

	private static string NoStudio = "NOSTUDIO";

	private static string DesigntimeKeyExpired = "Syncfusion Licensing Runtime has detected a valid but expired evaluation key. Please contact sales@syncfusion.com for further assistance.";

	private static string DesigntimeNoKey = "Syncfusion Licensing Runtime was not able to detect a valid key for this version of Essential Studio.";

	private static string DesigntimeNotLicensedControl = "Syncfusion Licensing Runtime was not able to detect a valid key for this control. Please check if you have installed unlock keys for all components under use.";

	private static string RuntimeKeyExpired = "This version was compiled with an evaluation version of Essential Studio. The evaluation has expired. Please contact salessupport@syncfusion.com for further assistance";

	private static string RuntimeLicensedComponentEntryMissing = "Syncfusion Licensing Runtime was not able to detect an entry for Syncfusion controls in this project's licx file. Select 'Fix It' to let the runtime correct this error automatically.";

	private static string RuntimeNoLicx = "Syncfusion Licensing Runtime was not able to detect a valid licx file with an entry for Syncfusion controls in this project. Select 'Fix It' to let the runtime correct this error automatically.";

	private static string RuntimeNotLicensedControl = "This program appears to have been compiled with an unlicensed version of Essential Studio. Please recheck the build system to ensure correct keys are installed.";

	private static string UnknownLicensingError = "An unknown error occured in the Syncfusion Licensing Runtime. Please contact support@syncfusion.com for further assistance.";

	public Label ErrorLabel;

	private Button btnEnabler;

	private Button btnDetails;

	private LicenseLog licenseLog;

	private string studioPath = string.Empty;

	private Container components;

	public LicenseErrorDialog(LicenseLog log)
	{
		licenseLog = log;
		InitializeUI();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeUI()
	{
		SuspendLayout();
		InitializeDialogSettings();
		InitializeAppIcon();
		InitializeErrorLabel();
		InitializeButtons();
		AddControlsToForm();
		ResumeLayout(performLayout: false);
	}

	private void InitializeDialogSettings()
	{
		base.FormBorderStyle = FormBorderStyle.FixedDialog;
		base.ClientSize = new Size(ClientWidth, ClientHeight);
		base.Name = "LicenseErrorDialog";
		base.StartPosition = FormStartPosition.CenterParent;
		Text = "Licensing Error";
	}

	private void InitializeAppIcon()
	{
		Stream manifestResourceStream = GetType().Assembly.GetManifestResourceStream("Syncfusion.Core.Licensing.syncf.ico");
		Icon icon = new Icon(manifestResourceStream);
		base.Icon = icon;
	}

	private void InitializeErrorLabel()
	{
		ErrorLabel = new Label();
		try
		{
			ErrorLabel.Font = new Font("Verdana", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
		}
		catch (Exception)
		{
			ErrorLabel.Font = Control.DefaultFont;
		}
		ErrorLabel.Location = new Point(LabelLeftClearance, LabelTopClearance);
		ErrorLabel.Name = "ErrorLabel";
		ErrorLabel.Size = new Size(base.ClientSize.Width - (LabelLeftClearance + LabelRightClearance), LabelHeight);
		ErrorLabel.Text = GetErrorText();
	}

	private string GetErrorText()
	{
		return licenseLog.GetErrorKind() switch
		{
			LicenseError.DesigntimeKeyExpired => DesigntimeKeyExpired, 
			LicenseError.DesigntimeNoKey => DesigntimeNoKey, 
			LicenseError.DesigntimeNotLicensedControl => DesigntimeNotLicensedControl, 
			LicenseError.RuntimeKeyExpired => RuntimeKeyExpired, 
			LicenseError.RuntimeLicensedComponentEntryMissing => RuntimeLicensedComponentEntryMissing, 
			LicenseError.RuntimeNoLicx => RuntimeNoLicx, 
			LicenseError.RuntimeNotLicensedControl => RuntimeNotLicensedControl, 
			_ => UnknownLicensingError, 
		};
	}

	private void InitializeButtons()
	{
		btnEnabler = new Button();
		btnEnabler.Name = "btnEnabler";
		btnEnabler.Text = "Fix It";
		btnEnabler.Visible = false;
		btnEnabler.Click += AddLicxEntries;
		btnDetails = new Button();
		btnDetails.Name = "btnDetails";
		btnDetails.Text = "View Diagnostics";
		btnDetails.Visible = false;
		btnDetails.Click += DisplayLog;
		if (ShouldRunLicenseEnabler())
		{
			LayoutButtons(new Button[2] { btnEnabler, btnDetails });
		}
		else
		{
			LayoutButtons(new Button[1] { btnDetails });
		}
	}

	private void AddControlsToForm()
	{
		base.Controls.AddRange(new Control[3] { btnEnabler, btnDetails, ErrorLabel });
	}

	private void LayoutButtons(Button[] buttons)
	{
		Point location = new Point(base.ClientSize.Width - ButtonSideClearance - ButtonWidth, base.ClientSize.Height - ButtonHeight - ButtonBottomClearance);
		Size size = new Size(ButtonWidth, ButtonHeight);
		int num = 0;
		foreach (Button button in buttons)
		{
			button.Size = size;
			button.Location = location;
			button.TabStop = true;
			button.TabIndex = num++;
			button.Visible = true;
			button.FlatStyle = FlatStyle.Flat;
			location.X -= ButtonWidth + ButtonSideClearance;
		}
	}

	private void DisplayLog(object sender, EventArgs e)
	{
		DiagnosticsForm diagnosticsForm = new DiagnosticsForm(GetLogDispayText(), this);
		diagnosticsForm.ShowDialog();
	}

	private void AddLicxEntries(object sender, EventArgs e)
	{
		if (ShouldRunLicenseEnabler())
		{
			string studioInstallPath = GetStudioInstallPath();
			InternalCallLicensingEnabler(studioInstallPath);
			Close();
		}
	}

	private void InternalCallLicensingEnabler(string studioPath)
	{
		_ = Environment.Version.Major + "." + Environment.Version.Minor;
		Process process = new Process();
		process.StartInfo.FileName = studioPath + "\\Utilities\\License Enabler\\CallEnableLicensing.exe";
		process.StartInfo.Arguments = "\"" + Application.StartupPath + "\"";
		Hide();
		process.Start();
		process.WaitForExit();
	}

	private bool ShouldRunLicenseEnabler()
	{
		if (licenseLog.GetErrorKind() != LicenseError.RuntimeNoLicx)
		{
			return licenseLog.GetErrorKind() == LicenseError.RuntimeLicensedComponentEntryMissing;
		}
		return true;
	}

	private string GetLogDispayText()
	{
		string result = string.Empty;
		if (licenseLog != null)
		{
			StringBuilder stringBuilder = new StringBuilder();
			stringBuilder.Append(licenseLog.ToString());
			stringBuilder.Append(Environment.NewLine);
			if (licenseLog.UsageMode == LicenseUsageMode.Designtime)
			{
				stringBuilder.Append("Registry Keys:");
				stringBuilder.Append(Environment.NewLine);
				stringBuilder.Append(string.Join(Environment.NewLine, SweepProxy.GetUnlockTextInformation()));
				stringBuilder.Append(Environment.NewLine);
			}
			result = stringBuilder.ToString();
		}
		return result;
	}

	private bool HasStudioInstalled()
	{
		string studioInstallPath = GetStudioInstallPath();
		return studioInstallPath != NoStudio;
	}

	private string GetStudioInstallPath()
	{
		if (studioPath != string.Empty)
		{
			return studioPath;
		}
		studioPath = NoStudio;
		string fullName = GetType().Assembly.FullName;
		int startIndex = fullName.IndexOf("Version=") + 8;
		string text = fullName.Substring(startIndex);
		int num = Convert.ToInt16(text.Substring(0, text.IndexOf(".")));
		text = text.Substring(text.IndexOf(".") + 1);
		int num2 = Convert.ToInt16(text.Substring(0, text.IndexOf(".")));
		text = text.Substring(text.IndexOf(".") + 1);
		int num3 = Convert.ToInt16(text.Substring(0, text.IndexOf(".")));
		text = text.Substring(text.IndexOf(".") + 1);
		int num4 = Convert.ToInt16(text.Substring(0, text.IndexOf(",")));
		int num5 = num2;
		string text2 = num2.ToString();
		try
		{
			if (text2.Length > 1)
			{
				text2 = text2.Substring(0, text2.Length - 2);
				num5 = Convert.ToInt16(text2);
			}
		}
		catch
		{
			num5 = num2;
		}
		string name = "SOFTWARE\\Syncfusion\\Essential Suite\\InstalledVersions\\" + num + "." + num5 + "." + num3 + "." + num4;
		RegistryKey registryKey = null;
		try
		{
			registryKey = Registry.LocalMachine.OpenSubKey(name);
		}
		catch (Exception)
		{
			registryKey = null;
		}
		try
		{
			if (registryKey == null)
			{
				registryKey = Registry.CurrentUser.OpenSubKey(name);
			}
		}
		catch (Exception)
		{
			registryKey = null;
		}
		if (registryKey != null)
		{
			object value = registryKey.GetValue("");
			if (value != null)
			{
				studioPath = value.ToString();
			}
		}
		return studioPath;
	}
}
