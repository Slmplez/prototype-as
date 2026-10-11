using System;
using System.ComponentModel;
using System.Drawing;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

public static class MessageBoxAdv
{
	private static Office2007Theme s_theme = Office2007Theme.Managed;

	public static Office2007Theme Office2007Theme
	{
		get
		{
			return s_theme;
		}
		set
		{
			s_theme = value;
		}
	}

	public static DialogResult Show(string text)
	{
		return ShowCore(null, text, string.Empty, MessageBoxButtons.OK, MessageBoxIcon.None, MessageBoxDefaultButton.Button1, (MessageBoxOptions)0, showHelp: false);
	}

	public static DialogResult Show(string text, string caption)
	{
		return ShowCore(null, text, caption, MessageBoxButtons.OK, MessageBoxIcon.None, MessageBoxDefaultButton.Button1, (MessageBoxOptions)0, showHelp: false);
	}

	public static DialogResult Show(IWin32Window owner, string text)
	{
		return ShowCore(owner, text, string.Empty, MessageBoxButtons.OK, MessageBoxIcon.None, MessageBoxDefaultButton.Button1, (MessageBoxOptions)0, showHelp: false);
	}

	public static DialogResult Show(string text, string caption, MessageBoxButtons buttons)
	{
		return ShowCore(null, text, caption, buttons, MessageBoxIcon.None, MessageBoxDefaultButton.Button1, (MessageBoxOptions)0, showHelp: false);
	}

	public static DialogResult Show(IWin32Window owner, string text, string caption)
	{
		return ShowCore(owner, text, caption, MessageBoxButtons.OK, MessageBoxIcon.None, MessageBoxDefaultButton.Button1, (MessageBoxOptions)0, showHelp: false);
	}

	public static DialogResult Show(string text, string caption, MessageBoxButtons buttons, MessageBoxIcon icon)
	{
		return ShowCore(null, text, caption, buttons, icon, MessageBoxDefaultButton.Button1, (MessageBoxOptions)0, showHelp: false);
	}

	public static DialogResult Show(string text, string caption, MessageBoxButtons buttons, Image image, Size imageSize)
	{
		return ShowCore(null, text, caption, buttons, MessageBoxIcon.None, MessageBoxDefaultButton.Button1, (MessageBoxOptions)0, showHelp: false, null, image, imageSize);
	}

	public static DialogResult Show(IWin32Window owner, string text, string caption, MessageBoxButtons buttons)
	{
		return ShowCore(owner, text, caption, buttons, MessageBoxIcon.None, MessageBoxDefaultButton.Button1, (MessageBoxOptions)0, showHelp: false);
	}

	public static DialogResult Show(string text, string caption, MessageBoxButtons buttons, MessageBoxIcon icon, MessageBoxDefaultButton defaultButton)
	{
		return ShowCore(null, text, caption, buttons, icon, defaultButton, (MessageBoxOptions)0, showHelp: false);
	}

	public static DialogResult Show(string text, string caption, MessageBoxButtons buttons, Image image, Size imageSize, MessageBoxDefaultButton defaultButton)
	{
		return ShowCore(null, text, caption, buttons, MessageBoxIcon.None, defaultButton, (MessageBoxOptions)0, showHelp: false, null, image, imageSize);
	}

	public static DialogResult Show(IWin32Window owner, string text, string caption, MessageBoxButtons buttons, MessageBoxIcon icon)
	{
		return ShowCore(owner, text, caption, buttons, icon, MessageBoxDefaultButton.Button1, (MessageBoxOptions)0, showHelp: false);
	}

	public static DialogResult Show(IWin32Window owner, string text, string caption, MessageBoxButtons buttons, Image image, Size imageSize)
	{
		return ShowCore(owner, text, caption, buttons, MessageBoxIcon.None, MessageBoxDefaultButton.Button1, (MessageBoxOptions)0, showHelp: false, null, image, imageSize);
	}

	public static DialogResult Show(string text, string caption, MessageBoxButtons buttons, MessageBoxIcon icon, MessageBoxDefaultButton defaultButton, MessageBoxOptions options)
	{
		return ShowCore(null, text, caption, buttons, icon, defaultButton, options, showHelp: false);
	}

	public static DialogResult Show(string text, string caption, MessageBoxButtons buttons, Image image, Size imageSize, MessageBoxDefaultButton defaultButton, MessageBoxOptions options)
	{
		return ShowCore(null, text, caption, buttons, MessageBoxIcon.None, defaultButton, options, showHelp: false, null, image, imageSize);
	}

	public static DialogResult Show(IWin32Window owner, string text, string caption, MessageBoxButtons buttons, MessageBoxIcon icon, MessageBoxDefaultButton defaultButton)
	{
		return ShowCore(owner, text, caption, buttons, icon, defaultButton, (MessageBoxOptions)0, showHelp: false);
	}

	public static DialogResult Show(IWin32Window owner, string text, string caption, MessageBoxButtons buttons, Image image, Size imageSize, MessageBoxDefaultButton defaultButton)
	{
		return ShowCore(owner, text, caption, buttons, MessageBoxIcon.None, defaultButton, (MessageBoxOptions)0, showHelp: false, null, image, imageSize);
	}

	public static DialogResult Show(string text, string caption, MessageBoxButtons buttons, MessageBoxIcon icon, MessageBoxDefaultButton defaultButton, MessageBoxOptions options, bool displayHelpButton)
	{
		return ShowCore(null, text, caption, buttons, icon, defaultButton, options, displayHelpButton);
	}

