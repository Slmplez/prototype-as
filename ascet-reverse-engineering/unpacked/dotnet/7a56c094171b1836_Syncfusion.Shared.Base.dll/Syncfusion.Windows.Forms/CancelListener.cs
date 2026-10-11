using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class CancelListener : IMessageFilter, IKeyboardProcHookClient
{
	private ICanCancel canCancel;

	public CancelListener(ICanCancel canCancel)
	{
		this.canCancel = canCancel;
		MessageFilterEntryHelper.AddMessageFilter(this, ontop: false);
	}

	bool IMessageFilter.PreFilterMessage(ref Message m)
	{
		if (m.Msg >= 256)
		{
			Keys keys = (Keys)m.WParam.ToInt32();
			if (keys == Keys.Escape)
			{
				canCancel.CancelOperation();
				MessageFilterEntryHelper.RemoveMessageFilter(this);
				return true;
			}
		}
		return false;
	}

	bool IKeyboardProcHookClient.KeyboardHookProc(int wParam, int lParam)
	{
		if ((lParam & 0x80000000u) == 0)
		{
			if (wParam == 27)
			{
				canCancel.CancelOperation();
				MessageFilterEntryHelper.RemoveMessageFilter(this);
				return true;
			}
		}
		return false;
	}

	public void Release()
	{
		MessageFilterEntryHelper.RemoveMessageFilter(this);
	}
}
