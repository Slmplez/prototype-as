using System;

namespace Syncfusion.ComponentModel;

[Serializable]
public class NonFinalizeDisposableWithDisposedProp : IDisposable
{
	protected bool m_bDisposed;

	protected bool IsDisposed => m_bDisposed;

	public void Dispose()
	{
		if (!m_bDisposed)
		{
			Dispose(disposing: true);
		}
	}

	protected virtual void Dispose(bool disposing)
	{
		if (disposing && !m_bDisposed)
		{
			m_bDisposed = true;
			GC.SuppressFinalize(this);
		}
	}
}
