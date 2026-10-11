/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.jdt.core.IJavaElement
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IPackageFragment
 *  org.eclipse.jdt.core.IPackageFragmentRoot
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.osgi.service.pluginconversion.PluginConversionException
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.eclipse.osgi.util.ManifestElement
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core.converter;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Dictionary;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.osgi.service.pluginconversion.PluginConversionException;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.build.Build;
import org.eclipse.pde.internal.core.build.WorkspaceBuildModel;
import org.eclipse.pde.internal.core.converter.PluginConverterParser;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;

public class PluginConverter {
    public static boolean DEBUG = false;
    public static final byte MANIFEST_TYPE_UNKNOWN = 0;
    public static final byte MANIFEST_TYPE_BUNDLE = 1;
    public static final byte MANIFEST_TYPE_PLUGIN = 2;
    public static final byte MANIFEST_TYPE_FRAGMENT = 4;
    public static final byte MANIFEST_TYPE_JAR = 8;
    private static final String SEMICOLON = "; ";
    private static final String UTF_8 = "UTF-8";
    public static final String LIST_SEPARATOR = ",\n ";
    public static final String LINE_SEPARATOR = "\n ";
    private static int MAXLINE = 511;
    private BundleContext context;
    private PluginConverterParser.PluginInfo pluginInfo;
    private File pluginManifestLocation;
    private Dictionary generatedManifest;
    private byte manifestType;
    private Version target;
    static final Version TARGET31 = new Version(3, 1, 0);
    static final Version TARGET32 = new Version(3, 2, 0);
    static final Version TARGET34 = new Version(3, 4, 0);
    private static final String MANIFEST_VERSION = "Manifest-Version";
    private static final String PLUGIN_PROPERTIES_FILENAME = "plugin";
    private static PluginConverter instance;
    public static final String GENERATED_FROM = "Generated-from";
    public static final String MANIFEST_TYPE_ATTRIBUTE = "type";
    protected static final String PI_BOOT = "org.eclipse.core.boot";
    protected static final String PI_RUNTIME_COMPATIBILITY = "org.eclipse.core.runtime.compatibility";
    private static final String COMPATIBILITY_ACTIVATOR = "org.eclipse.core.internal.compatibility.PluginActivator";
    private static final String SOURCE_PREFIX = "source.";

    public static PluginConverter getDefault() {
        if (instance == null) {
            instance = new PluginConverter(PDECore.getDefault().getBundleContext());
        }
        return instance;
    }

    public PluginConverter(BundleContext context) {
        this.context = context;
        instance = this;
    }

    private void init() {
        this.pluginInfo = null;
        this.pluginManifestLocation = null;
        this.generatedManifest = new Hashtable(10);
        this.manifestType = 0;
        this.target = null;
    }

    private void fillPluginInfo(File pluginBaseLocation) throws PluginConversionException {
        this.pluginManifestLocation = pluginBaseLocation;
        if (this.pluginManifestLocation == null) {
            throw new IllegalArgumentException();
        }
        URL pluginFile = this.findPluginManifest(pluginBaseLocation);
        if (pluginFile == null) {
            throw new PluginConversionException(NLS.bind((String)PDECoreMessages.PluginConverter_EclipseConverterFileNotFound, (Object)pluginBaseLocation.getAbsolutePath()));
        }
        this.pluginInfo = this.parsePluginInfo(pluginFile);
        String validation = this.pluginInfo.validateForm();
        if (validation != null) {
            throw new PluginConversionException(validation);
        }
    }

