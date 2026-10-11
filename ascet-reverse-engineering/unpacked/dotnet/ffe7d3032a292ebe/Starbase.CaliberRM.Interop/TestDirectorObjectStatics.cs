using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(TestDirectorObjectStaticsClass))]
[Guid("1043018D-72AE-11D5-B316-0800309CC2CE")]
public interface TestDirectorObjectStatics : ITestDirectorObjectStatics
{
}
