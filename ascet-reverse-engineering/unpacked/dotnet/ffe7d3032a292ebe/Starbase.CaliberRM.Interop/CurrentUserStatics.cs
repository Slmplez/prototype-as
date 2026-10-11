using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(CurrentUserStaticsClass))]
[Guid("10430041-72AE-11D5-B316-0800309CC2CE")]
public interface CurrentUserStatics : ICurrentUserStatics
{
}
