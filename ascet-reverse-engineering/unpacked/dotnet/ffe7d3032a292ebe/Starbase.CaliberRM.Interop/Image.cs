using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(ImageClass))]
[Guid("1043009F-72AE-11D5-B316-0800309CC2CE")]
public interface Image : IImage
{
}
