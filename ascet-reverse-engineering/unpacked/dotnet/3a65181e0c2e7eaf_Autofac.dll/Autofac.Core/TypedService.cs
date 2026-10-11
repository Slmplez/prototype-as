using System;
using Autofac.Util;

namespace Autofac.Core;

public sealed class TypedService : Service, IServiceWithType
{
	public Type ServiceType { get; private set; }

	public override string Description => ServiceType.FullName;

	public TypedService(Type serviceType)
	{
		ServiceType = Enforce.ArgumentNotNull(serviceType, "serviceType");
	}

	public override bool Equals(object obj)
	{
		TypedService typedService = obj as TypedService;
		if (typedService == null)
		{
			return false;
		}
		return ServiceType.IsCompatibleWith(typedService.ServiceType);
	}

	public override int GetHashCode()
	{
		return ServiceType.GetCompatibleHashCode();
	}

	public Service ChangeType(Type newType)
	{
		if ((object)newType == null)
		{
			throw new ArgumentNullException("newType");
		}
		return new TypedService(newType);
	}
}
