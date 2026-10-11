using System;

namespace Syncfusion.ComponentModel;

[Serializable]
public class Disposable : NonFinalizeDisposable
{
	~Disposable()
	{
		Dispose(disposing: false);
	}
}
