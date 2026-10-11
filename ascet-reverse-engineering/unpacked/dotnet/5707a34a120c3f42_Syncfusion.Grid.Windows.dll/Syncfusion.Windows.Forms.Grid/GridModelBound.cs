using System;
using System.Diagnostics;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public abstract class GridModelBound : NonFinalizeDisposable
{
	[NonSerialized]
	internal GridModel model;

	public GridModel Model
	{
		[DebuggerStepThrough]
		get
		{
			return model;
		}
	}

	protected GridModelBound()
	{
		model = null;
	}

	protected override void Dispose(bool disposing)
	{
		model = null;
		base.Dispose(disposing);
	}

	protected virtual void OnModelDeserialization(object sender, GridModel model)
	{
		this.model = model;
	}

	internal void RaiseModelDeserialization(object sender, GridModel model)
	{
		OnModelDeserialization(sender, model);
	}

	protected GridModelBound(GridModel model)
	{
		this.model = model;
	}

	[DocumentationExclude]
	public void SetModelInt(GridModel model)
	{
		this.model = model;
	}
}
