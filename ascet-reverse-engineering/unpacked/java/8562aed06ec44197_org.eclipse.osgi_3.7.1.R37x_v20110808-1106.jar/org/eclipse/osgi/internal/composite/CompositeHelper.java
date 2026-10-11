/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.composite;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import java.util.jar.Manifest;
import org.eclipse.osgi.internal.baseadaptor.BaseStorageHook;
import org.eclipse.osgi.internal.composite.CompositeImpl;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.DisabledInfo;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.eclipse.osgi.service.resolver.State;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.Version;
import org.osgi.service.permissionadmin.PermissionAdmin;
import org.osgi.service.permissionadmin.PermissionInfo;

public class CompositeHelper {
    private static final PermissionInfo[] COMPOSITE_PERMISSIONS;
    private static final String COMPOSITE_POLICY = "org.eclipse.osgi.composite";
    private static String ELEMENT_SEPARATOR;
    private static final Object EQUALS_QUOTE;
    private static final String[] INVALID_COMPOSITE_HEADERS;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static {
        PermissionInfo[] permissionInfoArray = new PermissionInfo[2];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.framework.PackagePermission");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        permissionInfoArray[0] = new PermissionInfo(clazz.getName(), "*", "export");
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.osgi.framework.ServicePermission");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        permissionInfoArray[1] = new PermissionInfo(clazz2.getName(), "*", "register,get");
        COMPOSITE_PERMISSIONS = permissionInfoArray;
        ELEMENT_SEPARATOR = "; ";
        EQUALS_QUOTE = "=\"";
        INVALID_COMPOSITE_HEADERS = new String[]{"DynamicImport-Package", "Fragment-Host", "Require-Bundle", "Bundle-NativeCode", "Bundle-ClassPath", "Bundle-Activator", "Bundle-Localization", "Bundle-ActivationPolicy"};
    }

    private static Manifest getCompositeManifest(Map compositeManifest) {
        Manifest manifest = new Manifest();
        Attributes attributes = manifest.getMainAttributes();
        attributes.putValue("Manifest-Version", "1.0");
        String manifestVersion = (String)compositeManifest.remove("Bundle-ManifestVersion");
        attributes.putValue("Bundle-ManifestVersion", manifestVersion);
        compositeManifest.remove(BaseStorageHook.COMPOSITE_HEADER);
        attributes.putValue(BaseStorageHook.COMPOSITE_HEADER, BaseStorageHook.COMPOSITE_BUNDLE);
        Iterator entries = compositeManifest.entrySet().iterator();
        while (entries.hasNext()) {
            Map.Entry entry = entries.next();
            if (!(entry.getKey() instanceof String) || !(entry.getValue() instanceof String)) continue;
            attributes.putValue((String)entry.getKey(), (String)entry.getValue());
        }
        return manifest;
    }

    private static Manifest getSurrogateManifest(Dictionary compositeManifest, BundleDescription compositeDesc, ExportPackageDescription[] matchingExports) {
        Manifest manifest = new Manifest();
        Attributes attributes = manifest.getMainAttributes();
        attributes.putValue("Manifest-Version", "1.0");
        attributes.putValue("Bundle-ManifestVersion", "2");
        attributes.putValue(BaseStorageHook.COMPOSITE_HEADER, BaseStorageHook.SURROGATE_BUNDLE);
        if (compositeDesc != null && matchingExports != null) {
            CompositeHelper.addImports(attributes, compositeDesc, matchingExports);
            CompositeHelper.addExports(attributes, compositeDesc, matchingExports);
        }
        Enumeration keys = compositeManifest.keys();
        while (keys.hasMoreElements()) {
            Object header = keys.nextElement();
            if ("Bundle-ManifestVersion".equals(header) || BaseStorageHook.COMPOSITE_HEADER.equals(header) || "Import-Package".equals(header) || "Export-Package".equals(header) || !(header instanceof String) || !(compositeManifest.get(header) instanceof String)) continue;
            attributes.putValue((String)header, (String)compositeManifest.get(header));
        }
        return manifest;
    }

