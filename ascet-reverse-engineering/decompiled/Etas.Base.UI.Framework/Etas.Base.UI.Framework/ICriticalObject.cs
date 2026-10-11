using System;

namespace Etas.Base.UI.Framework;

public interface ICriticalObject
{
	bool ReplaceCriticalObject(Guid id, object newObject);
}
