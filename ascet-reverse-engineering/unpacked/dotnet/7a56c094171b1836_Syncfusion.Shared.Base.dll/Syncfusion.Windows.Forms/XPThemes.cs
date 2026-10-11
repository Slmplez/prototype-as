using System;
using System.Collections;
using System.Drawing;
using System.Globalization;
using System.Security;
using System.Security.Permissions;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

public class XPThemes
{
	private class ThemeChangeListenerForm : Form
	{
		protected override CreateParams CreateParams
		{
			get
			{
				CreateParams createParams = base.CreateParams;
				createParams.Style &= -281018369;
				createParams.Width = 0;
				createParams.Height = 0;
				return createParams;
			}
		}

		public event EventHandler ThemeChanged;

		public ThemeChangeListenerForm()
		{
			base.ControlBox = false;
			base.MinimizeBox = false;
			base.MaximizeBox = false;
			MinimumSize = new Size(0, 0);
			SetStyle(ControlStyles.CacheText | ControlStyles.EnableNotifyMessage, value: true);
			SetStyle(ControlStyles.ContainerControl | ControlStyles.StandardClick | ControlStyles.Selectable, value: false);
			base.ShowInTaskbar = false;
			base.FormBorderStyle = FormBorderStyle.None;
			base.Visible = false;
			Text = "ThemeChangeListenerForm";
			base.Size = new Size(0, 0);
			CreateHandle();
		}

		protected override void WndProc(ref Message m)
		{
			base.WndProc(ref m);
			if (m.Msg == 794)
			{
				OnThemeChanged(EventArgs.Empty);
			}
		}

		protected virtual void OnThemeChanged(EventArgs e)
		{
			if (this.ThemeChanged != null)
			{
				this.ThemeChanged(this, e);
			}
		}
	}

	private static bool isThemedOS;

	private static bool isAppThemed;

	private static bool isThemeActive;

	private static ThemeChangeListenerForm dummyForm;

	private static Hashtable htThemedControlDrawings;

	public static string ThemeFileName
	{
		get
		{
			if (!IsThemedOS)
			{
				return string.Empty;
			}
			string empty = string.Empty;
			string empty2 = string.Empty;
			string empty3 = string.Empty;
			empty = empty.PadRight(257, ' ');
			empty2 = empty2.PadRight(257, ' ');
			empty3 = empty3.PadRight(257, ' ');
			NativeMethods.GetCurrentThemeName(empty, empty.Length, empty2, empty2.Length, empty3, empty3.Length);
			return empty;
		}
	}

	public static string CurrentThemeColorScheme
	{
		get
		{
			if (!IsThemedOS)
			{
				return string.Empty;
			}
			string empty = string.Empty;
			string empty2 = string.Empty;
			string empty3 = string.Empty;
			empty = empty.PadRight(257, ' ');
			empty2 = empty2.PadRight(257, ' ');
			empty3 = empty3.PadRight(257, ' ');
			NativeMethods.GetCurrentThemeName(empty, empty.Length, empty2, empty2.Length, empty3, empty3.Length);
			return empty2;
		}
	}

	public static bool IsDefaultBlueThemeOn
	{
		get
		{
			if (!IsThemedOS || !IsThemeActive || !IsAppThemed)
			{
				return false;
			}
			string text = ThemeFileName.ToLower(CultureInfo.CurrentCulture);
			if (text.IndexOf("luna.msstyles") != -1)
			{
				string text2 = CurrentThemeColorScheme.ToLower(CultureInfo.CurrentCulture);
				text2 = text2.Trim();
				if (text2.IndexOf("normalcolor") == 0)
				{
					return true;
				}
			}
			return false;
		}
	}

