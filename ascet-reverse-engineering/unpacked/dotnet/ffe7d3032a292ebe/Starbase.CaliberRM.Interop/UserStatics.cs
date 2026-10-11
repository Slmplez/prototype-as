using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(UserStaticsClass))]
[Guid("1043003D-72AE-11D5-B316-0800309CC2CE")]
public interface UserStatics : IUserStatics
{
}
