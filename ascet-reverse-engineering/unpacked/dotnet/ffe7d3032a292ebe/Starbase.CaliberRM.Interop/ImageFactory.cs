using System.Runtime.InteropServices;

namespace Starbase.CaliberRM.Interop;

[ComImport]
[CoClass(typeof(ImageFactoryClass))]
[Guid("104300A1-72AE-11D5-B316-0800309CC2CE")]
public interface ImageFactory : IImageFactory
{
}
