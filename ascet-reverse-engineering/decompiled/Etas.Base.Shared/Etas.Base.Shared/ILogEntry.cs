using System.Collections.Specialized;
using System.Globalization;

namespace Etas.Base.Shared;

public interface ILogEntry
{
	ILogContext Context { get; }

	LogCategory Category { get; }

	NameValueCollection AdditionalInfo { get; }

	string ToString(CultureInfo culture);
}
