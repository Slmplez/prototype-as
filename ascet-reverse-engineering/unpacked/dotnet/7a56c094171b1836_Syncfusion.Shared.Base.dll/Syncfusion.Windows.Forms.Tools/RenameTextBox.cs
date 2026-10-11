using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
[ToolboxItem(false)]
[DesignTimeVisible(false)]
public sealed class RenameTextBox : TextBox
{
	private class MouseMsgFilter : IMessageFilter, IMouseHookHLProcClient
	{
		protected RenameTextBox ctrlOwner;

		public MouseMsgFilter(RenameTextBox ctrl)
		{
			ctrlOwner = ctrl;
		}

		private void ProcessMouseMessage(Control control, Point ptScreen)
		{
			try
			{
				if (!ctrlOwner.ClientRectangle.Contains(ctrlOwner.PointToClient(ptScreen)))
				{
					ctrlOwner.CancelRename();
				}
			}
			catch (Exception t)
			{
				Application.OnThreadException(t);
			}
		}

		public bool PreFilterMessage(ref Message m)
		{
			if (m.Msg >= 513 && m.Msg <= 521)
			{
				Control control = Control.FromHandle(m.HWnd);
				ProcessMouseMessage(control, control.PointToScreen(new Point((int)m.LParam)));
			}
			return false;
		}

		bool IMouseHookHLProcClient.MouseHookProc(int msg, Point point, IntPtr hwnd, int wHitTestCode, int dwExtraInfo)
		{
			if (msg >= 513 && msg <= 521)
			{
				ProcessMouseMessage(Control.FromHandle(hwnd), point);
			}
			return false;
		}
	}

	private MouseMsgFilter msgFilter;

	public event RenameCompleteEventHandler RenameComplete;

	public RenameTextBox()
	{
		base.BorderStyle = BorderStyle.FixedSingle;
		base.Visible = false;
	}

	public void BeginRename(Rectangle rc, string text)
	{
		if (!rc.IsEmpty && text != null)
		{
			Text = text;
			base.Bounds = new Rectangle(rc.Left, rc.Top, rc.Width, rc.Height);
			base.Visible = true;
			Focus();
			msgFilter = new MouseMsgFilter(this);
			MessageFilterEntryHelper.AddMessageFilter(msgFilter, ontop: false);
		}
	}

	public string EndRename(bool bcancel)
	{
		MessageFilterEntryHelper.RemoveMessageFilter(msgFilter);
		msgFilter = null;
		if (base.Visible)
		{
			base.Visible = false;
		}
		string text = null;
		if (!bcancel)
		{
			text = Text;
		}
		if (this.RenameComplete != null)
		{
			this.RenameComplete(this, new RenameCompleteEventArgs(text));
		}
		return text;
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		base.OnKeyDown(e);
		switch (e.KeyCode)
		{
		case Keys.Cancel:
			EndRename(bcancel: true);
			break;
		case Keys.Escape:
			EndRename(bcancel: true);
			break;
		case Keys.Return:
			EndRename(bcancel: false);
			break;
		}
	}

	protected override void OnLostFocus(EventArgs e)
	{
		base.OnLostFocus(e);
		if (msgFilter != null)
		{
			EndRename(bcancel: false);
		}
	}

	public void CancelRename()
	{
		EndRename(bcancel: false);
	}
}
