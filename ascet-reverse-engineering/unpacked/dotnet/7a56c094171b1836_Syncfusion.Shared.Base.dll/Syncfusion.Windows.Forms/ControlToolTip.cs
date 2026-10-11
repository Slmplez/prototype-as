using System;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Localization;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class ControlToolTip : Disposable
{
	[DocumentationExclude]
	internal class TTM
	{
		public const int ACTIVATE = 1025;

		public const int ADDTOOLA = 1028;

		public const int ADDTOOLW = 1074;

		public const int ADJUSTRECT = 1055;

		public const int DELTOOLA = 1029;

		public const int DELTOOLW = 1075;

		public const int ENUMTOOLSA = 1038;

		public const int ENUMTOOLSW = 1082;

		public const int GETCURRENTTOOLA = 1039;

		public const int GETCURRENTTOOLW = 1083;

		public const int GETDELAYTIME = 1045;

		public const int GETMARGIN = 1051;

		public const int GETMAXTIPWIDTH = 1049;

		public const int GETTEXTA = 1035;

		public const int GETTEXTW = 1080;

		public const int GETTIPBKCOLOR = 1046;

		public const int GETTIPTEXTCOLOR = 1047;

		public const int GETTOOLCOUNT = 1037;

		public const int GETTOOLINFOA = 1032;

		public const int GETTOOLINFOW = 1077;

		public const int HITTESTA = 1034;

		public const int HITTESTW = 1079;

		public const int NEWTOOLRECTA = 1030;

		public const int NEWTOOLRECTW = 1076;

		public const int POP = 1052;

		public const int RELAYEVENT = 1031;

		public const int SETDELAYTIME = 1027;

		public const int SETMARGIN = 1050;

		public const int SETMAXTIPWIDTH = 1048;

		public const int SETTIPBKCOLOR = 1043;

		public const int SETTIPTEXTCOLOR = 1044;

		public const int SETTOOLINFOA = 1033;

		public const int SETTOOLINFOW = 1078;

		public const int TRACKACTIVATE = 1041;

		public const int TRACKPOSITION = 1042;

		public const int UPDATE = 1053;

		public const int UPDATETIPTEXTA = 1036;

		public const int UPDATETIPTEXTW = 1081;

		public const int WINDOWFROMPOINT = 1040;

		public static readonly int ADDTOOL;

		public static readonly int DELTOOL;

		public static readonly int ENUMTOOLS;

		public static readonly int GETCURRENTTOOL;

		public static readonly int GETTEXT;

		public static readonly int GETTOOLINFO;

		public static readonly int HITTEST;

		public static readonly int NEWTOOLRECT;

		public static readonly int SETTOOLINFO;

		public static readonly int UPDATETIPTEXT;

		static TTM()
		{
			ADDTOOL = 1074;
			DELTOOL = 1075;
			ENUMTOOLS = 1082;
			GETCURRENTTOOL = 1083;
			GETTEXT = 1080;
			GETTOOLINFO = 1077;
			HITTEST = 1079;
			NEWTOOLRECT = 1076;
			SETTOOLINFO = 1078;
			UPDATETIPTEXT = 1081;
		}
	}

	private Control control;

	private NativeWindow tipWindow;

	private int toolTipId;

	public static readonly string TOOLTIPS_CLASS = "tooltips_class32";

	public static readonly string TOOLTIPS_CLASSA = "tooltips_class";

	public static readonly string TOOLTIPS_CLASSW = "tooltips_class32";

	public ControlToolTip(Control Control)
	{
		control = Control;
	}

	protected override void Dispose(bool disposing)
	{
		Destroy();
		base.Dispose(disposing);
	}

	public int RequestNextToolTipId()
	{
		return toolTipId++;
	}

	public void AddToolTip(string toolTipString, int toolTipId, Rectangle iconBounds)
	{
		CreateToolTipHandle();
		if (control != null && tipWindow != null && control.IsHandleCreated)
		{
			if (toolTipString == null)
			{
				throw new ArgumentNullException(toolTipString);
			}
			if (iconBounds.IsEmpty)
			{
				throw new ArgumentException(SR.GetString("TabBarToolTipEmptyIcon", "iconBounds"));
			}
			NativeMethods.TOOLINFO_T tOOLINFO_T = new NativeMethods.TOOLINFO_T();
			tOOLINFO_T.cbSize = Marshal.SizeOf((object)tOOLINFO_T);
			tOOLINFO_T.hWnd = control.Handle;
			tOOLINFO_T.uId = toolTipId;
			tOOLINFO_T.lpszText = toolTipString;
			tOOLINFO_T.rect = NativeMethods.RECT.FromXYWH(iconBounds.X, iconBounds.Y, iconBounds.Width, iconBounds.Height);
			tOOLINFO_T.uFlags = 16;
			NativeMethods.SendMessage(tipWindow.Handle, TTM.ADDTOOL, 0, tOOLINFO_T);
		}
	}

	public void CreateToolTipHandle()
	{
		if (control != null && control.IsHandleCreated && (tipWindow == null || tipWindow.Handle == IntPtr.Zero))
		{
			NativeMethods.INITCOMMONCONTROLSEX iNITCOMMONCONTROLSEX = new NativeMethods.INITCOMMONCONTROLSEX();
			iNITCOMMONCONTROLSEX.dwICC = 8;
			iNITCOMMONCONTROLSEX.dwSize = Marshal.SizeOf((object)iNITCOMMONCONTROLSEX);
			NativeMethods.InitCommonControlsEx(iNITCOMMONCONTROLSEX);
			CreateParams createParams = new CreateParams();
			createParams.Parent = control.Handle;
			createParams.ClassName = TOOLTIPS_CLASS;
			createParams.Style = 1;
			tipWindow = new NativeWindow();
			tipWindow.CreateHandle(createParams);
			Size maxWindowTrackSize = SystemInformation.MaxWindowTrackSize;
			NativeMethods.SendMessage(tipWindow.Handle, 1048, 0, maxWindowTrackSize.Width);
			NativeMethods.SetWindowPos(tipWindow.Handle, (IntPtr)(-2), 0, 0, 0, 0, 19);
			NativeMethods.SendMessage(tipWindow.Handle, 1027, 50, 0);
		}
	}

	public void DeactivateToolTip()
	{
		if (tipWindow != null)
		{
			NativeMethods.SendMessage(tipWindow.Handle, 1025, 0, 0);
		}
	}

	public void ActivateToolTip()
	{
		if (tipWindow != null)
		{
			NativeMethods.SendMessage(tipWindow.Handle, 1025, 1, 0);
		}
	}

	public void InitToolTip(ref int tooltipID, string toolTipText, Rectangle bounds)
	{
		if (tipWindow != null)
		{
			bool flag = bounds.IsEmpty || toolTipText == null || toolTipText.Length == 0;
			if (tooltipID == -1 && !flag)
			{
				tooltipID = RequestNextToolTipId();
				AddToolTip(toolTipText, tooltipID, bounds);
			}
			else if (tooltipID != -1 && flag)
			{
				RemoveToolTip(tooltipID);
				tooltipID = -1;
			}
		}
	}

	public void Destroy()
	{
		if (tipWindow != null)
		{
			tipWindow.DestroyHandle();
		}
		tipWindow = null;
		toolTipId = 0;
	}

	public void RemoveToolTip(int toolTipId)
	{
		if (control != null && tipWindow != null && control.IsHandleCreated)
		{
			NativeMethods.TOOLINFO_T tOOLINFO_T = new NativeMethods.TOOLINFO_T();
			tOOLINFO_T.cbSize = Marshal.SizeOf((object)tOOLINFO_T);
			tOOLINFO_T.hWnd = control.Handle;
			tOOLINFO_T.uId = toolTipId;
			NativeMethods.SendMessage(tipWindow.Handle, TTM.DELTOOL, 0, tOOLINFO_T);
		}
	}
}
