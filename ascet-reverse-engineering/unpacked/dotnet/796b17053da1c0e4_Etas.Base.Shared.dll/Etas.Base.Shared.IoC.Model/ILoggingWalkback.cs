using System;

namespace Etas.Base.Shared.IoC.Model;

public interface ILoggingWalkback
{
	void LogError(Exception exception);
}
