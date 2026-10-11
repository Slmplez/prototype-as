using System;

namespace Syncfusion.ComponentModel;

[Serializable]
public class NonFinalizeDisposable : IDisposable
{
	public void Dispose()
	{
		Dispose(disposing: true);
		GC.SuppressFinalize(this);
	}

	protected virtual void Dispose(bool disposing)
	{
	}
}
