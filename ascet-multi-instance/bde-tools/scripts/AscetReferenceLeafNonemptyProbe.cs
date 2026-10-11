// Fixed bounded reciprocal lifecycle; no arbitrary native write entrypoint.
class AscetReferenceLeafNonemptyProbe
{
    static int Main(string[] args) { return AscetReferenceLeafNoopProbe.Run(args, true, true); }
}
