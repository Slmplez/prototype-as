using System;
using System.Collections.Generic;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCellsInRowCache
{
	public Dictionary<int, WeakReference> Cells = new Dictionary<int, WeakReference>();
}
