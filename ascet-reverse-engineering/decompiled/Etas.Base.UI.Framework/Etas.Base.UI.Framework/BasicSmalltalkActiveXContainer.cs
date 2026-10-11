using System;
using System.Globalization;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace Etas.Base.UI.Framework;

public class BasicSmalltalkActiveXContainer : UserControl
{
	private IntPtr _myParentWindowHandle = IntPtr.Zero;

	private IntPtr ParentWindowHandle
	{
		get
		{
			if ((int)_myParentWindowHandle == 0 && base.Parent == null)
			{
				_myParentWindowHandle = GetParent(base.Handle);
			}
			return _myParentWindowHandle;
		}
	}

	[DllImport("user32.dll")]
	private static extern IntPtr GetParent(IntPtr handle);

	[DllImport("user32.dll")]
	private static extern int SendMessage(IntPtr hWnd, int Msg, IntPtr wParam, IntPtr lParam);

	[DllImport("user32.dll")]
	private static extern int PostMessage(IntPtr hWnd, int Msg, IntPtr wParam, IntPtr lParam);

	[DllImport("user32.dll")]
	private static extern int SendMessageW(IntPtr hWnd, int Msg, IntPtr wParam, IntPtr lParam);

	protected bool ProcessCmdKey_ForwardToSmalltalkParent(ref Message msg, Keys keyData)
	{
		if ((int)ParentWindowHandle > 0)
		{
			if (261 == msg.Msg)
			{
				PostMessage(ParentWindowHandle, msg.Msg, msg.WParam, msg.LParam);
				return true;
			}
			string text = ScanCodeToCharConverter.ScanCodeToString((int)keyData);
			if (string.IsNullOrEmpty(text) && (keyData & Keys.Alt) == Keys.Alt && (keyData | (Keys.LaunchApplication2 | Keys.Alt)) == (Keys.LaunchApplication2 | Keys.Alt))
			{
				PostMessage(ParentWindowHandle, msg.Msg, msg.WParam, msg.LParam);
				return true;
			}
			if (ProcessCmdKeyBeforeRoutingToParent(ref msg, keyData, text))
			{
				return true;
			}
			Win32Helper.WindowsMessages windowsMessages = (((keyData & Keys.Alt) == Keys.Alt && (keyData & Keys.Control) == 0) ? Win32Helper.WindowsMessages.WM_SYSCHAR : Win32Helper.WindowsMessages.WM_CHAR);
			if (!string.IsNullOrEmpty(text))
			{
				if (windowsMessages == Win32Helper.WindowsMessages.WM_CHAR)
				{
					if (text.Length == 1)
					{
						char c = text[0];
						IntPtr wParam = (IntPtr)c;
						UnicodeCategory unicodeCategory = char.GetUnicodeCategory(c);
						if ((c >= '\u0080' || unicodeCategory == UnicodeCategory.ModifierSymbol) && unicodeCategory != UnicodeCategory.Control)
						{
							SendMessageW(msg.HWnd, (int)windowsMessages, wParam, msg.LParam);
							return true;
						}
					}
					return false;
				}
				if (text.Length == 1)
				{
					char c2 = text[0];
					IntPtr wParam2 = (IntPtr)c2;
					if (c2 < '\u0080')
					{
						PostMessage(ParentWindowHandle, (int)windowsMessages, wParam2, msg.LParam);
						if (c2 != 't')
						{
							return c2 == 'T';
						}
						return true;
					}
				}
			}
			PostMessage(ParentWindowHandle, msg.Msg, msg.WParam, msg.LParam);
			return false;
		}
		return false;
	}

	protected sealed override bool ProcessCmdKey(ref Message msg, Keys keyData)
	{
		if (PreProcessCmdKey(ref msg, keyData))
		{
			return true;
		}
		bool flag = base.ProcessCmdKey(ref msg, keyData);
		if (!flag)
		{
			flag = ProcessCmdKey_ForwardToSmalltalkParent(ref msg, keyData);
		}
		return flag;
	}

	protected virtual bool PreProcessCmdKey(ref Message msg, Keys keyData)
	{
		return false;
	}

	protected virtual bool ProcessCmdKeyBeforeRoutingToParent(ref Message msg, Keys keyData, string keyDataString)
	{
		return false;
	}
}
