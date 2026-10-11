using System;
using System.Collections;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class ToolStripsCollection : ArrayList
{
	public event ToolStripEventHandler ToolStripAdded;

	public event ToolStripEventHandler ToolStripRemoved;

	public override int Add(object value)
	{
		int num = -1;
		if (value is ToolStrip toolStrip)
		{
			num = base.Add(toolStrip);
			OnToolStripAdded(toolStrip);
			return num;
		}
		throw new ArgumentException("ToolStrip is expected");
	}

	protected virtual void OnToolStripAdded(ToolStrip toolStrip)
	{
		toolStrip.Disposed += ToolStrip_Disposed;
		if (this.ToolStripAdded != null)
		{
			this.ToolStripAdded(this, new ToolStripEventArgs(toolStrip));
		}
	}

	public void ToolStrip_Disposed(object sender, EventArgs e)
	{
		ToolStrip toolStrip = (ToolStrip)sender;
		Remove(toolStrip);
		toolStrip.Disposed -= ToolStrip_Disposed;
		if (this.ToolStripRemoved != null)
		{
			this.ToolStripRemoved(this, new ToolStripEventArgs(toolStrip));
		}
	}
}
