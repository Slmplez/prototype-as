/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.framework.internal.core.Constants;
import org.eclipse.osgi.framework.internal.core.FilterImpl;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.framework.internal.core.Tokenizer;
import org.eclipse.osgi.internal.resolver.BundleDescriptionImpl;
import org.eclipse.osgi.internal.resolver.BundleSpecificationImpl;
import org.eclipse.osgi.internal.resolver.ExportPackageDescriptionImpl;
import org.eclipse.osgi.internal.resolver.GenericDescriptionImpl;
import org.eclipse.osgi.internal.resolver.GenericSpecificationImpl;
import org.eclipse.osgi.internal.resolver.HostSpecificationImpl;
import org.eclipse.osgi.internal.resolver.ImportPackageSpecificationImpl;
import org.eclipse.osgi.internal.resolver.NativeCodeDescriptionImpl;
import org.eclipse.osgi.internal.resolver.NativeCodeSpecificationImpl;
import org.eclipse.osgi.internal.resolver.StateImpl;
import org.eclipse.osgi.internal.resolver.StateMsg;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.GenericDescription;
import org.eclipse.osgi.service.resolver.GenericSpecification;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.NativeCodeDescription;
import org.eclipse.osgi.service.resolver.NativeCodeSpecification;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleException;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class StateBuilder {
    static final String[] DEFINED_PACKAGE_MATCHING_ATTRS = new String[]{"bundle-symbolic-name", "bundle-version", "specification-version", "version"};
    static final String[] DEFINED_BSN_MATCHING_ATTRS = new String[]{"bundle-version", "optional", "reprovide"};
    static final String[] DEFINED_OSGI_VALIDATE_HEADERS = new String[]{"Import-Package", "DynamicImport-Package", "Export-Package", "Fragment-Host", "Bundle-SymbolicName", "Require-Bundle"};
    static final String GENERIC_REQUIRE = "Eclipse-GenericRequire";
    static final String GENERIC_CAPABILITY = "Eclipse-GenericCapability";
    private static final String ATTR_TYPE_STRING = "string";
    private static final String ATTR_TYPE_VERSION = "version";
    private static final String ATTR_TYPE_URI = "uri";
    private static final String ATTR_TYPE_LONG = "long";
    private static final String ATTR_TYPE_DOUBLE = "double";
    private static final String ATTR_TYPE_SET = "set";
    private static final String ATTR_TYPE_LIST = "List";
    private static final String OPTIONAL_ATTR = "optional";
    private static final String MULTIPLE_ATTR = "multiple";
    private static final String TRUE = "true";
    static /* synthetic */ Class class$0;

    static BundleDescription createBundleDescription(StateImpl state, Dictionary<String, String> manifest, String location) throws BundleException {
        int manifestVersion;
        BundleDescriptionImpl result;
        block11: {
            ManifestElement[] symbolicNameElements;
            String symbolicNameHeader;
            result = new BundleDescriptionImpl();
            String manifestVersionHeader = manifest.get("Bundle-ManifestVersion");
            boolean jreBundle = TRUE.equals(manifest.get("Eclipse-JREBundle"));
            manifestVersion = 1;
            if (manifestVersionHeader != null) {
                manifestVersion = Integer.parseInt(manifestVersionHeader);
            }
            if (manifestVersion >= 2) {
                StateBuilder.validateHeaders(manifest, jreBundle);
            }
            if ((symbolicNameHeader = manifest.get("Bundle-SymbolicName")) != null && (symbolicNameElements = ManifestElement.parseHeader("Bundle-SymbolicName", symbolicNameHeader)).length > 0) {
                ManifestElement bsnElement = symbolicNameElements[0];
                result.setSymbolicName(bsnElement.getValue());
                String singleton = bsnElement.getDirective("singleton");
                if (singleton == null) {
                    singleton = bsnElement.getAttribute("singleton");
                }
                result.setStateBit(2, TRUE.equals(singleton));
                String fragmentAttachment = bsnElement.getDirective("fragment-attachment");
                if (fragmentAttachment != null) {
                    if (fragmentAttachment.equals("resolve-time")) {
                        result.setStateBit(64, true);
                        result.setStateBit(128, false);
                    } else if (fragmentAttachment.equals("never")) {
                        result.setStateBit(64, false);
                        result.setStateBit(128, false);
                    }
                }
                result.setDirective("mandatory", ManifestElement.getArrayFromList(bsnElement.getDirective("mandatory")));
                result.setAttributes(StateBuilder.getAttributes(bsnElement, DEFINED_BSN_MATCHING_ATTRS));
            }
            String version = manifest.get("Bundle-Version");
            try {
                result.setVersion(version != null ? Version.parseVersion(version) : Version.emptyVersion);
            }
            catch (IllegalArgumentException ex) {
                if (manifestVersion < 2) break block11;
                String message = NLS.bind(Msg.MANIFEST_INVALID_HEADER_EXCEPTION, "Bundle-Version", version);
                throw new BundleException(new StringBuffer(String.valueOf(message)).append(" : ").append(ex.getMessage()).toString(), 3, ex);
            }
        }
        result.setLocation(location);
        result.setPlatformFilter(manifest.get("Eclipse-PlatformFilter"));
        result.setExecutionEnvironments(ManifestElement.getArrayFromList(manifest.get("Bundle-RequiredExecutionEnvironment")));
        ManifestElement[] host = ManifestElement.parseHeader("Fragment-Host", manifest.get("Fragment-Host"));
        if (host != null) {
            result.setHost(StateBuilder.createHostSpecification(host[0], state));
        }
        ManifestElement[] exports = ManifestElement.parseHeader("Export-Package", manifest.get("Export-Package"));
        ManifestElement[] provides = ManifestElement.parseHeader("Provide-Package", manifest.get("Provide-Package"));
        boolean strict = state != null && state.inStrictMode();
        ArrayList<String> providedExports = new ArrayList<String>(provides == null ? 0 : provides.length);
        result.setExportPackages(StateBuilder.createExportPackages(exports, provides, providedExports, manifestVersion, strict));
        ManifestElement[] imports = ManifestElement.parseHeader("Import-Package", manifest.get("Import-Package"));
        ManifestElement[] dynamicImports = ManifestElement.parseHeader("DynamicImport-Package", manifest.get("DynamicImport-Package"));
        result.setImportPackages(StateBuilder.createImportPackages(result.getExportPackages(), providedExports, imports, dynamicImports, manifestVersion));
        ManifestElement[] requires = ManifestElement.parseHeader("Require-Bundle", manifest.get("Require-Bundle"));
        result.setRequiredBundles(StateBuilder.createRequiredBundles(requires));
        String[][] genericAliases = StateBuilder.getGenericAliases(state);
        ManifestElement[] genericRequires = StateBuilder.getGenericRequires(manifest, genericAliases);
        ManifestElement[] osgiRequires = ManifestElement.parseHeader("Require-Capability", manifest.get("Require-Capability"));
        result.setGenericRequires(StateBuilder.createGenericRequires(genericRequires, osgiRequires));
        ManifestElement[] genericCapabilities = StateBuilder.getGenericCapabilities(manifest, genericAliases);
        ManifestElement[] osgiCapabilities = ManifestElement.parseHeader("Provide-Capability", manifest.get("Provide-Capability"));
        result.setGenericCapabilities(StateBuilder.createGenericCapabilities(genericCapabilities, osgiCapabilities));
        ManifestElement[] nativeCode = ManifestElement.parseHeader("Bundle-NativeCode", manifest.get("Bundle-NativeCode"));
        result.setNativeCodeSpecification(StateBuilder.createNativeCode(nativeCode));
        return result;
    }

    private static ManifestElement[] getGenericRequires(Dictionary<String, String> manifest, String[][] genericAliases) throws BundleException {
        int i;
        ManifestElement[] genericRequires = ManifestElement.parseHeader(GENERIC_REQUIRE, manifest.get(GENERIC_REQUIRE));
        ArrayList<ManifestElement> aliasList = null;
        if (genericAliases.length > 0) {
            aliasList = new ArrayList<ManifestElement>(genericRequires == null ? 0 : genericRequires.length);
            i = 0;
            while (i < genericAliases.length) {
                ManifestElement[] aliasReqs = ManifestElement.parseHeader(genericAliases[i][1], manifest.get(genericAliases[i][1]));
                if (aliasReqs != null) {
                    int j = 0;
                    while (j < aliasReqs.length) {
                        StringBuffer strBuf = new StringBuffer();
                        strBuf.append(aliasReqs[j].getValue()).append(':').append(genericAliases[i][2]);
                        String filter = aliasReqs[j].getAttribute("selection-filter");
                        if (filter != null) {
                            strBuf.append("; ").append("selection-filter").append(filter).append("=\"").append(filter).append("\"");
                        }
                        ManifestElement[] withType = ManifestElement.parseHeader(genericAliases[i][1], strBuf.toString());
                        aliasList.add(withType[0]);
                        ++j;
                    }
                }
                ++i;
            }
        }
        if (aliasList == null || aliasList.size() == 0) {
            return genericRequires;
        }
        if (genericRequires != null) {
            i = 0;
            while (i < genericRequires.length) {
                aliasList.add(genericRequires[i]);
                ++i;
            }
        }
        return aliasList.toArray(new ManifestElement[aliasList.size()]);
    }

    private static ManifestElement[] getGenericCapabilities(Dictionary<String, String> manifest, String[][] genericAliases) throws BundleException {
        int i;
        ManifestElement[] genericCapabilities = ManifestElement.parseHeader(GENERIC_CAPABILITY, manifest.get(GENERIC_CAPABILITY));
        ArrayList<ManifestElement> aliasList = null;
        if (genericAliases.length > 0) {
            aliasList = new ArrayList<ManifestElement>(genericCapabilities == null ? 0 : genericCapabilities.length);
            i = 0;
            while (i < genericAliases.length) {
                ManifestElement[] aliasCapabilities = ManifestElement.parseHeader(genericAliases[i][0], manifest.get(genericAliases[i][0]));
                if (aliasCapabilities != null) {
                    int j = 0;
                    while (j < aliasCapabilities.length) {
                        StringBuffer strBuf = new StringBuffer();
                        strBuf.append(aliasCapabilities[j].getValue()).append(':').append(genericAliases[i][2]);
                        Enumeration<String> keys = aliasCapabilities[j].getKeys();
                        while (keys != null && keys.hasMoreElements()) {
                            String key = keys.nextElement();
                            strBuf.append("; ").append(key).append("=\"").append(aliasCapabilities[j].getAttribute(key)).append("\"");
                        }
                        ManifestElement[] withTypes = ManifestElement.parseHeader(genericAliases[i][0], strBuf.toString());
                        aliasList.add(withTypes[0]);
                        ++j;
                    }
                }
                ++i;
            }
        }
        if (aliasList == null || aliasList.size() == 0) {
            return genericCapabilities;
        }
        if (genericCapabilities != null) {
            i = 0;
            while (i < genericCapabilities.length) {
                aliasList.add(genericCapabilities[i]);
                ++i;
            }
        }
        return aliasList.toArray(new ManifestElement[aliasList.size()]);
    }

    private static String[][] getGenericAliases(StateImpl state) {
        String genericAliasesProp = StateBuilder.getPlatformProperty(state, "osgi.genericAliases");
        if (genericAliasesProp == null) {
            return new String[0][0];
        }
        String[] aliases = ManifestElement.getArrayFromList(genericAliasesProp, ",");
        String[][] result = new String[aliases.length][];
        int i = 0;
        while (i < aliases.length) {
            result[i] = ManifestElement.getArrayFromList(aliases[i], ":");
            ++i;
        }
        return result;
    }

    private static String getPlatformProperty(StateImpl state, String key) {
        Dictionary[] platformProps = state == null ? null : state.getPlatformProperties();
        return platformProps == null || platformProps.length == 0 ? null : (String)platformProps[0].get(key);
    }

    private static void validateHeaders(Dictionary<String, String> manifest, boolean jreBundle) throws BundleException {
        int i = 0;
        while (i < DEFINED_OSGI_VALIDATE_HEADERS.length) {
            String header = manifest.get(DEFINED_OSGI_VALIDATE_HEADERS[i]);
            if (header != null) {
                ManifestElement[] elements = ManifestElement.parseHeader(DEFINED_OSGI_VALIDATE_HEADERS[i], header);
                StateBuilder.checkForDuplicateDirectivesAttributes(DEFINED_OSGI_VALIDATE_HEADERS[i], elements);
                if (DEFINED_OSGI_VALIDATE_HEADERS[i] == "Import-Package") {
                    StateBuilder.checkImportExportSyntax(DEFINED_OSGI_VALIDATE_HEADERS[i], elements, false, false, jreBundle);
                }
                if (DEFINED_OSGI_VALIDATE_HEADERS[i] == "DynamicImport-Package") {
                    StateBuilder.checkImportExportSyntax(DEFINED_OSGI_VALIDATE_HEADERS[i], elements, false, true, jreBundle);
                }
                if (DEFINED_OSGI_VALIDATE_HEADERS[i] == "Export-Package") {
                    StateBuilder.checkImportExportSyntax(DEFINED_OSGI_VALIDATE_HEADERS[i], elements, true, false, jreBundle);
                }
                if (DEFINED_OSGI_VALIDATE_HEADERS[i] == "Fragment-Host") {
                    StateBuilder.checkExtensionBundle(DEFINED_OSGI_VALIDATE_HEADERS[i], elements);
                }
            } else if (DEFINED_OSGI_VALIDATE_HEADERS[i] == "Bundle-SymbolicName") {
                throw new BundleException(NLS.bind(StateMsg.HEADER_REQUIRED, "Bundle-SymbolicName"), 3);
            }
            ++i;
        }
    }

    private static BundleSpecification[] createRequiredBundles(ManifestElement[] specs) {
        if (specs == null) {
            return null;
        }
        BundleSpecification[] result = new BundleSpecification[specs.length];
        int i = 0;
        while (i < specs.length) {
            result[i] = StateBuilder.createRequiredBundle(specs[i]);
            ++i;
        }
        return result;
    }

    private static BundleSpecification createRequiredBundle(ManifestElement spec) {
        BundleSpecificationImpl result = new BundleSpecificationImpl();
        result.setName(spec.getValue());
        result.setVersionRange(StateBuilder.getVersionRange(spec.getAttribute("bundle-version")));
        result.setExported("reexport".equals(spec.getDirective("visibility")) || TRUE.equals(spec.getAttribute("reprovide")));
        result.setOptional(OPTIONAL_ATTR.equals(spec.getDirective("resolution")) || TRUE.equals(spec.getAttribute(OPTIONAL_ATTR)));
        result.setAttributes(StateBuilder.getAttributes(spec, DEFINED_BSN_MATCHING_ATTRS));
        return result;
    }

    private static ImportPackageSpecification[] createImportPackages(ExportPackageDescription[] exported, List<String> providedExports, ManifestElement[] imported, ManifestElement[] dynamicImported, int manifestVersion) {
        int i;
        ArrayList<ImportPackageSpecification> allImports = null;
        if (manifestVersion < 2) {
            if (exported.length == 0 && imported == null && dynamicImported == null) {
                return null;
            }
            allImports = new ArrayList(exported.length + (imported == null ? 0 : imported.length));
            i = 0;
            while (i < exported.length) {
                if (!providedExports.contains(exported[i].getName())) {
                    ImportPackageSpecificationImpl result = new ImportPackageSpecificationImpl();
                    result.setName(exported[i].getName());
                    result.setVersionRange(StateBuilder.getVersionRange(exported[i].getVersion().toString()));
                    result.setDirective("resolution", "static");
                    allImports.add(result);
                }
                ++i;
            }
        } else {
            allImports = new ArrayList<ImportPackageSpecification>(imported == null ? 0 : imported.length);
        }
        if (dynamicImported != null) {
            i = 0;
            while (i < dynamicImported.length) {
                StateBuilder.addImportPackages(dynamicImported[i], allImports, manifestVersion, true);
                ++i;
            }
        }
        if (imported != null) {
            i = 0;
            while (i < imported.length) {
                StateBuilder.addImportPackages(imported[i], allImports, manifestVersion, false);
                ++i;
            }
        }
        return allImports.toArray(new ImportPackageSpecification[allImports.size()]);
    }

    public static void addImportPackages(ManifestElement importPackage, List<ImportPackageSpecification> allImports, int manifestVersion, boolean dynamic) {
        String[] importNames = importPackage.getValueComponents();
        int i = 0;
        while (i < importNames.length) {
            if (manifestVersion < 2) {
                Iterator<ImportPackageSpecification> iter = allImports.iterator();
                while (iter.hasNext()) {
                    if (!importNames[i].equals(iter.next().getName())) continue;
                    iter.remove();
                }
            }
            ImportPackageSpecificationImpl result = new ImportPackageSpecificationImpl();
            result.setName(importNames[i]);
            String versionString = importPackage.getAttribute(ATTR_TYPE_VERSION);
            if (versionString == null) {
                versionString = importPackage.getAttribute("specification-version");
            }
            result.setVersionRange(StateBuilder.getVersionRange(versionString));
            result.setBundleSymbolicName(importPackage.getAttribute("bundle-symbolic-name"));
            result.setBundleVersionRange(StateBuilder.getVersionRange(importPackage.getAttribute("bundle-version")));
            if (manifestVersion >= 2) {
                result.setAttributes(StateBuilder.getAttributes(importPackage, DEFINED_PACKAGE_MATCHING_ATTRS));
            }
            if (dynamic) {
                result.setDirective("resolution", "dynamic");
            } else {
                result.setDirective("resolution", StateBuilder.getResolution(importPackage.getDirective("resolution")));
            }
            allImports.add(result);
            ++i;
        }
    }

    private static String getResolution(String resolution) {
        String result = "static";
        if (OPTIONAL_ATTR.equals(resolution)) {
            result = OPTIONAL_ATTR;
        }
        return result;
    }

    static ExportPackageDescription[] createExportPackages(ManifestElement[] exported, ManifestElement[] provides, List<String> providedExports, int manifestVersion, boolean strict) {
        int numExports = (exported == null ? 0 : exported.length) + (provides == null ? 0 : provides.length);
        if (numExports == 0) {
            return null;
        }
        ArrayList<ExportPackageDescription> allExports = new ArrayList<ExportPackageDescription>(numExports);
        if (exported != null) {
            int i = 0;
            while (i < exported.length) {
                StateBuilder.addExportPackages(exported[i], allExports, manifestVersion, strict);
                ++i;
            }
        }
        if (provides != null) {
            StateBuilder.addProvidePackages(provides, allExports, providedExports);
        }
        return allExports.toArray(new ExportPackageDescription[allExports.size()]);
    }

    private static void addExportPackages(ManifestElement exportPackage, List<ExportPackageDescription> allExports, int manifestVersion, boolean strict) {
        String[] exportNames = exportPackage.getValueComponents();
        int i = 0;
        while (i < exportNames.length) {
            if (!strict || !TRUE.equals(exportPackage.getDirective("x-internal"))) {
                ExportPackageDescriptionImpl result = new ExportPackageDescriptionImpl();
                result.setName(exportNames[i]);
                String versionString = exportPackage.getAttribute(ATTR_TYPE_VERSION);
                if (versionString == null) {
                    versionString = exportPackage.getAttribute("specification-version");
                }
                if (versionString != null) {
                    result.setVersion(Version.parseVersion(versionString));
                }
                result.setDirective("uses", ManifestElement.getArrayFromList(exportPackage.getDirective("uses")));
                result.setDirective("include", exportPackage.getDirective("include"));
                result.setDirective("exclude", exportPackage.getDirective("exclude"));
                result.setDirective("x-friends", ManifestElement.getArrayFromList(exportPackage.getDirective("x-friends")));
                result.setDirective("x-internal", Boolean.valueOf(exportPackage.getDirective("x-internal")));
                result.setDirective("mandatory", ManifestElement.getArrayFromList(exportPackage.getDirective("mandatory")));
                result.setAttributes(StateBuilder.getAttributes(exportPackage, DEFINED_PACKAGE_MATCHING_ATTRS));
                allExports.add(result);
            }
            ++i;
        }
    }

    private static void addProvidePackages(ManifestElement[] provides, List<ExportPackageDescription> allExports, List<String> providedExports) {
        ExportPackageDescription[] currentExports = allExports.toArray(new ExportPackageDescription[allExports.size()]);
        int i = 0;
        while (i < provides.length) {
            boolean duplicate = false;
            int j = 0;
            while (j < currentExports.length) {
                if (provides[i].getValue().equals(currentExports[j].getName())) {
                    duplicate = true;
                    break;
                }
                ++j;
            }
            if (!duplicate) {
                ExportPackageDescriptionImpl result = new ExportPackageDescriptionImpl();
                result.setName(provides[i].getValue());
                allExports.add(result);
            }
            providedExports.add(provides[i].getValue());
            ++i;
        }
    }

    /*
     * Unable to fully structure code
     */
    private static Map<String, Object> getAttributes(ManifestElement element, String[] definedAttrs) {
        keys = element.getKeys();
        arbitraryAttrs = null;
        if (keys != null) ** GOTO lbl25
        return null;
lbl-1000:
        // 1 sources

        {
            definedAttr = false;
            key = keys.nextElement();
            i = 0;
            while (i < definedAttrs.length) {
                if (definedAttrs[i].equals(key)) {
                    definedAttr = true;
                    break;
                }
                ++i;
            }
            value = element.getAttribute(key);
            colonIndex = key.indexOf(58);
            type = "string";
            if (colonIndex > 0) {
                type = key.substring(colonIndex + 1).trim();
                key = key.substring(0, colonIndex).trim();
            }
            if (definedAttr) continue;
            if (arbitraryAttrs == null) {
                arbitraryAttrs = new HashMap<String, Object>();
            }
            arbitraryAttrs.put(key, StateBuilder.convertValue(type, value));
lbl25:
            // 3 sources

            ** while (keys.hasMoreElements())
        }
lbl26:
        // 1 sources

        return arbitraryAttrs;
    }

    private static Object convertValue(String type, String value) {
        if (ATTR_TYPE_STRING.equalsIgnoreCase(type)) {
            return value;
        }
        String trimmed = value.trim();
        if (ATTR_TYPE_DOUBLE.equalsIgnoreCase(type)) {
            return new Double(trimmed);
        }
        if (ATTR_TYPE_LONG.equalsIgnoreCase(type)) {
            return new Long(trimmed);
        }
        if (ATTR_TYPE_URI.equalsIgnoreCase(type)) {
            try {
                Class<?> uriClazz = Class.forName("java.net.URI");
                Class[] classArray = new Class[1];
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("java.lang.String");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray[0] = clazz;
                Constructor<?> constructor = uriClazz.getConstructor(classArray);
                return constructor.newInstance(trimmed);
            }
            catch (ClassNotFoundException classNotFoundException) {
                return value;
            }
            catch (RuntimeException e) {
                throw e;
            }
            catch (Exception e) {
                throw new RuntimeException(e.getMessage(), e);
            }
        }
        if (ATTR_TYPE_VERSION.equalsIgnoreCase(type)) {
            return new Version(trimmed);
        }
        if (ATTR_TYPE_SET.equalsIgnoreCase(type)) {
            return ManifestElement.getArrayFromList(trimmed, ",");
        }
        Tokenizer listTokenizer = new Tokenizer(type);
        String listType = listTokenizer.getToken("<");
        if (!ATTR_TYPE_LIST.equalsIgnoreCase(listType)) {
            throw new RuntimeException(new StringBuffer("Unsupported type: ").append(type).toString());
        }
        char c = listTokenizer.getChar();
        String componentType = ATTR_TYPE_STRING;
        if (c == '<') {
            componentType = listTokenizer.getToken(">");
            if (listTokenizer.getChar() != '>') {
                throw new RuntimeException(new StringBuffer("Invalid type, missing ending '>' : ").append(type).toString());
            }
        }
        List<String> tokens = new Tokenizer(value).getEscapedTokens(",");
        ArrayList<Object> components = new ArrayList<Object>();
        for (String component : tokens) {
            components.add(StateBuilder.convertValue(componentType, component));
        }
        return components;
    }

    private static HostSpecification createHostSpecification(ManifestElement spec, StateImpl state) {
        if (spec == null) {
            return null;
        }
        HostSpecificationImpl result = new HostSpecificationImpl();
        result.setName(spec.getValue());
        result.setVersionRange(StateBuilder.getVersionRange(spec.getAttribute("bundle-version")));
        String multiple = spec.getDirective("multiple-hosts");
        if (multiple == null) {
            multiple = StateBuilder.getPlatformProperty(state, "osgi.support.multipleHosts");
        }
        result.setIsMultiHost(TRUE.equals(multiple));
        result.setAttributes(StateBuilder.getAttributes(spec, DEFINED_BSN_MATCHING_ATTRS));
        return result;
    }

    private static GenericSpecification[] createGenericRequires(ManifestElement[] equinoxRequires, ManifestElement[] osgiRequires) throws BundleException {
        List<GenericSpecification> result = StateBuilder.createEquinoxRequires(equinoxRequires);
        return (result = StateBuilder.createOSGiRequires(osgiRequires, result)) == null ? null : result.toArray(new GenericSpecification[result.size()]);
    }

    private static List<GenericSpecification> createOSGiRequires(ManifestElement[] osgiRequires, List<GenericSpecification> result) throws BundleException {
        if (osgiRequires == null) {
            return result;
        }
        if (result == null) {
            result = new ArrayList<GenericSpecification>();
        }
        ManifestElement[] manifestElementArray = osgiRequires;
        int n = osgiRequires.length;
        int n2 = 0;
        while (n2 < n) {
            String[] namespaces;
            ManifestElement element = manifestElementArray[n2];
            String[] stringArray = namespaces = element.getValueComponents();
            int n3 = namespaces.length;
            int n4 = 0;
            while (n4 < n3) {
                String resolution;
                String namespace = stringArray[n4];
                String effective = element.getDirective("effective");
                if (effective != null && !"resolve".equals(effective)) break;
                GenericSpecificationImpl spec = new GenericSpecificationImpl();
                spec.setType(namespace);
                String filterSpec = element.getDirective("filter");
                if (filterSpec != null) {
                    try {
                        FilterImpl filter = FilterImpl.newInstance(filterSpec);
                        spec.setMatchingFilter(filter);
                        String name = filter.getPrimaryKeyValue(namespace);
                        if (name != null) {
                            spec.setName(name);
                        }
                    }
                    catch (InvalidSyntaxException e) {
                        String message = NLS.bind(Msg.MANIFEST_INVALID_HEADER_EXCEPTION, "Require-Capability", element.toString());
                        throw new BundleException(new StringBuffer(String.valueOf(message)).append(" : filter").toString(), 3, e);
                    }
                }
                if (OPTIONAL_ATTR.equals(resolution = element.getDirective("resolution"))) {
                    spec.setResolution(1);
                }
                result.add(spec);
                ++n4;
            }
            ++n2;
        }
        return result;
    }

    private static List<GenericSpecification> createEquinoxRequires(ManifestElement[] equinoxRequires) throws BundleException {
        if (equinoxRequires == null) {
            return null;
        }
        ArrayList<GenericSpecification> results = new ArrayList<GenericSpecification>(equinoxRequires.length);
        int i = 0;
        while (i < equinoxRequires.length) {
            String[] genericNames = equinoxRequires[i].getValueComponents();
            int j = 0;
            while (j < genericNames.length) {
                GenericSpecificationImpl spec = new GenericSpecificationImpl();
                int colonIdx = genericNames[j].indexOf(58);
                if (colonIdx > 0) {
                    spec.setName(genericNames[j].substring(0, colonIdx));
                    spec.setType(genericNames[j].substring(colonIdx + 1));
                } else {
                    spec.setName(genericNames[j]);
                }
                try {
                    spec.setMatchingFilter(equinoxRequires[i].getAttribute("selection-filter"), true);
                }
                catch (InvalidSyntaxException e) {
                    String message = NLS.bind(Msg.MANIFEST_INVALID_HEADER_EXCEPTION, GENERIC_REQUIRE, equinoxRequires[i].toString());
                    throw new BundleException(new StringBuffer(String.valueOf(message)).append(" : ").append("selection-filter").toString(), 3, e);
                }
                String optional = equinoxRequires[i].getAttribute(OPTIONAL_ATTR);
                String multiple = equinoxRequires[i].getAttribute(MULTIPLE_ATTR);
                int resolution = 0;
                if (TRUE.equals(optional)) {
                    resolution |= 1;
                }
                if (TRUE.equals(multiple)) {
                    resolution |= 2;
                }
                spec.setResolution(resolution);
                results.add(spec);
                ++j;
            }
            ++i;
        }
        return results;
    }

    private static GenericDescription[] createGenericCapabilities(ManifestElement[] equinoxCapabilities, ManifestElement[] osgiCapabilities) {
        List<GenericDescription> result = StateBuilder.createEquinoxCapabilities(equinoxCapabilities);
        return (result = StateBuilder.createOSGiCapabilities(osgiCapabilities, result)) == null ? null : result.toArray(new GenericDescription[result.size()]);
    }

    static List<GenericDescription> createOSGiCapabilities(ManifestElement[] osgiCapabilities, List<GenericDescription> result) {
        if (osgiCapabilities == null) {
            return result;
        }
        if (result == null) {
            result = new ArrayList<GenericDescription>(osgiCapabilities.length);
        }
        ManifestElement[] manifestElementArray = osgiCapabilities;
        int n = osgiCapabilities.length;
        int n2 = 0;
        while (n2 < n) {
            String[] namespaces;
            ManifestElement element = manifestElementArray[n2];
            String[] stringArray = namespaces = element.getValueComponents();
            int n3 = namespaces.length;
            int n4 = 0;
            while (n4 < n3) {
                String namespace = stringArray[n4];
                String effective = element.getDirective("effective");
                if (effective != null && !"resolve".equals(effective)) break;
                GenericDescriptionImpl desc = new GenericDescriptionImpl();
                desc.setType(namespace);
                Map<String, Object> mapAttrs = StateBuilder.getAttributes(element, new String[0]);
                Hashtable<String, Object> attrs = mapAttrs == null ? new Hashtable<String, Object>() : new Hashtable<String, Object>(mapAttrs);
                desc.setAttributes(attrs);
                HashMap<String, String> directives = new HashMap<String, String>();
                Enumeration<String> keys = element.getDirectiveKeys();
                if (keys != null) {
                    keys = element.getDirectiveKeys();
                    while (keys.hasMoreElements()) {
                        String key = keys.nextElement();
                        directives.put(key, element.getDirective(key));
                    }
                }
                desc.setDirectives(directives);
                result.add(desc);
                ++n4;
            }
            ++n2;
        }
        return result;
    }

    private static List<GenericDescription> createEquinoxCapabilities(ManifestElement[] equinoxCapabilities) {
        if (equinoxCapabilities == null) {
            return null;
        }
        ArrayList<GenericDescription> results = new ArrayList<GenericDescription>(equinoxCapabilities.length);
        int i = 0;
        while (i < equinoxCapabilities.length) {
            String[] genericNames = equinoxCapabilities[i].getValueComponents();
            int j = 0;
            while (j < genericNames.length) {
                Map<String, Object> mapAttrs;
                GenericDescriptionImpl desc = new GenericDescriptionImpl();
                String name = genericNames[j];
                int colonIdx = genericNames[j].indexOf(58);
                if (colonIdx > 0) {
                    name = genericNames[j].substring(0, colonIdx);
                    desc.setType(genericNames[j].substring(colonIdx + 1));
                }
                Hashtable<String, Object> attrs = (mapAttrs = StateBuilder.getAttributes(equinoxCapabilities[i], new String[]{ATTR_TYPE_VERSION})) == null ? new Hashtable<String, Object>() : new Hashtable<String, Object>(mapAttrs);
                ((Dictionary)attrs).put(desc.getType(), name);
                String versionString = equinoxCapabilities[i].getAttribute(ATTR_TYPE_VERSION);
                if (versionString != null) {
                    ((Dictionary)attrs).put(ATTR_TYPE_VERSION, Version.parseVersion(versionString));
                }
                desc.setAttributes(attrs);
                results.add(desc);
                ++j;
            }
            ++i;
        }
        return results;
    }

    private static NativeCodeSpecification createNativeCode(ManifestElement[] nativeCode) throws BundleException {
        if (nativeCode == null) {
            return null;
        }
        NativeCodeSpecificationImpl result = new NativeCodeSpecificationImpl();
        result.setName("Bundle-NativeCode");
        int length = nativeCode.length;
        if (length > 0 && nativeCode[length - 1].getValue().equals("*")) {
            result.setOptional(true);
            --length;
        }
        NativeCodeDescription[] suppliers = new NativeCodeDescriptionImpl[length];
        int i = 0;
        while (i < length) {
            suppliers[i] = StateBuilder.createNativeCodeDescription(nativeCode[i]);
            ++i;
        }
        result.setPossibleSuppliers(suppliers);
        return result;
    }

    private static NativeCodeDescriptionImpl createNativeCodeDescription(ManifestElement manifestElement) throws BundleException {
        NativeCodeDescriptionImpl result = new NativeCodeDescriptionImpl();
        result.setName("Bundle-NativeCode");
        result.setNativePaths(manifestElement.getValueComponents());
        result.setOSNames(manifestElement.getAttributes("osname"));
        result.setProcessors(manifestElement.getAttributes("processor"));
        result.setOSVersions(StateBuilder.createVersionRanges(manifestElement.getAttributes("osversion")));
        result.setLanguages(manifestElement.getAttributes("language"));
        try {
            result.setFilter(manifestElement.getAttribute("selection-filter"));
        }
        catch (InvalidSyntaxException e) {
            String message = NLS.bind(Msg.MANIFEST_INVALID_HEADER_EXCEPTION, "Bundle-NativeCode", manifestElement.toString());
            throw new BundleException(new StringBuffer(String.valueOf(message)).append(" : ").append("selection-filter").toString(), 3, e);
        }
        return result;
    }

    private static VersionRange[] createVersionRanges(String[] ranges) {
        if (ranges == null) {
            return null;
        }
        VersionRange[] result = new VersionRange[ranges.length];
        int i = 0;
        while (i < result.length) {
            result[i] = new VersionRange(ranges[i]);
            ++i;
        }
        return result;
    }

    private static VersionRange getVersionRange(String versionRange) {
        if (versionRange == null) {
            return null;
        }
        return new VersionRange(versionRange);
    }

    public static void checkImportExportSyntax(String headerKey, ManifestElement[] elements, boolean export, boolean dynamic, boolean jreBundle) throws BundleException {
        if (elements == null) {
            return;
        }
        int length = elements.length;
        HashSet<String> packages = new HashSet<String>(length);
        int i = 0;
        while (i < length) {
            String specVersion;
            String message;
            String[] packageNames = elements[i].getValueComponents();
            int j = 0;
            while (j < packageNames.length) {
                if (!export && !dynamic && packages.contains(packageNames[j])) {
                    message = NLS.bind(Msg.MANIFEST_INVALID_HEADER_EXCEPTION, headerKey, elements[i].toString());
                    throw new BundleException(new StringBuffer(String.valueOf(message)).append(" : ").append(NLS.bind(StateMsg.HEADER_PACKAGE_DUPLICATES, packageNames[j])).toString(), 3);
                }
                if (!jreBundle && packageNames[j].startsWith("java.")) {
                    message = NLS.bind(Msg.MANIFEST_INVALID_HEADER_EXCEPTION, headerKey, elements[i].toString());
                    throw new BundleException(new StringBuffer(String.valueOf(message)).append(" : ").append(NLS.bind(StateMsg.HEADER_PACKAGE_JAVA, packageNames[j])).toString(), 3);
                }
                packages.add(packageNames[j]);
                ++j;
            }
            String version = elements[i].getAttribute(ATTR_TYPE_VERSION);
            if (version != null && (specVersion = elements[i].getAttribute("specification-version")) != null && !specVersion.equals(version)) {
                throw new BundleException(NLS.bind(StateMsg.HEADER_VERSION_ERROR, ATTR_TYPE_VERSION, "specification-version"), 3);
            }
            if (export) {
                if (elements[i].getAttribute("bundle-symbolic-name") != null) {
                    message = NLS.bind(Msg.MANIFEST_INVALID_HEADER_EXCEPTION, headerKey, elements[i].toString());
                    throw new BundleException(new StringBuffer(String.valueOf(message)).append(" : ").append(NLS.bind(StateMsg.HEADER_EXPORT_ATTR_ERROR, "bundle-symbolic-name", "Export-Package")).toString(), 3);
                }
                if (elements[i].getAttribute("bundle-version") != null) {
                    message = NLS.bind(Msg.MANIFEST_INVALID_HEADER_EXCEPTION, headerKey, elements[i].toString());
                    throw new BundleException(NLS.bind(new StringBuffer(String.valueOf(message)).append(" : ").append(StateMsg.HEADER_EXPORT_ATTR_ERROR).toString(), "bundle-version", "Export-Package"), 3);
                }
            }
            ++i;
        }
    }

    private static void checkForDuplicateDirectivesAttributes(String headerKey, ManifestElement[] elements) throws BundleException {
        int i = 0;
        while (i < elements.length) {
            Enumeration<String> attrKeys;
            Enumeration<String> directiveKeys = elements[i].getDirectiveKeys();
            if (directiveKeys != null) {
                while (directiveKeys.hasMoreElements()) {
                    String key = directiveKeys.nextElement();
                    String[] directives = elements[i].getDirectives(key);
                    if (directives.length <= 1) continue;
                    String message = NLS.bind(Msg.MANIFEST_INVALID_HEADER_EXCEPTION, headerKey, elements[i].toString());
                    throw new BundleException(NLS.bind(new StringBuffer(String.valueOf(message)).append(" : ").append(StateMsg.HEADER_DIRECTIVE_DUPLICATES).toString(), key), 3);
                }
            }
            if ((attrKeys = elements[i].getKeys()) != null) {
                while (attrKeys.hasMoreElements()) {
                    String key = attrKeys.nextElement();
                    String[] attrs = elements[i].getAttributes(key);
                    if (attrs.length <= 1) continue;
                    String message = NLS.bind(Msg.MANIFEST_INVALID_HEADER_EXCEPTION, headerKey, elements[i].toString());
                    throw new BundleException(new StringBuffer(String.valueOf(message)).append(" : ").append(NLS.bind(StateMsg.HEADER_ATTRIBUTE_DUPLICATES, key)).toString(), 3);
                }
            }
            ++i;
        }
    }

    private static void checkExtensionBundle(String headerKey, ManifestElement[] elements) throws BundleException {
        if (elements.length == 0 || elements[0].getDirective("extension") == null) {
            return;
        }
        String hostName = elements[0].getValue();
        if (!hostName.equals("system.bundle") && !hostName.equals(Constants.getInternalSymbolicName())) {
            String message = NLS.bind(Msg.MANIFEST_INVALID_HEADER_EXCEPTION, headerKey, elements[0].toString());
            throw new BundleException(new StringBuffer(String.valueOf(message)).append(" : ").append(NLS.bind(StateMsg.HEADER_EXTENSION_ERROR, hostName)).toString(), 3);
        }
    }
}

