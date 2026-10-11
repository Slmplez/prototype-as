using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(TestInSetStaticsClass))]
[Guid("104301A1-72AE-11D5-B316-0800309CC2CE")]
public interface TestInSetStatics : ITestInSetStatics
{
}
