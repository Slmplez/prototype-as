using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(TestStaticsClass))]
[Guid("1043019D-72AE-11D5-B316-0800309CC2CE")]
public interface TestStatics : ITestStatics
{
}
