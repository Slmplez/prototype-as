using System;

namespace Syncfusion.ComponentModel;

[Serializable]
public class DisposableWithDisposedProp : NonFinalizeDisposableWithDisposedProp
{
	~DisposableWithDisposedProp()
	{
		Dispose(!base.IsDisposed);
	}
}
