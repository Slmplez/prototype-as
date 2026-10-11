using System;
using System.Threading;
using Autofac.Util;

namespace Autofac.Features.OwnedInstances;

public class Owned<T> : Disposable
{
	private T _value;

	private IDisposable _lifetime;

	public T Value => _value;

	public Owned(T value, IDisposable lifetime)
	{
		_value = value;
		_lifetime = Enforce.ArgumentNotNull(lifetime, "lifetime");
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			IDisposable lifetime = _lifetime;
			Interlocked.CompareExchange(ref _lifetime, null, lifetime);
			if (lifetime != null)
			{
				_value = default(T);
				lifetime.Dispose();
			}
		}
		base.Dispose(disposing);
	}
}
