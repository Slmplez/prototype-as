using System.Runtime.InteropServices;

namespace Cfw.Logging;

[ComImport]
[Guid("9ACA988E-0513-4716-B187-1ADCA4E6A3BC")]
[CoClass(typeof(CLoggerClass))]
public interface CLogger : ILogger
{
}
