using System;
using Autofac.Util;

namespace Autofac.Core;

public sealed class KeyedService : Service, IServiceWithType
{
	private readonly object _serviceKey;

	private readonly Type _serviceType;

	public object ServiceKey => _serviceKey;

	public Type ServiceType => _serviceType;

	public override string Description => string.Concat(ServiceKey, " (", ServiceType.FullName, ")");

	public KeyedService(object serviceKey, Type serviceType)
	{
		_serviceKey = Enforce.ArgumentNotNull(serviceKey, "serviceKey");
		_serviceType = Enforce.ArgumentNotNull(serviceType, "serviceType");
	}

	public override bool Equals(object obj)
	{
		KeyedService keyedService = obj as KeyedService;
		if (keyedService == null)
		{
			return false;
		}
		if (ServiceKey.Equals(keyedService.ServiceKey))
		{
			return ServiceType.IsCompatibleWith(keyedService.ServiceType);
		}
		return false;
	}

	public override int GetHashCode()
	{
		return ServiceKey.GetHashCode() ^ ServiceType.GetCompatibleHashCode();
	}

	public Service ChangeType(Type newType)
	{
		if ((object)newType == null)
		{
			throw new ArgumentNullException("newType");
		}
		return new KeyedService(ServiceKey, newType);
	}
}
