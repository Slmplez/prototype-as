using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

// Binding identities remain stable while the requested formal pins are removed.
class AscetClassResourceClosure
{
    public static bool IsSandboxPath(string path)
    {
        return path != null && Regex.IsMatch(path, @"^\\?BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+$");
    }

    static Dictionary<string, object>[] Rows(object value)
    {
        return AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(value);
    }

    public static string Capture(object value, string definitionOid)
    {
        return Capture(value, definitionOid, true);
    }

    public static string CaptureReadOnly(object value, string definitionOid)
    {
        return Capture(value, definitionOid, false);
    }

    static string Capture(object value, string definitionOid, bool requireEditableReferences)
    {
        var discovery = (Dictionary<string, object>)value;
        if ((string)discovery["definition_oid"] != definitionOid)
            throw new Exception("Class resource definition identity changed");
        var references = new SortedDictionary<string, object>(StringComparer.Ordinal);
        var metadataClasses = new HashSet<string>(new[] { "SGLibrary", "SGClassImplConfig", "SGClassValueConfig",
            "SGImplConfiguration", "SGValueConfiguration" }, StringComparer.Ordinal);
        foreach (var row in Rows(discovery["excluded"])) {
            string oid = (string)row["oid"], reason = (string)row["reason"];
            string nativeClass = row.ContainsKey("native_class") ? (string)row["native_class"] : null;
            bool definition = reason == "definition_self" && oid == definitionOid && nativeClass == "SGClass";
            if (requireEditableReferences && !definition && (reason != "not_code_owner" || !metadataClasses.Contains(nativeClass)))
                throw new Exception("Unsupported Class reference; complete resource closure cannot be edited");
            if (String.IsNullOrEmpty(oid) || references.ContainsKey(oid)) throw new Exception("Duplicate Class metadata identity");
            references.Add(oid, new object[] { oid, nativeClass, reason });
        }
        var owners = new SortedDictionary<string, object>(StringComparer.Ordinal);
        var paths = new HashSet<string>(StringComparer.Ordinal);
        foreach (var caller in Rows(discovery["callers"])) {
            string oid = (string)caller["oid"], path = (string)caller["component"];
            string nativeClass = (string)caller["native_class"];
            if (String.IsNullOrEmpty(oid) || oid == definitionOid || owners.ContainsKey(oid) || !paths.Add(path))
                throw new Exception("Duplicate Class owner identity");
            if (!IsSandboxPath(path) || (nativeClass != "SGClass" && nativeClass != "SGModule"))
                throw new Exception("Class owner outside the isolated supported resource domain");
            var roots = AscetStructureRead.Json.ConvertToType<string[]>(caller["non_bde_diagrams"]);
            if (roots.Length != 0) throw new Exception("Unobserved non-BDE caller diagram");
            var scopeTree = AscetStructureRead.Json.ConvertToType<string[]>(caller["resource_scopes"]);
            var scopes = new SortedSet<string>(StringComparer.Ordinal);
            foreach (string scope in scopeTree) {
                if (!Regex.IsMatch(scope, @"^Main(/h[0-9]+)*$") || !scopes.Add(scope))
                    throw new Exception("Unsupported or duplicate Class caller scope");
            }
            if (!scopes.Contains("Main")) throw new Exception("Caller Main resource missing");
            foreach (string scope in scopes) {
                int slash = scope.LastIndexOf('/');
                if (slash >= 0 && !scopes.Contains(scope.Substring(0, slash)))
                    throw new Exception("Incomplete Class caller hierarchy resource tree");
            }
            var declarations = new SortedDictionary<string, object>(StringComparer.Ordinal);
            foreach (var declaration in Rows(caller["declarations"])) {
                string modelRef = (string)declaration["ref"];
                if (String.IsNullOrEmpty(modelRef) || declarations.ContainsKey(modelRef))
                    throw new Exception("Duplicate Class declaration identity");
                declarations.Add(modelRef, new object[] { modelRef, declaration["name"] });
            }
            if (declarations.Count == 0) throw new Exception("Caller declaration missing");
            var occurrences = new SortedDictionary<string, object>(StringComparer.Ordinal);
            var occurrenceScopes = new HashSet<string>(StringComparer.Ordinal);
            foreach (var scope in Rows(caller["scopes"])) {
                string diagram = (string)scope["diagram"];
                if (!scopes.Contains(diagram) || !occurrenceScopes.Add(diagram))
                    throw new Exception("Caller occurrence scope missing or duplicated");
                foreach (var occurrence in Rows(scope["occurrences"])) {
                    string modelRef = (string)occurrence["model_ref"];
                    int node = Convert.ToInt32(occurrence["node"]);
                    string key = diagram + "/n" + node;
                    if (node < 0 || !declarations.ContainsKey(modelRef) || occurrences.ContainsKey(key))
                        throw new Exception("Invalid or duplicate Class occurrence binding");
                    occurrences.Add(key, new object[] { diagram, node, modelRef, occurrence["name"] });
                }
            }
            if (occurrences.Count == 0)
                throw new Exception("Declaration-only Class owner is not supported by native closure pruning");
            owners.Add(oid, new object[] { oid, path, nativeClass, declarations, scopes, occurrences });
        }
        if (owners.Count == 0 || owners.Count > 7)
            throw new Exception("Class native recovery requires one to seven complete caller owners");
        return AscetStructureRead.Json.Serialize(new object[] { definitionOid, references, owners });
    }
}