    /*
     * Unable to fully structure code
     */
    private URL findPluginManifest(File baseLocation) {
        stream = null;
        baseURL = null;
        try {
            if (!baseLocation.isDirectory()) {
                baseURL = new URL("jar:file:" + baseLocation.toString() + "!/");
                this.manifestType = (byte)(this.manifestType | 8);
            } else {
                baseURL = baseLocation.toURL();
            }
        }
        catch (MalformedURLException v0) {}
        xmlFileLocation = new URL(baseURL, "plugin.xml");
        stream = xmlFileLocation.openStream();
        this.manifestType = (byte)(this.manifestType | 2);
        var6_6 = xmlFileLocation;
        try {
            if (stream != null) {
                stream.close();
            }
        }
        catch (IOException v1) {}
        return var6_6;
        catch (MalformedURLException v2) {
            ** try [egrp 3[TRYBLOCK] [7 : 116->117)] { 
lbl24:
            // 1 sources

            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException v3) {}
            return null;
        }
        catch (IOException v4) {
            ** try [egrp 5[TRYBLOCK] [8 : 131->132)] { 
lbl-1000:
            // 3 sources

            {
                catch (Throwable var5_8) {
                    try {
                        if (stream != null) {
                            stream.close();
                        }
                    }
                    catch (IOException v5) {}
                    throw var5_8;
                }
            }
lbl39:
            // 1 sources

            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException v6) {}
        }
        xmlFileLocation = new URL(baseURL, "fragment.xml");
        stream = xmlFileLocation.openStream();
        this.manifestType = (byte)(this.manifestType | 4);
        var6_7 = xmlFileLocation;
        try {
            if (stream != null) {
                stream.close();
            }
        }
        catch (IOException v7) {}
        return var6_7;
        catch (MalformedURLException v8) {
            ** try [egrp 10[TRYBLOCK] [16 : 210->211)] { 
lbl59:
            // 1 sources

            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException v9) {}
            return null;
        }
        catch (IOException v10) {
            ** try [egrp 12[TRYBLOCK] [17 : 225->226)] { 
lbl-1000:
            // 3 sources

            {
                catch (Throwable var5_9) {
                    try {
                        if (stream != null) {
                            stream.close();
                        }
                    }
                    catch (IOException v11) {}
                    throw var5_9;
                }
            }
lbl74:
            // 1 sources

            try {
                if (stream != null) {
                    stream.close();
                }
            }
            catch (IOException v12) {}
        }
        return null;
    }

    protected void fillManifest(boolean compatibilityManifest, boolean analyseJars) {
        this.generateManifestVersion();
        this.generateHeaders();
        this.generateClasspath();
        this.generateActivator();
        this.generatePluginClass();
        if (analyseJars) {
            this.generateProvidePackage();
        }
        this.generateRequireBundle();
        this.generateLocalizationEntry();
        this.generateEclipseHeaders();
        if (compatibilityManifest) {
            this.generateTimestamp();
        }
    }

    public void writeManifest(File generationLocation, Map manifestToWrite, boolean compatibilityManifest) throws PluginConversionException {
        long start = System.currentTimeMillis();
        BufferedWriter out = null;
        try {
            try {
                File parentFile = new File(generationLocation.getParent());
                parentFile.mkdirs();
                generationLocation.createNewFile();
                if (!generationLocation.isFile()) {
                    String message = NLS.bind((String)PDECoreMessages.PluginConverter_EclipseConverterErrorCreatingBundleManifest, (Object)this.pluginInfo.getUniqueId(), (Object)generationLocation);
                    throw new PluginConversionException(message);
                }
                out = new BufferedWriter(new OutputStreamWriter((OutputStream)new FileOutputStream(generationLocation), UTF_8));
                this.writeManifest(manifestToWrite, out);
            }
            catch (IOException e) {
                String message = NLS.bind((String)PDECoreMessages.PluginConverter_EclipseConverterErrorCreatingBundleManifest, (Object)this.pluginInfo.getUniqueId(), (Object)generationLocation);
                throw new PluginConversionException(message, (Throwable)e);
            }
        }
        catch (Throwable throwable) {
            if (out != null) {
                try {
                    out.close();
                }
                catch (IOException iOException) {}
            }
            throw throwable;
        }
        if (out != null) {
            try {
                out.close();
            }
            catch (IOException iOException) {}
        }
        if (DEBUG) {
            System.out.println("Time to write out converted manifest to: " + generationLocation + ": " + (System.currentTimeMillis() - start) + "ms.");
        }
    }

    public void writeManifest(Map manifestToWrite, Writer out) throws IOException {
        manifestToWrite = new Hashtable(manifestToWrite);
        this.writeEntry(out, MANIFEST_VERSION, (String)manifestToWrite.remove(MANIFEST_VERSION));
        this.writeEntry(out, GENERATED_FROM, (String)manifestToWrite.remove(GENERATED_FROM));
        this.writeEntry(out, "Bundle-ManifestVersion", (String)manifestToWrite.remove("Bundle-ManifestVersion"));
        this.writeEntry(out, "Bundle-Name", (String)manifestToWrite.remove("Bundle-Name"));
        this.writeEntry(out, "Bundle-SymbolicName", (String)manifestToWrite.remove("Bundle-SymbolicName"));
        this.writeEntry(out, "Bundle-Version", (String)manifestToWrite.remove("Bundle-Version"));
        this.writeEntry(out, "Bundle-ClassPath", (String)manifestToWrite.remove("Bundle-ClassPath"));
        this.writeEntry(out, "Bundle-Activator", (String)manifestToWrite.remove("Bundle-Activator"));
        this.writeEntry(out, "Bundle-Vendor", (String)manifestToWrite.remove("Bundle-Vendor"));
        this.writeEntry(out, "Fragment-Host", (String)manifestToWrite.remove("Fragment-Host"));
        this.writeEntry(out, "Bundle-Localization", (String)manifestToWrite.remove("Bundle-Localization"));
        this.writeEntry(out, "Export-Package", (String)manifestToWrite.remove("Export-Package"));
        this.writeEntry(out, "Provide-Package", (String)manifestToWrite.remove("Provide-Package"));
        this.writeEntry(out, "Require-Bundle", (String)manifestToWrite.remove("Require-Bundle"));
        Iterator keys = manifestToWrite.keySet().iterator();
        while (keys.hasNext()) {
            String key = (String)keys.next();
            this.writeEntry(out, key, (String)manifestToWrite.get(key));
        }
        out.flush();
    }

    private void generateLocalizationEntry() {
        this.generatedManifest.put("Bundle-Localization", PLUGIN_PROPERTIES_FILENAME);
    }

    private void generateManifestVersion() {
        this.generatedManifest.put(MANIFEST_VERSION, "1.0");
    }

    private boolean requireRuntimeCompatibility() {
        ArrayList requireList = this.pluginInfo.getRequires();
        Iterator iter = requireList.iterator();
        while (iter.hasNext()) {
            if (!((PluginConverterParser.Prerequisite)iter.next()).getName().equalsIgnoreCase(PI_RUNTIME_COMPATIBILITY)) continue;
            return true;
        }
        return false;
    }

    private void generateActivator() {
        if (!this.pluginInfo.isFragment()) {
            if (!this.requireRuntimeCompatibility()) {
                String pluginClass = this.pluginInfo.getPluginClass();
                if (pluginClass != null && !pluginClass.trim().equals("")) {
                    this.generatedManifest.put("Bundle-Activator", pluginClass);
                }
            } else {
                this.generatedManifest.put("Bundle-Activator", COMPATIBILITY_ACTIVATOR);
            }
        }
    }

    private void generateClasspath() {
        String[] classpath = this.pluginInfo.getLibrariesName();
        if (classpath.length != 0) {
            this.generatedManifest.put("Bundle-ClassPath", this.getStringFromArray(classpath, LIST_SEPARATOR));
        }
    }

    private void generateHeaders() {
        if (TARGET31.compareTo(this.target) <= 0) {
            this.generatedManifest.put("Bundle-ManifestVersion", "2");
        }
        this.generatedManifest.put("Bundle-Name", this.pluginInfo.getPluginName());
        this.generatedManifest.put("Bundle-Version", this.pluginInfo.getVersion());
        this.generatedManifest.put("Bundle-SymbolicName", this.getSymbolicNameEntry());
        String provider = this.pluginInfo.getProviderName();
        if (provider != null) {
            this.generatedManifest.put("Bundle-Vendor", provider);
        }
        if (this.pluginInfo.isFragment()) {
            StringBuffer hostBundle = new StringBuffer();
            hostBundle.append(this.pluginInfo.getMasterId());
            String versionRange = this.getVersionRange(this.pluginInfo.getMasterVersion(), this.pluginInfo.getMasterMatch());
            if (versionRange != null) {
                hostBundle.append(versionRange);
            }
            this.generatedManifest.put("Fragment-Host", hostBundle.toString());
        }
    }

    private String getSymbolicNameEntry() {
        if (!this.pluginInfo.isSingleton()) {
            return this.pluginInfo.getUniqueId();
        }
        StringBuffer result = new StringBuffer(this.pluginInfo.getUniqueId());
        result.append(SEMICOLON);
        result.append("singleton");
        String assignment = TARGET31.compareTo(this.target) <= 0 ? ":=" : "=";
        result.append(assignment).append("true");
        return result.toString();
    }

    private void generatePluginClass() {
        String pluginClass;
        if (this.requireRuntimeCompatibility() && (pluginClass = this.pluginInfo.getPluginClass()) != null) {
            this.generatedManifest.put("Plugin-Class", pluginClass);
        }
    }

    private void generateProvidePackage() {
        Set exports = this.getExports();
        if (exports != null && exports.size() != 0) {
            this.generatedManifest.put(TARGET31.compareTo(this.target) <= 0 ? "Export-Package" : "Provide-Package", this.getStringFromCollection(exports, LIST_SEPARATOR));
        }
    }

    private void generateRequireBundle() {
        ArrayList requiredBundles = this.pluginInfo.getRequires();
        if (requiredBundles.size() == 0) {
            return;
        }
        StringBuffer bundleRequire = new StringBuffer();
        Iterator iter = requiredBundles.iterator();
        while (iter.hasNext()) {
            PluginConverterParser.Prerequisite element = (PluginConverterParser.Prerequisite)iter.next();
            StringBuffer modImport = new StringBuffer(element.getName());
            String versionRange = this.getVersionRange(element.getVersion(), element.getMatch());
            if (versionRange != null) {
                modImport.append(versionRange);
            }
            if (element.isExported()) {
                if (TARGET31.compareTo(this.target) <= 0) {
                    modImport.append(';').append("visibility").append(":=").append("reexport");
                } else {
                    modImport.append(';').append("reprovide").append("=true");
                }
            }
            if (element.isOptional()) {
                if (TARGET31.compareTo(this.target) <= 0) {
                    modImport.append(';').append("resolution").append(":=").append("optional");
                } else {
                    modImport.append(';').append("optional").append("=true");
                }
            }
            bundleRequire.append(modImport.toString());
            if (!iter.hasNext()) continue;
            bundleRequire.append(LIST_SEPARATOR);
        }
        this.generatedManifest.put("Require-Bundle", bundleRequire.toString());
    }

    private void generateTimestamp() {
        this.generatedManifest.put(GENERATED_FROM, String.valueOf(Long.toString(PluginConverter.getTimeStamp(this.pluginManifestLocation, this.manifestType))) + ";" + MANIFEST_TYPE_ATTRIBUTE + "=" + this.manifestType);
    }

    private void generateEclipseHeaders() {
        if (this.pluginInfo.isFragment()) {
            return;
        }
        String pluginClass = this.pluginInfo.getPluginClass();
        if (this.pluginInfo.hasExtensionExtensionPoints() || pluginClass != null && !pluginClass.trim().equals("")) {
            if (TARGET34.compareTo(this.target) <= 0) {
                this.generatedManifest.put("Bundle-ActivationPolicy", "lazy");
            } else {
                this.generatedManifest.put(TARGET32.compareTo(this.target) <= 0 ? "Eclipse-LazyStart" : "Eclipse-AutoStart", "true");
            }
        }
    }

    private Set getExports() {
        Map libs = this.pluginInfo.getLibraries();
        if (libs == null) {
            return null;
        }
        String projName = this.pluginManifestLocation.getName();
        IProject proj = ResourcesPlugin.getWorkspace().getRoot().getProject(projName);
        if (proj == null) {
            return null;
        }
        return this.getExports(proj, libs);
    }

    public Set getExports(IProject proj, Map libs) {
        IFile buildProperties = PDEProject.getBuildProperties(proj);
        IBuild build = null;
        if (buildProperties != null) {
            WorkspaceBuildModel buildModel = new WorkspaceBuildModel(buildProperties);
            build = buildModel.getBuild();
        } else {
            build = new Build();
        }
        return this.findPackages(proj, libs, build);
    }

    private Set findPackages(IProject proj, Map libs, IBuild build) {
        TreeSet result = new TreeSet();
        IJavaProject jp = JavaCore.create((IProject)proj);
        Iterator it = libs.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = it.next();
            String libName = entry.getKey().toString();
            List filter = (List)entry.getValue();
            IBuildEntry libEntry = build.getEntry(SOURCE_PREFIX + libName);
            if (libEntry != null) {
                String[] tokens = libEntry.getTokens();
                int i = 0;
                while (i < tokens.length) {
                    Object folder = null;
                    folder = tokens[i].equals(".") ? proj : proj.getFolder(tokens[i]);
                    if (folder != null) {
                        this.addPackagesFromFragRoot(jp.getPackageFragmentRoot((IResource)folder), result, filter);
                    }
                    ++i;
                }
                continue;
            }
            IResource res = proj.findMember(libName);
            if (res == null) continue;
            this.addPackagesFromFragRoot(jp.getPackageFragmentRoot(res), result, filter);
        }
        return result;
    }

