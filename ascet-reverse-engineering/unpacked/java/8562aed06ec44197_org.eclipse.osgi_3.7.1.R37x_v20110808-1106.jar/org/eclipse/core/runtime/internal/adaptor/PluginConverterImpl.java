/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

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
import java.util.ArrayList;
import java.util.Collection;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.core.runtime.internal.adaptor.IPluginInfo;
import org.eclipse.core.runtime.internal.adaptor.PluginParser;
import org.eclipse.osgi.framework.adaptor.FrameworkAdaptor;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.internal.baseadaptor.DevClassPathHelper;
import org.eclipse.osgi.service.pluginconversion.PluginConversionException;
import org.eclipse.osgi.service.pluginconversion.PluginConverter;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PluginConverterImpl
implements PluginConverter {
    public static boolean DEBUG = false;
    public static final byte MANIFEST_TYPE_UNKNOWN = 0;
    public static final byte MANIFEST_TYPE_BUNDLE = 1;
    public static final byte MANIFEST_TYPE_PLUGIN = 2;
    public static final byte MANIFEST_TYPE_FRAGMENT = 4;
    public static final byte MANIFEST_TYPE_JAR = 8;
    private static final String SEMICOLON = "; ";
    private static final String UTF_8 = "UTF-8";
    private static final String LIST_SEPARATOR = ",\n ";
    private static final String LINE_SEPARATOR = "\n ";
    private static final String DOT = ".";
    private static int MAXLINE = 511;
    private BundleContext context;
    private FrameworkAdaptor adaptor;
    private BufferedWriter out;
    private IPluginInfo pluginInfo;
    private File pluginManifestLocation;
    private ZipFile pluginZip;
    private Dictionary<String, String> generatedManifest;
    private byte manifestType;
    private Version target;
    private Dictionary<String, String> devProperties;
    static final Version TARGET31 = new Version(3, 1, 0);
    static final Version TARGET32 = new Version(3, 2, 0);
    private static final String MANIFEST_VERSION = "Manifest-Version";
    private static final String PLUGIN_PROPERTIES_FILENAME = "plugin";
    private static PluginConverterImpl instance;
    private static final String[] ARCH_LIST;
    public static final String FRAGMENT_MANIFEST = "fragment.xml";
    public static final String GENERATED_FROM = "Generated-from";
    public static final String MANIFEST_TYPE_ATTRIBUTE = "type";
    private static final String[] OS_LIST;
    protected static final String PI_RUNTIME = "org.eclipse.core.runtime";
    protected static final String PI_BOOT = "org.eclipse.core.boot";
    protected static final String PI_RUNTIME_COMPATIBILITY = "org.eclipse.core.runtime.compatibility";
    public static final String PLUGIN_MANIFEST = "plugin.xml";
    private static final String COMPATIBILITY_ACTIVATOR = "org.eclipse.core.internal.compatibility.PluginActivator";
    private static final String[] WS_LIST;
    private static final String IGNORE_DOT = "@ignoredot@";

    static {
        ARCH_LIST = new String[]{"PA_RISC", "ppc", "sparc", "x86", "x86_64", "ia64"};
        OS_LIST = new String[]{"aix", "hpux", "linux", "macosx", "qnx", "solaris", "win32"};
        WS_LIST = new String[]{"carbon", "gtk", "motif", "photon", "win32"};
    }

    public static PluginConverterImpl getDefault() {
        return instance;
    }

    public PluginConverterImpl(FrameworkAdaptor adaptor, BundleContext context) {
        this.context = context;
        this.adaptor = adaptor;
        instance = this;
    }

    private void init() {
        this.out = null;
        this.pluginInfo = null;
        this.pluginManifestLocation = null;
        this.pluginZip = null;
        this.generatedManifest = new Hashtable<String, String>(10);
        this.manifestType = 0;
        this.target = null;
        this.devProperties = null;
    }

    private void fillPluginInfo(File pluginBaseLocation) throws PluginConversionException {
        String validation;
        this.pluginManifestLocation = pluginBaseLocation;
        if (this.pluginManifestLocation == null) {
            throw new IllegalArgumentException();
        }
        InputStream pluginFile = null;
        try {
            try {
                pluginFile = this.findPluginManifest(pluginBaseLocation);
            }
            catch (IOException e) {
                throw new PluginConversionException(NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONVERTER_FILENOTFOUND, pluginBaseLocation.getAbsolutePath()), e);
            }
            if (pluginFile == null) {
                throw new PluginConversionException(NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONVERTER_FILENOTFOUND, pluginBaseLocation.getAbsolutePath()));
            }
            this.pluginInfo = this.parsePluginInfo(pluginFile);
        }
        catch (Throwable throwable) {
            if (this.pluginZip != null) {
                try {
                    this.pluginZip.close();
                    this.pluginZip = null;
                }
                catch (IOException iOException) {}
            }
            throw throwable;
        }
        if (this.pluginZip != null) {
            try {
                this.pluginZip.close();
                this.pluginZip = null;
            }
            catch (IOException iOException) {}
        }
        if ((validation = this.pluginInfo.validateForm()) != null) {
            throw new PluginConversionException(validation);
        }
    }

    private Set<String> filterExport(Set<String> exportToFilter, Collection<String> filter) {
        if (filter == null || filter.contains("*")) {
            return exportToFilter;
        }
        HashSet<String> filteredExport = new HashSet<String>(exportToFilter.size());
        block0: for (String anExport : exportToFilter) {
            for (String aFilter : filter) {
                int dotStar = aFilter.indexOf(".*");
                if (dotStar != -1) {
                    aFilter = aFilter.substring(0, dotStar);
                }
                if (!anExport.equals(aFilter)) continue;
                filteredExport.add(anExport);
                continue block0;
            }
        }
        return filteredExport;
    }

    private List<String> findOSJars(File pluginRoot, String path, boolean filter) {
        path = path.substring(4);
        ArrayList<String> found = new ArrayList<String>(0);
        int i = 0;
        while (i < OS_LIST.length) {
            String searchedPath = new StringBuffer("os/").append(OS_LIST[i]).append("/").append(path).toString();
            if (new File(pluginRoot, searchedPath).exists()) {
                found.add(new StringBuffer(String.valueOf(searchedPath)).append(filter ? new StringBuffer(";(os=").append(WS_LIST[i]).append(")").toString() : "").toString());
            }
            int j = 0;
            while (j < ARCH_LIST.length) {
                searchedPath = new StringBuffer("os/").append(OS_LIST[i]).append("/").append(ARCH_LIST[j]).append("/").append(path).toString();
                if (new File(pluginRoot, searchedPath).exists()) {
                    found.add(new StringBuffer(String.valueOf(searchedPath)).append(filter ? new StringBuffer(";(& (os=").append(WS_LIST[i]).append(") (arch=").append(ARCH_LIST[j]).append(")").toString() : "").toString());
                }
                ++j;
            }
            ++i;
        }
        return found;
    }

    private InputStream findPluginManifest(File baseLocation) throws IOException {
        File manifestFile;
        ZipEntry manifestEntry;
        if (this.pluginZip != null) {
            try {
                this.pluginZip.close();
            }
            catch (IOException iOException) {}
        }
        this.pluginZip = null;
        if (!baseLocation.isDirectory()) {
            this.manifestType = (byte)(this.manifestType | 8);
            this.pluginZip = new ZipFile(baseLocation);
        }
        if (this.pluginZip != null) {
            manifestEntry = this.pluginZip.getEntry(PLUGIN_MANIFEST);
            if (manifestEntry != null) {
                this.manifestType = (byte)(this.manifestType | 2);
                return this.pluginZip.getInputStream(manifestEntry);
            }
        } else {
            manifestFile = new File(baseLocation, PLUGIN_MANIFEST);
            if (manifestFile.exists()) {
                this.manifestType = (byte)(this.manifestType | 2);
                return new FileInputStream(manifestFile);
            }
        }
        if (this.pluginZip != null) {
            manifestEntry = this.pluginZip.getEntry(FRAGMENT_MANIFEST);
            if (manifestEntry != null) {
                this.manifestType = (byte)(this.manifestType | 2);
                return this.pluginZip.getInputStream(manifestEntry);
            }
        } else {
            manifestFile = new File(baseLocation, FRAGMENT_MANIFEST);
            if (manifestFile.exists()) {
                this.manifestType = (byte)(this.manifestType | 4);
                return new FileInputStream(manifestFile);
            }
        }
        return null;
    }

    private List<String> findWSJars(File pluginRoot, String path, boolean filter) {
        path = path.substring(4);
        ArrayList<String> found = new ArrayList<String>(0);
        int i = 0;
        while (i < WS_LIST.length) {
            String searchedPath = new StringBuffer("ws/").append(WS_LIST[i]).append(path).toString();
            if (new File(pluginRoot, searchedPath).exists()) {
                found.add(new StringBuffer(String.valueOf(searchedPath)).append(filter ? new StringBuffer(";(ws=").append(WS_LIST[i]).append(")").toString() : "").toString());
            }
            ++i;
        }
        return found;
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

    @Override
    public void writeManifest(File generationLocation, Dictionary<String, String> manifestToWrite, boolean compatibilityManifest) throws PluginConversionException {
        long start = System.currentTimeMillis();
        try {
            try {
                File parentFile = new File(generationLocation.getParent());
                parentFile.mkdirs();
                generationLocation.createNewFile();
                if (!generationLocation.isFile()) {
                    String message = NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONVERTER_ERROR_CREATING_BUNDLE_MANIFEST, this.pluginInfo.getUniqueId(), generationLocation);
                    throw new PluginConversionException(message);
                }
                manifestToWrite = new Hashtable<String, String>((Hashtable)manifestToWrite);
                this.out = new BufferedWriter(new OutputStreamWriter((OutputStream)new FileOutputStream(generationLocation), UTF_8));
                this.writeEntry(MANIFEST_VERSION, manifestToWrite.remove(MANIFEST_VERSION));
                this.writeEntry(GENERATED_FROM, manifestToWrite.remove(GENERATED_FROM));
                this.writeEntry("Bundle-ManifestVersion", manifestToWrite.remove("Bundle-ManifestVersion"));
                this.writeEntry("Bundle-Name", manifestToWrite.remove("Bundle-Name"));
                this.writeEntry("Bundle-SymbolicName", manifestToWrite.remove("Bundle-SymbolicName"));
                this.writeEntry("Bundle-Version", manifestToWrite.remove("Bundle-Version"));
                this.writeEntry("Bundle-ClassPath", manifestToWrite.remove("Bundle-ClassPath"));
                this.writeEntry("Bundle-Activator", manifestToWrite.remove("Bundle-Activator"));
                this.writeEntry("Bundle-Vendor", manifestToWrite.remove("Bundle-Vendor"));
                this.writeEntry("Fragment-Host", manifestToWrite.remove("Fragment-Host"));
                this.writeEntry("Bundle-Localization", manifestToWrite.remove("Bundle-Localization"));
                this.writeEntry("Export-Package", manifestToWrite.remove("Export-Package"));
                this.writeEntry("Provide-Package", manifestToWrite.remove("Provide-Package"));
                this.writeEntry("Require-Bundle", manifestToWrite.remove("Require-Bundle"));
                Enumeration<String> keys = manifestToWrite.keys();
                while (keys.hasMoreElements()) {
                    String key = keys.nextElement();
                    this.writeEntry(key, manifestToWrite.get(key));
                }
                this.out.flush();
            }
            catch (IOException e) {
                String message = NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONVERTER_ERROR_CREATING_BUNDLE_MANIFEST, this.pluginInfo.getUniqueId(), generationLocation);
                throw new PluginConversionException(message, e);
            }
        }
        catch (Throwable throwable) {
            if (this.out != null) {
                try {
                    this.out.close();
                }
                catch (IOException iOException) {}
            }
            throw throwable;
        }
        if (this.out != null) {
            try {
                this.out.close();
            }
            catch (IOException iOException) {}
        }
        if (DEBUG) {
            System.out.println(new StringBuffer("Time to write out converted manifest to: ").append(generationLocation).append(": ").append(System.currentTimeMillis() - start).append("ms.").toString());
        }
    }

    private void generateLocalizationEntry() {
        this.generatedManifest.put("Bundle-Localization", PLUGIN_PROPERTIES_FILENAME);
    }

    private void generateManifestVersion() {
        this.generatedManifest.put(MANIFEST_VERSION, "1.0");
    }

    private boolean requireRuntimeCompatibility() {
        ArrayList<PluginParser.Prerequisite> requireList = this.pluginInfo.getRequires();
        Iterator<PluginParser.Prerequisite> iter = requireList.iterator();
        while (iter.hasNext()) {
            if (!iter.next().getName().equalsIgnoreCase(PI_RUNTIME_COMPATIBILITY)) continue;
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
        Set<String> exports = this.getExports();
        if (exports != null && exports.size() != 0) {
            this.generatedManifest.put(TARGET31.compareTo(this.target) <= 0 ? "Export-Package" : "Provide-Package", this.getStringFromCollection(exports, LIST_SEPARATOR));
        }
    }

    private void generateRequireBundle() {
        ArrayList<PluginParser.Prerequisite> requiredBundles = this.pluginInfo.getRequires();
        if (requiredBundles.size() == 0) {
            return;
        }
        StringBuffer bundleRequire = new StringBuffer();
        Iterator<PluginParser.Prerequisite> iter = requiredBundles.iterator();
        while (iter.hasNext()) {
            PluginParser.Prerequisite element = iter.next();
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
        this.generatedManifest.put(GENERATED_FROM, new StringBuffer(String.valueOf(Long.toString(PluginConverterImpl.getTimeStamp(this.pluginManifestLocation, this.manifestType)))).append(";").append(MANIFEST_TYPE_ATTRIBUTE).append("=").append(this.manifestType).toString());
    }

    private void generateEclipseHeaders() {
        if (this.pluginInfo.isFragment()) {
            return;
        }
        String pluginClass = this.pluginInfo.getPluginClass();
        if (this.pluginInfo.hasExtensionExtensionPoints() || pluginClass != null && !pluginClass.trim().equals("")) {
            this.generatedManifest.put(TARGET32.compareTo(this.target) <= 0 ? "Eclipse-LazyStart" : "Eclipse-AutoStart", "true");
        }
    }

    private Set<String> getExports() {
        Map<String, List<String>> libs = this.pluginInfo.getLibraries();
        if (libs == null) {
            return null;
        }
        if (this.devProperties != null || DevClassPathHelper.inDevelopmentMode()) {
            String[] devClassPath = DevClassPathHelper.getDevClassPath(this.pluginInfo.getUniqueId(), this.devProperties);
            ArrayList allExportClauses = new ArrayList(libs.size());
            Set<Map.Entry<String, List<String>>> libEntries = libs.entrySet();
            for (Map.Entry<String, List<String>> element : libEntries) {
                allExportClauses.addAll(element.getValue());
            }
            if (devClassPath != null) {
                String[] ignoreDotProp = DevClassPathHelper.getDevClassPath(IGNORE_DOT, this.devProperties);
                if (devClassPath.length > 0 && ignoreDotProp != null && ignoreDotProp.length > 0 && "true".equals(ignoreDotProp[0])) {
                    libs.remove(DOT);
                }
                int i = 0;
                while (i < devClassPath.length) {
                    libs.put(devClassPath[i], allExportClauses);
                    ++i;
                }
            }
        }
        TreeSet<String> result = new TreeSet<String>();
        Set<Map.Entry<String, List<String>>> libEntries = libs.entrySet();
        for (Map.Entry<String, List<String>> element : libEntries) {
            Set<String> exports;
            block10: {
                List<String> filter;
                block8: {
                    File libraryLocation;
                    block9: {
                        File libEntryAsPath;
                        filter = element.getValue();
                        if (filter.size() == 0) continue;
                        String libEntryText = element.getKey().trim();
                        libraryLocation = libEntryText.equals(DOT) ? this.pluginManifestLocation : ((libEntryAsPath = new File(libEntryText)).isAbsolute() ? libEntryAsPath : new File(this.pluginManifestLocation, libEntryText));
                        exports = null;
                        if (!libraryLocation.exists()) break block8;
                        if (!libraryLocation.isFile()) break block9;
                        exports = this.filterExport(this.getExportsFromJAR(libraryLocation), filter);
                        break block10;
                    }
                    if (!libraryLocation.isDirectory()) break block10;
                    exports = this.filterExport(this.getExportsFromDir(libraryLocation), filter);
                    break block10;
                }
                List<String> expandedLibs = this.getLibrariesExpandingVariables(element.getKey(), false);
                exports = new HashSet<String>();
                for (String libName : expandedLibs) {
                    File libFile = new File(this.pluginManifestLocation, libName);
                    if (!libFile.isFile()) continue;
                    exports.addAll(this.filterExport(this.getExportsFromJAR(libFile), filter));
                }
            }
            if (exports == null) continue;
            result.addAll(exports);
        }
        return result;
    }

    private Set<String> getExportsFromDir(File location) {
        return this.getExportsFromDir(location, "");
    }

    private Set<String> getExportsFromDir(File location, String packageName) {
        String prefix = packageName.length() > 0 ? new StringBuffer(String.valueOf(packageName)).append('.').toString() : "";
        String[] files = location.list();
        HashSet<String> exportedPaths = new HashSet<String>();
        boolean containsFile = false;
        if (files != null) {
            int i = 0;
            while (i < files.length) {
                if (this.isValidPackageName(files[i])) {
                    File pkgFile = new File(location, files[i]);
                    if (pkgFile.isDirectory()) {
                        exportedPaths.addAll(this.getExportsFromDir(pkgFile, new StringBuffer(String.valueOf(prefix)).append(files[i]).toString()));
                    } else {
                        containsFile = true;
                    }
                }
                ++i;
            }
        }
        if (containsFile) {
            if (packageName.length() > 0) {
                exportedPaths.add(packageName);
            } else {
                exportedPaths.add(DOT);
            }
        }
        return exportedPaths;
    }

    private Set<String> getExportsFromJAR(File jarFile) {
        HashSet<String> names = new HashSet<String>();
        ZipFile file = null;
        try {
            file = new ZipFile(jarFile);
        }
        catch (IOException e) {
            String message = NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONVERTER_PLUGIN_LIBRARY_IGNORED, jarFile, this.pluginInfo.getUniqueId());
            this.adaptor.getFrameworkLog().log(new FrameworkLogEntry("org.eclipse.osgi", 4, 0, message, 0, e, null));
            return names;
        }
        Enumeration<? extends ZipEntry> entriesEnum = file.entries();
        while (entriesEnum.hasMoreElements()) {
            ZipEntry entry = entriesEnum.nextElement();
            String name = entry.getName();
            if (!this.isValidPackageName(name)) continue;
            int lastSlash = name.lastIndexOf("/");
            if (lastSlash != -1) {
                if (lastSlash == name.length() - 1 || name.lastIndexOf(32) != -1) continue;
                names.add(name.substring(0, lastSlash).replace('/', '.'));
                continue;
            }
            names.add(DOT);
        }
        try {
            file.close();
        }
        catch (IOException iOException) {}
        return names;
    }

    private List<String> getLibrariesExpandingVariables(String libraryPath, boolean filter) {
        String var = this.hasPrefix(libraryPath);
        if (var == null) {
            ArrayList<String> returnValue = new ArrayList<String>(1);
            returnValue.add(libraryPath);
            return returnValue;
        }
        if (var.equals("ws")) {
            return this.findWSJars(this.pluginManifestLocation, libraryPath, filter);
        }
        if (var.equals("os")) {
            return this.findOSJars(this.pluginManifestLocation, libraryPath, filter);
        }
        return new ArrayList<String>(0);
    }

    private String hasPrefix(String libPath) {
        if (libPath.startsWith("$ws$")) {
            return "ws";
        }
        if (libPath.startsWith("$os$")) {
            return "os";
        }
        if (libPath.startsWith("$nl$")) {
            return "nl";
        }
        return null;
    }

    private boolean isValidPackageName(String name) {
        return name.indexOf(32) <= 0 && !name.equalsIgnoreCase("META-INF") && !name.startsWith("META-INF/");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private IPluginInfo parsePluginInfo(InputStream pluginLocation) throws PluginConversionException {
        PluginParser.PluginInfo pluginInfo;
        BufferedInputStream input = null;
        try {
            input = new BufferedInputStream(pluginLocation);
            pluginInfo = new PluginParser(this.adaptor, this.context, this.target).parsePlugin(input);
            if (input == null) return pluginInfo;
        }
        catch (Exception e) {
            try {
                String message = NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONVERTER_ERROR_PARSING_PLUGIN_MANIFEST, this.pluginManifestLocation);
                throw new PluginConversionException(message, e);
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
            generatedFrom = ManifestElement.parseHeader(GENERATED_FROM, secondLine)[0];
        }
        catch (BundleException bundleException) {
            return false;
        }
        String timestampStr = generatedFrom.getValue();
        try {
            return Long.parseLong(timestampStr.trim()) == PluginConverterImpl.getTimeStamp(pluginLocation, manifestType);
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
            return new File(pluginLocation, PLUGIN_MANIFEST).lastModified();
        }
        if ((manifestType & 4) != 0) {
            return new File(pluginLocation, FRAGMENT_MANIFEST).lastModified();
        }
        if ((manifestType & 1) != 0) {
            return new File(pluginLocation, "META-INF/MANIFEST.MF").lastModified();
        }
        return -1L;
    }

    private void writeEntry(String key, String value) throws IOException {
        if (value != null && value.length() > 0) {
            this.out.write(this.splitOnComma(new StringBuffer(String.valueOf(key)).append(": ").append(value).toString()));
            this.out.write(10);
        }
    }

    private String splitOnComma(String value) {
        if (value.length() < MAXLINE || value.indexOf(LINE_SEPARATOR) >= 0) {
            return value;
        }
        String[] values = ManifestElement.getArrayFromList(value);
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

    private String getStringFromCollection(Collection<String> collection, String separator) {
        StringBuffer result = new StringBuffer();
        boolean first = true;
        Iterator<String> i = collection.iterator();
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

    @Override
    public synchronized Dictionary<String, String> convertManifest(File pluginBaseLocation, boolean compatibility, String targetVersion, boolean analyseJars, Dictionary<String, String> devProps) throws PluginConversionException {
        long start = System.currentTimeMillis();
        if (DEBUG) {
            System.out.println(new StringBuffer("Convert ").append(pluginBaseLocation).toString());
        }
        this.init();
        this.target = targetVersion == null ? TARGET32 : new Version(targetVersion);
        this.devProperties = devProps;
        this.fillPluginInfo(pluginBaseLocation);
        this.fillManifest(compatibility, analyseJars);
        if (DEBUG) {
            System.out.println(new StringBuffer("Time to convert manifest for: ").append(pluginBaseLocation).append(": ").append(System.currentTimeMillis() - start).append("ms.").toString());
        }
        return this.generatedManifest;
    }

    @Override
    public synchronized File convertManifest(File pluginBaseLocation, File bundleManifestLocation, boolean compatibilityManifest, String targetVersion, boolean analyseJars, Dictionary<String, String> devProps) throws PluginConversionException {
        this.convertManifest(pluginBaseLocation, compatibilityManifest, targetVersion, analyseJars, devProps);
        if (bundleManifestLocation == null) {
            String cacheLocation = FrameworkProperties.getProperty("osgi.manifest.cache");
            bundleManifestLocation = new File(cacheLocation, new StringBuffer(String.valueOf(this.pluginInfo.getUniqueId())).append('_').append(this.pluginInfo.getVersion()).append(".MF").toString());
        }
        if (PluginConverterImpl.upToDate(bundleManifestLocation, this.pluginManifestLocation, this.manifestType)) {
            return bundleManifestLocation;
        }
        this.writeManifest(bundleManifestLocation, this.generatedManifest, compatibilityManifest);
        return bundleManifestLocation;
    }

    private String getVersionRange(String reqVersion, String matchRule) {
        if (reqVersion == null) {
            return null;
        }
        Version minVersion = Version.parseVersion(reqVersion);
        String versionRange = matchRule != null ? (matchRule.equalsIgnoreCase("perfect") ? new VersionRange(minVersion, true, minVersion, true).toString() : (matchRule.equalsIgnoreCase("equivalent") ? new VersionRange(minVersion, true, new Version(minVersion.getMajor(), minVersion.getMinor() + 1, 0, ""), false).toString() : (matchRule.equalsIgnoreCase("compatible") ? new VersionRange(minVersion, true, new Version(minVersion.getMajor() + 1, 0, 0, ""), false).toString() : (matchRule.equalsIgnoreCase("greaterOrEqual") ? reqVersion : new VersionRange(minVersion, true, new Version(minVersion.getMajor() + 1, 0, 0, ""), false).toString())))) : new VersionRange(minVersion, true, new Version(minVersion.getMajor() + 1, 0, 0, ""), false).toString();
        StringBuffer result = new StringBuffer();
        result.append(';').append("bundle-version").append('=');
        result.append('\"').append(versionRange).append('\"');
        return result.toString();
    }
}

