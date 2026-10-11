using System;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class DragDropBehavior : Behavior
{
	public event DragEventHandler DragDrop;

	public event DragEventHandler DragOver;

	public event EventHandler DragLeave;

	public event EventHandler MouseUp;

	public event EventHandler MouseDown;

	public event EventHandler MouseMove;

	public override bool OnMouseDown(Glyph g, MouseButtons button, Point mouseLoc)
	{
		if (this.MouseDown != null)
		{
			this.MouseDown(this, EventArgs.Empty);
		}
		return base.OnMouseDown(g, button, mouseLoc);
	}

	public override bool OnMouseUp(Glyph g, MouseButtons button)
	{
		if (this.MouseUp != null)
		{
			this.MouseUp(this, EventArgs.Empty);
		}
		return base.OnMouseUp(g, button);
	}

	public override bool OnMouseMove(Glyph g, MouseButtons button, Point mouseLoc)
	{
		if (this.MouseMove != null)
		{
			this.MouseMove(this, EventArgs.Empty);
		}
		return base.OnMouseMove(g, button, mouseLoc);
	}

	public override void OnDragDrop(Glyph g, DragEventArgs e)
	{
		base.OnDragDrop(g, e);
		if (this.DragDrop != null)
		{
			this.DragDrop(this, e);
		}
	}

	public override void OnDragOver(Glyph g, DragEventArgs e)
	{
		base.OnDragOver(g, e);
		if (this.DragOver != null)
		{
			this.DragOver(this, e);
		}
	}

	public override void OnDragLeave(Glyph g, EventArgs e)
	{
		base.OnDragLeave(g, e);
		if (this.DragLeave != null)
		{
			this.DragLeave(this, e);
		}
	}
}