    static InputStream getCompositeInput(Map frameworkConfig, Map compositeManifest) throws IOException {
        ByteArrayOutputStream bytesOut = new ByteArrayOutputStream();
        Manifest manifest = CompositeHelper.getCompositeManifest(compositeManifest);
        JarOutputStream jarOut = new JarOutputStream((OutputStream)bytesOut, manifest);
        try {
            Properties fwProps = new Properties();
            if (frameworkConfig != null) {
                fwProps.putAll(frameworkConfig);
            }
            JarEntry entry = new JarEntry(CompositeImpl.COMPOSITE_CONFIGURATION);
            jarOut.putNextEntry(entry);
            fwProps.store(jarOut, null);
            jarOut.closeEntry();
            jarOut.flush();
        }
        catch (Throwable throwable) {
            try {
                jarOut.close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            jarOut.close();
        }
        catch (IOException iOException) {}
        return new ByteArrayInputStream(bytesOut.toByteArray());
    }

    static InputStream getSurrogateInput(Dictionary compositeManifest, BundleDescription compositeDesc, ExportPackageDescription[] matchingExports) throws IOException {
        ByteArrayOutputStream bytesOut = new ByteArrayOutputStream();
        Manifest manifest = CompositeHelper.getSurrogateManifest(compositeManifest, compositeDesc, matchingExports);
        JarOutputStream jarOut = new JarOutputStream((OutputStream)bytesOut, manifest);
        jarOut.flush();
        jarOut.close();
        return new ByteArrayInputStream(bytesOut.toByteArray());
    }

    private static void addImports(Attributes attrigutes, BundleDescription compositeDesc, ExportPackageDescription[] matchingExports) {
        ExportPackageDescription[] exports = compositeDesc.getExportPackages();
        List systemExports = CompositeHelper.getSystemExports(matchingExports);
        if (exports.length == 0 && systemExports.size() == 0) {
            return;
        }
        StringBuffer importStatement = new StringBuffer();
        ArrayList<String> importedNames = new ArrayList<String>(exports.length);
        int i = 0;
        while (i < exports.length) {
            if (i != 0) {
                importStatement.append(',');
            }
            importedNames.add(exports[i].getName());
            CompositeHelper.getImportFrom(exports[i], importStatement);
            ++i;
        }
        Iterator iSystemExports = systemExports.iterator();
        while (iSystemExports.hasNext()) {
            ExportPackageDescription systemExport = (ExportPackageDescription)iSystemExports.next();
            if (importedNames.contains(systemExport.getName())) continue;
            if (i != 0) {
                importStatement.append(',');
            }
            ++i;
            importStatement.append(systemExport.getName()).append(ELEMENT_SEPARATOR).append("bundle-symbolic-name").append('=').append("system.bundle");
        }
        attrigutes.putValue("Import-Package", importStatement.toString());
    }

    private static List getSystemExports(ExportPackageDescription[] matchingExports) {
        ArrayList<ExportPackageDescription> list = null;
        int i = 0;
        while (i < matchingExports.length) {
            if (matchingExports[i].getExporter().getBundleId() == 0L) {
                if (list == null) {
                    list = new ArrayList<ExportPackageDescription>();
                }
                list.add(matchingExports[i]);
            }
            ++i;
        }
        return list == null ? Collections.EMPTY_LIST : list;
    }

    private static void getImportFrom(ExportPackageDescription export, StringBuffer importStatement) {
        importStatement.append(export.getName()).append(ELEMENT_SEPARATOR);
        Version version = export.getVersion();
        importStatement.append("version").append(EQUALS_QUOTE).append('[').append(version).append(',').append(new Version(version.getMajor(), version.getMinor(), version.getMicro() + 1)).append(')').append('\"');
        CompositeHelper.addMap(importStatement, export.getAttributes(), "=");
    }

    private static void addExports(Attributes attributes, BundleDescription compositeDesc, ExportPackageDescription[] matchingExports) {
        if (matchingExports.length == 0) {
            return;
        }
        StringBuffer exportStatement = new StringBuffer();
        int i = 0;
        while (i < matchingExports.length) {
            if (matchingExports[i].getExporter() != compositeDesc) {
                if (exportStatement.length() > 0) {
                    exportStatement.append(',');
                }
                CompositeHelper.getExportFrom(matchingExports[i], exportStatement);
            }
            ++i;
        }
        if (exportStatement.length() > 0) {
            attributes.putValue("Export-Package", exportStatement.toString());
        }
    }

    private static void getExportFrom(ExportPackageDescription export, StringBuffer exportStatement) {
        exportStatement.append(export.getName()).append(ELEMENT_SEPARATOR);
        exportStatement.append("version").append(EQUALS_QUOTE).append(export.getVersion()).append('\"');
        CompositeHelper.addMap(exportStatement, export.getDirectives(), ":=");
        CompositeHelper.addMap(exportStatement, export.getAttributes(), "=");
    }

    private static void addMap(StringBuffer manifest, Map values, String assignment) {
        if (values == null) {
            return;
        }
        Iterator iEntries = values.entrySet().iterator();
        while (iEntries.hasNext()) {
            manifest.append(ELEMENT_SEPARATOR);
            Map.Entry entry = iEntries.next();
            manifest.append(entry.getKey()).append(assignment).append('\"');
            Object value = entry.getValue();
            if (value instanceof String[]) {
                String[] strings = (String[])value;
                int i = 0;
                while (i < strings.length) {
                    if (i != 0) {
                        manifest.append(',');
                    }
                    manifest.append(strings[i]);
                    ++i;
                }
            } else {
                manifest.append(value);
            }
            manifest.append('\"');
        }
    }

    static void setCompositePermissions(String bundleLocation, BundleContext systemContext) {
        ServiceReference<?> ref;
        PermissionAdmin permAdmin;
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.osgi.service.permissionadmin.PermissionAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((permAdmin = (PermissionAdmin)((ref = systemContext.getServiceReference(clazz.getName())) == null ? null : systemContext.getService(ref))) == null) {
            throw new RuntimeException("No Permission Admin service is available");
        }
        try {
            permAdmin.setPermissions(bundleLocation, COMPOSITE_PERMISSIONS);
        }
        finally {
            systemContext.ungetService(ref);
        }
    }

    static void setDisabled(boolean disable, Bundle bundle, BundleContext systemContext) {
        ServiceReference<?> ref;
        PlatformAdmin pa;
        Class<?> clazz = class$3;
        if (clazz == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.osgi.service.resolver.PlatformAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((pa = (PlatformAdmin)((ref = systemContext.getServiceReference(clazz.getName())) == null ? null : systemContext.getService(ref))) == null) {
            throw new RuntimeException("No Platform Admin service is available.");
        }
        try {
            State state = pa.getState(false);
            BundleDescription desc = state.getBundle(bundle.getBundleId());
            CompositeHelper.setDisabled(disable, desc);
        }
        finally {
            systemContext.ungetService(ref);
        }
    }

    static void setDisabled(boolean disable, BundleDescription bundle) {
        State state = bundle.getContainingState();
        if (disable) {
            state.addDisabledInfo(new DisabledInfo(COMPOSITE_POLICY, "Composite companion bundle is not resolved.", bundle));
        } else {
            DisabledInfo toRemove = state.getDisabledInfo(bundle, COMPOSITE_POLICY);
            if (toRemove != null) {
                state.removeDisabledInfo(toRemove);
            }
        }
    }

    static void validateCompositeManifest(Map compositeManifest) throws BundleException {
        if (compositeManifest == null) {
            throw new BundleException("The composite manifest cannot be null.", 3);
        }
        if (compositeManifest.get("Bundle-SymbolicName") == null) {
            throw new BundleException("The composite manifest must contain a Bundle-SymbolicName header.", 3);
        }
        int i = 0;
        while (i < INVALID_COMPOSITE_HEADERS.length) {
            if (compositeManifest.get(INVALID_COMPOSITE_HEADERS[i]) != null) {
                throw new BundleException("The composite manifest must not contain the header " + INVALID_COMPOSITE_HEADERS[i], 3);
            }
            ++i;
        }
        String manifestVersion = (String)compositeManifest.get("Bundle-ManifestVersion");
        if (manifestVersion == null) {
            compositeManifest.put("Bundle-ManifestVersion", "2");
        } else {
            try {
                Integer parsed = Integer.valueOf(manifestVersion);
                if (parsed > 2 || parsed < 2) {
                    throw new BundleException("Invalid Bundle-ManifestVersion: " + manifestVersion);
                }
            }
            catch (NumberFormatException numberFormatException) {
                throw new BundleException("Invalid Bundle-ManifestVersion: " + manifestVersion);
            }
        }
    }
}