	public static DialogResult Show(string text, string caption, MessageBoxButtons buttons, Image image, Size imageSize, MessageBoxDefaultButton defaultButton, MessageBoxOptions options, bool displayHelpButton)
	{
		return ShowCore(null, text, caption, buttons, MessageBoxIcon.None, defaultButton, options, displayHelpButton, null, image, imageSize);
	}

	public static DialogResult Show(string text, string caption, MessageBoxButtons buttons, MessageBoxIcon icon, MessageBoxDefaultButton defaultButton, MessageBoxOptions options, CancelEventHandler helpButtonClickHandler)
	{
		return ShowCore(null, text, caption, buttons, icon, defaultButton, options, showHelp: true, helpButtonClickHandler);
	}

	public static DialogResult Show(string text, string caption, MessageBoxButtons buttons, Image image, Size imageSize, MessageBoxDefaultButton defaultButton, MessageBoxOptions options, CancelEventHandler helpButtonClickHandler)
	{
		return ShowCore(null, text, caption, buttons, MessageBoxIcon.None, defaultButton, options, showHelp: true, helpButtonClickHandler, image, imageSize);
	}

	public static DialogResult Show(IWin32Window owner, string text, string caption, MessageBoxButtons buttons, MessageBoxIcon icon, MessageBoxDefaultButton defaultButton, MessageBoxOptions options)
	{
		return ShowCore(owner, text, caption, buttons, icon, defaultButton, options, showHelp: false);
	}

	public static DialogResult Show(IWin32Window owner, string text, string caption, MessageBoxButtons buttons, Image image, Size imageSize, MessageBoxDefaultButton defaultButton, MessageBoxOptions options)
	{
		return ShowCore(owner, text, caption, buttons, MessageBoxIcon.None, defaultButton, options, showHelp: false, null, image, imageSize);
	}

	private static bool IsEnumValid(Enum enumValue, int value, int minValue, int maxValue)
	{
		if (value >= minValue)
		{
			return value <= maxValue;
		}
		return false;
	}

	private static bool IsEnumWithinShiftedRange(Enum enumValue, int numBitsToShift, int minValAfterShift, int maxValAfterShift)
	{
		int num = Convert.ToInt32(enumValue, CultureInfo.InvariantCulture);
		int num2 = num >> numBitsToShift;
		if (num2 << numBitsToShift != num)
		{
			return false;
		}
		if (num2 >= minValAfterShift)
		{
			return num2 <= maxValAfterShift;
		}
		return false;
	}

	private static DialogResult ShowCore(IWin32Window owner, string text, string caption, MessageBoxButtons buttons, MessageBoxIcon icon, MessageBoxDefaultButton defaultButton, MessageBoxOptions options, bool showHelp, CancelEventHandler helpButtonClickHandler, Image image, Size imageSize)
	{
		if (!IsEnumValid(buttons, (int)buttons, 0, 5))
		{
			throw new InvalidEnumArgumentException("buttons", (int)buttons, typeof(MessageBoxButtons));
		}
		if (!IsEnumWithinShiftedRange(icon, 4, 0, 4))
		{
			throw new InvalidEnumArgumentException("icon", (int)icon, typeof(MessageBoxIcon));
		}
		if (!IsEnumWithinShiftedRange(defaultButton, 8, 0, 2))
		{
			throw new InvalidEnumArgumentException("defaultButton", (int)defaultButton, typeof(DialogResult));
		}
		if (!SystemInformation.UserInteractive && (options & (MessageBoxOptions.ServiceNotification | MessageBoxOptions.DefaultDesktopOnly)) == 0)
		{
			throw new InvalidOperationException("Can't show modal non-interactive service message box.");
		}
		if (owner != null && (options & (MessageBoxOptions.ServiceNotification | MessageBoxOptions.DefaultDesktopOnly)) != 0)
		{
			throw new ArgumentException("Can't show service message box with owner", "options");
		}
		int num = (showHelp ? 16384 : 0);
		num |= (int)((uint)buttons | (uint)icon | (uint)defaultButton | (uint)options);
		IntPtr intPtr = IntPtr.Zero;
		if (showHelp || (options & (MessageBoxOptions.ServiceNotification | MessageBoxOptions.DefaultDesktopOnly)) == 0)
		{
			intPtr = ((options == MessageBoxOptions.DefaultDesktopOnly || options == MessageBoxOptions.ServiceNotification) ? NativeMethods.GetDesktopWindow() : (owner?.Handle ?? NativeMethods.GetActiveWindow()));
		}
		MessageBoxFormAdv messageBoxFormAdv = new MessageBoxFormAdv(owner, text, caption, buttons, icon, defaultButton, options, showHelp, helpButtonClickHandler, image, imageSize);
		if (owner != null)
		{
			messageBoxFormAdv.StartPosition = FormStartPosition.CenterParent;
		}
		DialogResult result = messageBoxFormAdv.ShowDialog(owner);
		if (intPtr != IntPtr.Zero)
		{
			NativeMethods.SendMessage(intPtr, 7, 0, 0);
		}
		return result;
	}

	private static DialogResult ShowCore(IWin32Window owner, string text, string caption, MessageBoxButtons buttons, MessageBoxIcon icon, MessageBoxDefaultButton defaultButton, MessageBoxOptions options, bool showHelp, CancelEventHandler helpButtonClickHandler)
	{
		return ShowCore(owner, text, caption, buttons, icon, defaultButton, options, showHelp, null, null, Size.Empty);
	}

	private static DialogResult ShowCore(IWin32Window owner, string text, string caption, MessageBoxButtons buttons, MessageBoxIcon icon, MessageBoxDefaultButton defaultButton, MessageBoxOptions options, bool showHelp)
	{
		return ShowCore(owner, text, caption, buttons, icon, defaultButton, options, showHelp, null);
	}
}