	public static bool IsOliveGreenThemeOn
	{
		get
		{
			if (!IsThemedOS || !IsThemeActive || !IsAppThemed)
			{
				return false;
			}
			string text = ThemeFileName.ToLower(CultureInfo.CurrentCulture);
			if (text.IndexOf("luna.msstyles") != -1)
			{
				string text2 = CurrentThemeColorScheme.ToLower(CultureInfo.CurrentCulture);
				text2 = text2.Trim();
				if (text2.IndexOf("homestead") == 0)
				{
					return true;
				}
			}
			return false;
		}
	}

	public static bool IsSilverThemeOn
	{
		get
		{
			if (!IsThemedOS || !IsThemeActive || !IsAppThemed)
			{
				return false;
			}
			string text = ThemeFileName.ToLower(CultureInfo.CurrentCulture);
			if (text.IndexOf("luna.msstyles") != -1)
			{
				string text2 = CurrentThemeColorScheme.ToLower(CultureInfo.CurrentCulture);
				text2 = text2.Trim();
				if (text2.IndexOf("metallic") == 0)
				{
					return true;
				}
			}
			return false;
		}
	}

	public static bool IsThemedOS => isThemedOS;

	public static bool IsThemeActive => isThemeActive;

	public static bool IsAppThemed => isAppThemed;

	public static event EventHandler ThemeChanged;

	static XPThemes()
	{
		isThemedOS = false;
		isAppThemed = false;
		isThemeActive = false;
		dummyForm = null;
		htThemedControlDrawings = new Hashtable();
		isThemedOS = GetIsThemedOS();
		if (IsThemedOS)
		{
			try
			{
				SecurityPermission securityPermission = new SecurityPermission(SecurityPermissionFlag.UnmanagedCode);
				securityPermission.Assert();
				isAppThemed = NativeMethods.IsAppThemed();
				isThemeActive = NativeMethods.IsThemeActive();
				Application.ApplicationExit += ApplicationExit;
				dummyForm = new ThemeChangeListenerForm();
				dummyForm.ThemeChanged += OnThemeChanged;
				CodeAccessPermission.RevertAssert();
			}
			catch
			{
				isThemedOS = false;
			}
		}
	}

	private static bool GetIsThemedOS()
	{
		return OSFeature.Feature.IsPresent(OSFeature.Themes);
	}

	public static void RegisterControlDrawing(ThemedControlDrawing tcd)
	{
		htThemedControlDrawings[tcd] = 1;
	}

	public static void UnregisterControlDrawing(ThemedControlDrawing tcd)
	{
		if (htThemedControlDrawings.Contains(tcd))
		{
			htThemedControlDrawings.Remove(tcd);
			tcd.ResetThemeHandle();
			if (htThemedControlDrawings.Count == 0 && dummyForm != null)
			{
				dummyForm.Dispose();
				dummyForm = null;
			}
		}
	}

	private static void ResetThemeHandles()
	{
		foreach (ThemedControlDrawing key in htThemedControlDrawings.Keys)
		{
			key.ResetThemeHandle();
		}
	}

	private static void RefreshThemeHandles()
	{
		foreach (ThemedControlDrawing key in htThemedControlDrawings.Keys)
		{
			key.RefreshThemeHandle();
		}
	}

	private static void OnThemeChanged(object sender, EventArgs e)
	{
		isThemeActive = NativeMethods.IsThemeActive();
		isAppThemed = NativeMethods.IsAppThemed();
		RefreshThemeHandles();
		if (XPThemes.ThemeChanged != null)
		{
			XPThemes.ThemeChanged(null, e);
		}
	}

	private static void ApplicationExit(object sender, EventArgs e)
	{
		Application.ApplicationExit -= ApplicationExit;
		ResetThemeHandles();
		UnWireDummyForm();
	}

	private static void UnWireDummyForm()
	{
		if (dummyForm != null && !dummyForm.InvokeRequired)
		{
			UnWireDummyFormInternal();
		}
	}

	private static void UnWireDummyFormInternal()
	{
		if (dummyForm != null)
		{
			dummyForm.ThemeChanged -= OnThemeChanged;
			dummyForm.Close();
			dummyForm.Dispose();
			dummyForm = null;
		}
	}
}
