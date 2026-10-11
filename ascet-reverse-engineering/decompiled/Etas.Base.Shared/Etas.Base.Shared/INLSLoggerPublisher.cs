using System.Globalization;

namespace Etas.Base.Shared;

public interface INLSLoggerPublisher : ILoggerPublisher
{
	CultureInfo TargetCulture { get; set; }
}
