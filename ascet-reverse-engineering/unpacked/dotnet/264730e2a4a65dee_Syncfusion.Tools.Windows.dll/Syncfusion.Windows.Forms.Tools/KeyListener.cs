using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class KeyListener : IMessageFilter, IKeyboardProcHookClient
{
	private StatusBarAdvPanel owner;

	public KeyListener(StatusBarAdvPanel own)
	{
		owner = own;
	}

	public bool PreFilterMessage(ref Message m)
	{
		switch (m.Msg)
		{
		case 256:
		case 257:
			owner.KeyListener_KeyEvent((Keys)((int)m.WParam & 0xFFFF));
			break;
		}
		return false;
	}

	bool IKeyboardProcHookClient.KeyboardHookProc(int wParam, int lParam)
	{
		owner.KeyListener_KeyEvent((Keys)(wParam & 0xFFFF));
		return false;
	}
}
