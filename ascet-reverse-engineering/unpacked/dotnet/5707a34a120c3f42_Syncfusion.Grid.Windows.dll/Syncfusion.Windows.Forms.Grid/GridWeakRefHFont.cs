using System;
using System.Collections;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

internal class GridWeakRefHFont : Disposable
{
	private Hashtable table;

	private IntPtr hfont;

	public IntPtr Hfont
	{
		get
		{
			return hfont;
		}
		set
		{
			hfont = value;
		}
	}

	public GridWeakRefHFont(Hashtable table, IntPtr hfont)
	{
		this.table = table;
		this.hfont = hfont;
	}

	protected override void Dispose(bool disposing)
	{
		NativeMethods.DeleteObject(hfont);
		base.Dispose(disposing);
	}
}
