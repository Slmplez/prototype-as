using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(CaliberSecurityManagerClass))]
[Guid("104301BB-72AE-11D5-B316-0800309CC2CE")]
public interface CaliberSecurityManager : ICaliberSecurityManager
{
}