    private void addPackagesFromFragRoot(IPackageFragmentRoot root, Collection result, List filter) {
        if (root == null) {
            return;
        }
        try {
            if (filter != null && !filter.contains("*")) {
                ListIterator li = filter.listIterator();
                while (li.hasNext()) {
                    IPackageFragment frag;
                    String pkgName = li.next().toString();
                    if (pkgName.endsWith(".*")) {
                        pkgName = pkgName.substring(0, pkgName.length() - 2);
                    }
                    if ((frag = root.getPackageFragment(pkgName)) == null) continue;
                    result.add(pkgName);
                }
                return;
            }
            IJavaElement[] children = root.getChildren();
            int j = 0;
            while (j < children.length) {
                IPackageFragment fragment = (IPackageFragment)children[j];
                String name = fragment.getElementName();
                if (fragment.hasChildren() && !result.contains(name)) {
                    result.add(name);
                }
                ++j;
            }
        }
        catch (JavaModelException javaModelException) {}
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private PluginConverterParser.PluginInfo parsePluginInfo(URL pluginLocation) throws PluginConversionException {
        PluginConverterParser.PluginInfo pluginInfo;
        BufferedInputStream input = null;
        try {
            input = new BufferedInputStream(pluginLocation.openStream());
            pluginInfo = new PluginConverterParser(this.context, this.target).parsePlugin(input);
            if (input == null) return pluginInfo;
        }
        catch (Exception e) {
            try {
                String message = NLS.bind((String)PDECoreMessages.PluginConverter_EclipseConverterErrorParsingPluginManifest, (Object)this.pluginManifestLocation);
                throw new PluginConversionException(message, (Throwable)e);
            }
            catch (Throwable throwable) {
                if (input == null) throw throwable;
                try {
                    ((InputStream)input).close();
                    throw throwable;
                }
                catch (IOException iOException) {}
                throw throwable;
            }
        }
        try {
            ((InputStream)input).close();
            return pluginInfo;
        }
        catch (IOException iOException) {}
        return pluginInfo;
    }

    public static boolean upToDate(File generationLocation, File pluginLocation, byte manifestType) {
        ManifestElement generatedFrom;
        if (!generationLocation.isFile()) {
            return false;
        }
        String secondLine = null;
        BufferedReader reader = null;
        try {
            try {
                reader = new BufferedReader(new InputStreamReader(new FileInputStream(generationLocation)));
                reader.readLine();
                secondLine = reader.readLine();
            }
            catch (IOException iOException) {
                if (reader != null) {
                    try {
                        reader.close();
                    }
                    catch (IOException iOException2) {}
                }
                return false;
            }
        }
        catch (Throwable throwable) {
            if (reader != null) {
                try {
                    reader.close();
                }
                catch (IOException iOException) {}
            }
            throw throwable;
        }
        if (reader != null) {
            try {
                reader.close();
            }
            catch (IOException iOException) {}
        }
        String tag = "Generated-from: ";
        if (secondLine == null || !secondLine.startsWith(tag)) {
            return false;
        }
        secondLine = secondLine.substring(tag.length());
        try {
            generatedFrom = ManifestElement.parseHeader((String)GENERATED_FROM, (String)secondLine)[0];
        }
        catch (BundleException bundleException) {
            return false;
        }
        String timestampStr = generatedFrom.getValue();
        try {
            return Long.parseLong(timestampStr.trim()) == PluginConverter.getTimeStamp(pluginLocation, manifestType);
        }
        catch (NumberFormatException numberFormatException) {
            return false;
        }
    }

    public static long getTimeStamp(File pluginLocation, byte manifestType) {
        if ((manifestType & 8) != 0) {
            return pluginLocation.lastModified();
        }
        if ((manifestType & 2) != 0) {
            return new File(pluginLocation, "plugin.xml").lastModified();
        }
        if ((manifestType & 4) != 0) {
            return new File(pluginLocation, "fragment.xml").lastModified();
        }
        if ((manifestType & 1) != 0) {
            return new File(pluginLocation, "META-INF/MANIFEST.MF").lastModified();
        }
        return -1L;
    }

    private void writeEntry(Writer out, String key, String value) throws IOException {
        if (value != null && value.length() > 0) {
            out.write(this.splitOnComma(String.valueOf(key) + ": " + value));
            out.write(10);
        }
    }

    private String splitOnComma(String value) {
        if (value.length() < MAXLINE || value.indexOf(LINE_SEPARATOR) >= 0) {
            return value;
        }
        String[] values = ManifestElement.getArrayFromList((String)value);
        if (values == null || values.length == 0) {
            return value;
        }
        StringBuffer sb = new StringBuffer(value.length() + (values.length - 1) * LIST_SEPARATOR.length());
        int i = 0;
        while (i < values.length - 1) {
            sb.append(values[i]).append(LIST_SEPARATOR);
            ++i;
        }
        sb.append(values[values.length - 1]);
        return sb.toString();
    }

    private String getStringFromArray(String[] values, String separator) {
        if (values == null) {
            return "";
        }
        StringBuffer result = new StringBuffer();
        int i = 0;
        while (i < values.length) {
            if (i > 0) {
                result.append(separator);
            }
            result.append(values[i]);
            ++i;
        }
        return result.toString();
    }

    private String getStringFromCollection(Collection collection, String separator) {
        StringBuffer result = new StringBuffer();
        boolean first = true;
        Iterator i = collection.iterator();
        while (i.hasNext()) {
            if (first) {
                first = false;
            } else {
                result.append(separator);
            }
            result.append(i.next());
        }
        return result.toString();
    }

    public synchronized Dictionary convertManifest(File pluginBaseLocation, boolean compatibility, String target, boolean analyseJars, Dictionary devProperties) throws PluginConversionException {
        long start = System.currentTimeMillis();
        if (DEBUG) {
            System.out.println("Convert " + pluginBaseLocation);
        }
        this.init();
        this.target = target == null ? TARGET32 : new Version(target);
        this.fillPluginInfo(pluginBaseLocation);
        this.fillManifest(compatibility, analyseJars);
        if (DEBUG) {
            System.out.println("Time to convert manifest for: " + pluginBaseLocation + ": " + (System.currentTimeMillis() - start) + "ms.");
        }
        return this.generatedManifest;
    }

    public synchronized File convertManifest(File pluginBaseLocation, File bundleManifestLocation, boolean compatibilityManifest, String target, boolean analyseJars, Dictionary devProperties) throws PluginConversionException {
        if (bundleManifestLocation == null) {
            throw new PluginConversionException(PDECoreMessages.PluginConverter_BundleLocationIsNull);
        }
        this.convertManifest(pluginBaseLocation, compatibilityManifest, target, analyseJars, devProperties);
        if (PluginConverter.upToDate(bundleManifestLocation, this.pluginManifestLocation, this.manifestType)) {
            return bundleManifestLocation;
        }
        this.writeManifest(bundleManifestLocation, (Map)((Object)this.generatedManifest), compatibilityManifest);
        return bundleManifestLocation;
    }

    private String getVersionRange(String reqVersion, String matchRule) {
        if (reqVersion == null) {
            return null;
        }
        Version minVersion = Version.parseVersion((String)reqVersion);
        String versionRange = matchRule != null ? (matchRule.equalsIgnoreCase("perfect") ? new VersionRange(minVersion, true, minVersion, true).toString() : (matchRule.equalsIgnoreCase("equivalent") ? new VersionRange(minVersion, true, new Version(minVersion.getMajor(), minVersion.getMinor() + 1, 0, ""), false).toString() : (matchRule.equalsIgnoreCase("compatible") ? new VersionRange(minVersion, true, new Version(minVersion.getMajor() + 1, 0, 0, ""), false).toString() : (matchRule.equalsIgnoreCase("greaterOrEqual") ? reqVersion : new VersionRange(minVersion, true, new Version(minVersion.getMajor() + 1, 0, 0, ""), false).toString())))) : new VersionRange(minVersion, true, new Version(minVersion.getMajor() + 1, 0, 0, ""), false).toString();
        StringBuffer result = new StringBuffer();
        result.append(';').append("bundle-version").append('=');
        result.append('\"').append(versionRange).append('\"');
        return result.toString();
    }
}

