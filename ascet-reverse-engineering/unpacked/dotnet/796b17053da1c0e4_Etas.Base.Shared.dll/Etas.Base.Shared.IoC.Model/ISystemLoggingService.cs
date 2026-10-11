namespace Etas.Base.Shared.IoC.Model;

public interface ISystemLoggingService
{
	ILoggingApplicationLog ApplicationLog { get; }

	ILoggingWalkback WalkbackLog { get; }

	ILoggingPerformance PerformanceLog { get; }
}
