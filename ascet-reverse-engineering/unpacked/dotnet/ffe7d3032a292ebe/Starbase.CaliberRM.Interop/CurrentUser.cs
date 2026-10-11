using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(CurrentUserClass))]
[Guid("1043003F-72AE-11D5-B316-0800309CC2CE")]
public interface CurrentUser : ICurrentUser
{
}
