using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(ExternalObjectStaticsClass))]
[Guid("1043016B-72AE-11D5-B316-0800309CC2CE")]
public interface ExternalObjectStatics : IExternalObjectStatics
{
}
