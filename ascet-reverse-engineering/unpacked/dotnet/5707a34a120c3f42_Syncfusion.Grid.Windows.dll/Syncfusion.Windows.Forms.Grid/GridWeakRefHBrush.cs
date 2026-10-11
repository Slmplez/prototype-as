using System;
using System.Collections;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridWeakRefHBrush : Disposable
{
	private Hashtable table;

	private IntPtr hbrush;

	public IntPtr Hbrush
	{
		get
		{
			return hbrush;
		}
		set
		{
			hbrush = value;
		}
	}

	public GridWeakRefHBrush(Hashtable table, IntPtr hbrush)
	{
		this.table = table;
		this.hbrush = hbrush;
	}

	protected override void Dispose(bool disposing)
	{
		NativeMethods.DeleteObject(hbrush);
		base.Dispose(disposing);
	}
}
