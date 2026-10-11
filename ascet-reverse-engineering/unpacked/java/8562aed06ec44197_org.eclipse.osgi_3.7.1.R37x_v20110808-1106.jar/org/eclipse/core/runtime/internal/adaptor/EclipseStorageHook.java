/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Dictionary;
import java.util.Enumeration;
import org.eclipse.core.runtime.adaptor.LocationManager;
import org.eclipse.core.runtime.internal.adaptor.CachedManifest;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.core.runtime.internal.adaptor.PluginConverterImpl;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.HookConfigurator;
import org.eclipse.osgi.baseadaptor.HookRegistry;
import org.eclipse.osgi.baseadaptor.hooks.StorageHook;
import org.eclipse.osgi.framework.adaptor.FrameworkAdaptor;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.framework.util.Headers;
import org.eclipse.osgi.framework.util.KeyedElement;
import org.eclipse.osgi.internal.baseadaptor.AdaptorUtil;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.service.pluginconversion.PluginConversionException;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class EclipseStorageHook
implements StorageHook,
HookConfigurator {
    private static final String PROP_CHECK_CONFIG = "osgi.checkConfiguration";
    private static final String PROP_COMPATIBILITY_LAZYSTART = "osgi.compatibility.eagerStart.LazyActivation";
    private static final boolean COMPATIBILITY_LAZYSTART = Boolean.valueOf(FrameworkProperties.getProperty("osgi.compatibility.eagerStart.LazyActivation", "true"));
    private static final int STORAGE_VERION = 4;
    public static final String KEY;
    public static final int HASHCODE;
    private static final byte FLAG_LAZY_START = 1;
    private static final byte FLAG_HAS_PACKAGE_INFO = 2;
    private static final byte FLAG_HAS_LAZY_INCLUDE = 8;
    private long manifestTimeStamp = 0L;
    private byte manifestType = 0;
    private BaseData bundledata;
    private String pluginClass = null;
    private String[] lazyStartExcludes;
    private String[] lazyStartIncludes;
    private int bundleManfestVersion;
    private String buddyList;
    private String registeredBuddyList;
    private String serviceComponent;
    private byte flags = 0;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.runtime.internal.adaptor.EclipseStorageHook");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        KEY = clazz.getName();
        HASHCODE = KEY.hashCode();
    }

    @Override
    public int getStorageVersion() {
        return 4;
    }

    @Override
    public StorageHook create(BaseData data) throws BundleException {
        EclipseStorageHook storageHook = new EclipseStorageHook();
        storageHook.bundledata = data;
        return storageHook;
    }

    @Override
    public void initialize(Dictionary<String, String> manifest) throws BundleException {
        ManifestElement generatedFrom;
        String genFrom;
        String activationPolicy = manifest.get("Bundle-ActivationPolicy");
        if (activationPolicy != null) {
            this.parseActivationPolicy(this, activationPolicy);
        } else {
            String lazyStart = manifest.get("Eclipse-LazyStart");
            if (lazyStart == null) {
                lazyStart = manifest.get("Eclipse-AutoStart");
            }
            this.parseLazyStart(this, lazyStart);
        }
        try {
            String versionString = manifest.get("Bundle-ManifestVersion");
            this.bundleManfestVersion = versionString == null ? 0 : Integer.parseInt(versionString);
        }
        catch (NumberFormatException numberFormatException) {
            this.bundleManfestVersion = 0;
        }
        this.pluginClass = manifest.get("Plugin-Class");
        this.buddyList = manifest.get("Eclipse-BuddyPolicy");
        this.registeredBuddyList = manifest.get("Eclipse-RegisterBuddy");
        if (EclipseStorageHook.hasPackageInfo(this.bundledata.getEntry("META-INF/MANIFEST.MF"))) {
            this.flags = (byte)(this.flags | 2);
        }
        if ((genFrom = manifest.get("Generated-from")) != null && (generatedFrom = ManifestElement.parseHeader("Generated-from", genFrom)[0]) != null) {
            this.manifestTimeStamp = Long.parseLong(generatedFrom.getValue());
            this.manifestType = Byte.parseByte(generatedFrom.getAttribute("type"));
        }
        if (this.isAutoStartable()) {
            this.bundledata.setStatus(this.bundledata.getStatus() | 2);
            if (COMPATIBILITY_LAZYSTART) {
                this.bundledata.setStatus(this.bundledata.getStatus() | 1 | 4);
            }
        }
        this.serviceComponent = manifest.get("Service-Component");
    }

    @Override
    public StorageHook load(BaseData target, DataInputStream in) throws IOException {
        EclipseStorageHook storageHook = new EclipseStorageHook();
        storageHook.bundledata = target;
        storageHook.flags = in.readByte();
        int pkgCount = in.readInt();
        String[] packageList = pkgCount > 0 ? new String[pkgCount] : null;
        int i = 0;
        while (i < pkgCount) {
            packageList[i] = in.readUTF();
            ++i;
        }
        storageHook.lazyStartExcludes = packageList;
        if ((storageHook.flags & 8) != 0) {
            pkgCount = in.readInt();
            packageList = pkgCount > 0 ? new String[pkgCount] : null;
            i = 0;
            while (i < pkgCount) {
                packageList[i] = in.readUTF();
                ++i;
            }
            storageHook.lazyStartIncludes = packageList;
        }
        storageHook.buddyList = AdaptorUtil.readString(in, false);
        storageHook.registeredBuddyList = AdaptorUtil.readString(in, false);
        storageHook.pluginClass = AdaptorUtil.readString(in, false);
        storageHook.manifestTimeStamp = in.readLong();
        storageHook.manifestType = in.readByte();
        storageHook.bundleManfestVersion = in.readInt();
        if (storageHook.isAutoStartable()) {
            if ((target.getStatus() & 2) == 0) {
                target.setStatus(target.getStatus() | 2);
            }
            if (COMPATIBILITY_LAZYSTART && (target.getStatus() & 1) == 0) {
                target.setStatus(target.getStatus() | 1 | 4);
            }
        }
        storageHook.serviceComponent = AdaptorUtil.readString(in, false);
        return storageHook;
    }

    @Override
    public void save(DataOutputStream out) throws IOException {
        if (this.bundledata == null) {
            throw new IllegalStateException();
        }
        out.writeByte(this.flags);
        String[] excludes = this.getLazyStartExcludes();
        if (excludes == null) {
            out.writeInt(0);
        } else {
            out.writeInt(excludes.length);
            int i = 0;
            while (i < excludes.length) {
                out.writeUTF(excludes[i]);
                ++i;
            }
        }
        if ((this.flags & 8) != 0) {
            String[] includes = this.getLazyStartIncludes();
            if (includes == null) {
                out.writeInt(0);
            } else {
                out.writeInt(includes.length);
                int i = 0;
                while (i < includes.length) {
                    out.writeUTF(includes[i]);
                    ++i;
                }
            }
        }
        AdaptorUtil.writeStringOrNull(out, this.getBuddyList());
        AdaptorUtil.writeStringOrNull(out, this.getRegisteredBuddyList());
        AdaptorUtil.writeStringOrNull(out, this.getPluginClass());
        out.writeLong(this.getManifestTimeStamp());
        out.writeByte(this.getManifestType());
        out.writeInt(this.getBundleManifestVersion());
        AdaptorUtil.writeStringOrNull(out, this.serviceComponent);
    }

    @Override
    public int getKeyHashCode() {
        return HASHCODE;
    }

    @Override
    public boolean compare(KeyedElement other) {
        return other.getKey() == KEY;
    }

    @Override
    public Object getKey() {
        return KEY;
    }

    public boolean isLazyStart() {
        return (this.flags & 1) == 1;
    }

    public String[] getLazyStartExcludes() {
        return this.lazyStartExcludes;
    }

    public String[] getLazyStartIncludes() {
        return this.lazyStartIncludes;
    }

    public String getBuddyList() {
        return this.buddyList;
    }

    public boolean hasPackageInfo() {
        return (this.flags & 2) == 2;
    }

    public String getPluginClass() {
        return this.pluginClass;
    }

    public String getRegisteredBuddyList() {
        return this.registeredBuddyList;
    }

    public long getManifestTimeStamp() {
        return this.manifestTimeStamp;
    }

    public byte getManifestType() {
        return this.manifestType;
    }

    public int getBundleManifestVersion() {
        return this.bundleManfestVersion;
    }

    public String getServiceComponent() {
        return this.serviceComponent;
    }

    public boolean isAutoStartable() {
        return this.isLazyStart() || this.lazyStartExcludes != null && this.lazyStartExcludes.length > 0;
    }

    private void parseLazyStart(EclipseStorageHook storageHook, String headerValue) {
        storageHook.lazyStartExcludes = null;
        ManifestElement[] allElements = null;
        try {
            allElements = ManifestElement.parseHeader("Eclipse-LazyStart", headerValue);
        }
        catch (BundleException e) {
            String message = NLS.bind(EclipseAdaptorMsg.ECLIPSE_CLASSLOADER_CANNOT_GET_HEADERS, storageHook.bundledata.getLocation());
            this.bundledata.getAdaptor().getFrameworkLog().log(new FrameworkLogEntry("org.eclipse.osgi", 4, 0, message, 0, e, null));
        }
        if (allElements == null) {
            return;
        }
        if ("true".equalsIgnoreCase(allElements[0].getValue())) {
            storageHook.flags = (byte)(storageHook.flags | 1);
        }
        String[] exceptions = ManifestElement.getArrayFromList(allElements[0].getAttribute("exceptions"));
        storageHook.lazyStartExcludes = exceptions;
    }

    private void parseActivationPolicy(EclipseStorageHook storageHook, String headerValue) {
        storageHook.lazyStartExcludes = null;
        ManifestElement[] allElements = null;
        try {
            allElements = ManifestElement.parseHeader("Bundle-ActivationPolicy", headerValue);
        }
        catch (BundleException e) {
            String message = NLS.bind(EclipseAdaptorMsg.ECLIPSE_CLASSLOADER_CANNOT_GET_HEADERS, storageHook.bundledata.getLocation());
            this.bundledata.getAdaptor().getFrameworkLog().log(new FrameworkLogEntry("org.eclipse.osgi", 4, 0, message, 0, e, null));
        }
        if (allElements == null) {
            return;
        }
        if (!"lazy".equalsIgnoreCase(allElements[0].getValue())) {
            return;
        }
        storageHook.flags = (byte)(storageHook.flags | 1);
        storageHook.lazyStartExcludes = ManifestElement.getArrayFromList(allElements[0].getDirective("exclude"));
        storageHook.lazyStartIncludes = ManifestElement.getArrayFromList(allElements[0].getDirective("include"));
        if (storageHook.lazyStartIncludes != null) {
            storageHook.flags = (byte)(storageHook.flags | 8);
        }
    }

    /*
     * Exception decompiling
     */
    private static boolean hasPackageInfo(URL url) {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [0[TRYBLOCK]], but top level block is 8[CASE]
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    @Override
    public void addHooks(HookRegistry hookRegistry) {
        hookRegistry.addStorageHook(this);
    }

    private void checkTimeStamp() throws IllegalArgumentException {
        if (!this.checkManifestTimeStamp()) {
            throw new IllegalArgumentException();
        }
    }

    private boolean checkManifestTimeStamp() {
        if (!"true".equalsIgnoreCase(FrameworkProperties.getProperty(PROP_CHECK_CONFIG))) {
            return true;
        }
        if (PluginConverterImpl.getTimeStamp(this.bundledata.getBundleFile().getBaseFile(), this.getManifestType()) == this.getManifestTimeStamp()) {
            if ((this.getManifestType() & 9) != 0) {
                return true;
            }
            String cacheLocation = FrameworkProperties.getProperty("osgi.manifest.cache");
            Location parentConfiguration = LocationManager.getConfigurationLocation().getParentLocation();
            if (parentConfiguration != null) {
                try {
                    return this.checkManifestAndParent(cacheLocation, this.bundledata.getSymbolicName(), this.bundledata.getVersion().toString(), this.getManifestType()) != null;
                }
                catch (BundleException bundleException) {
                    return false;
                }
            }
            File cacheFile = new File(cacheLocation, new StringBuffer(String.valueOf(this.bundledata.getSymbolicName())).append('_').append(this.bundledata.getVersion()).append(".MF").toString());
            if (cacheFile.isFile()) {
                return true;
            }
        }
        return false;
    }

    private Headers<String, String> checkManifestAndParent(String cacheLocation, String symbolicName, String version, byte inputType) throws BundleException {
        Headers<String, String> result = this.basicCheckManifest(cacheLocation, symbolicName, version, inputType);
        if (result != null) {
            return result;
        }
        Location parentConfiguration = null;
        parentConfiguration = LocationManager.getConfigurationLocation().getParentLocation();
        if (parentConfiguration != null) {
            result = this.basicCheckManifest(new File(parentConfiguration.getURL().getFile(), "org.eclipse.osgi/manifests").toString(), symbolicName, version, inputType);
        }
        return result;
    }

    private Headers<String, String> basicCheckManifest(String cacheLocation, String symbolicName, String version, byte inputType) throws BundleException {
        File currentFile = new File(cacheLocation, new StringBuffer(String.valueOf(symbolicName)).append('_').append(version).append(".MF").toString());
        if (PluginConverterImpl.upToDate(currentFile, this.bundledata.getBundleFile().getBaseFile(), inputType)) {
            try {
                return Headers.parseManifest(new FileInputStream(currentFile));
            }
            catch (FileNotFoundException fileNotFoundException) {}
        }
        return null;
    }

    Dictionary<String, String> createCachedManifest(boolean firstTime) throws BundleException {
        return firstTime ? this.getGeneratedManifest() : new CachedManifest(this);
    }

    public Dictionary<String, String> getGeneratedManifest() throws BundleException {
        if (System.getSecurityManager() == null) {
            return this.getGeneratedManifest0();
        }
        try {
            return AccessController.doPrivileged(new PrivilegedExceptionAction<Dictionary<String, String>>(){

                @Override
                public Dictionary<String, String> run() throws BundleException {
                    return EclipseStorageHook.this.getGeneratedManifest0();
                }
            });
        }
        catch (PrivilegedActionException e) {
            throw (BundleException)e.getException();
        }
    }

    final Dictionary<String, String> getGeneratedManifest0() throws BundleException {
        Dictionary<String, String> builtIn = AdaptorUtil.loadManifestFrom(this.bundledata);
        if (builtIn != null) {
            Dictionary<String, String> generatedManifest;
            if (!this.isComplete(builtIn) && (generatedManifest = this.generateManifest(builtIn)) != null) {
                return generatedManifest;
            }
            this.manifestType = 1;
            File baseFile = this.bundledata.getBundleFile().getBaseFile();
            if (baseFile != null && this.bundledata.getBundleFile().getBaseFile().isFile()) {
                this.manifestTimeStamp = this.bundledata.getBundleFile().getBaseFile().lastModified();
                this.manifestType = (byte)(this.manifestType | 8);
            } else {
                this.manifestTimeStamp = this.bundledata.getBundleFile().getEntry("META-INF/MANIFEST.MF").getTime();
            }
            return builtIn;
        }
        Dictionary<String, String> result = this.generateManifest(null);
        if (result == null) {
            throw new BundleException(NLS.bind(EclipseAdaptorMsg.ECLIPSE_DATA_MANIFEST_NOT_FOUND, this.bundledata.getLocation()));
        }
        return result;
    }

    private Dictionary<String, String> generateManifest(Dictionary<String, String> builtIn) throws BundleException {
        Dictionary<String, String> generatedManifest;
        Headers<String, String> existingHeaders;
        String cacheLocation = FrameworkProperties.getProperty("osgi.manifest.cache");
        if (this.bundledata.getSymbolicName() != null && (existingHeaders = this.checkManifestAndParent(cacheLocation, this.bundledata.getSymbolicName(), this.bundledata.getVersion().toString(), this.manifestType)) != null) {
            return existingHeaders;
        }
        PluginConverterImpl converter = PluginConverterImpl.getDefault();
        if (converter == null) {
            converter = new PluginConverterImpl(this.bundledata.getAdaptor(), this.bundledata.getAdaptor().getContext());
        }
        try {
            generatedManifest = converter.convertManifest(this.bundledata.getBundleFile().getBaseFile(), true, null, true, null);
        }
        catch (PluginConversionException pce) {
            String message = NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONVERTER_ERROR_CONVERTING, this.bundledata.getBundleFile().getBaseFile());
            throw new BundleException(message, 3, pce);
        }
        Version version = Version.parseVersion(generatedManifest.get("Bundle-Version"));
        String symbolicName = ManifestElement.parseHeader("Bundle-SymbolicName", generatedManifest.get("Bundle-SymbolicName"))[0].getValue();
        ManifestElement generatedFrom = ManifestElement.parseHeader("Generated-from", generatedManifest.get("Generated-from"))[0];
        Headers<String, String> existingHeaders2 = this.checkManifestAndParent(cacheLocation, symbolicName, version.toString(), Byte.parseByte(generatedFrom.getAttribute("type")));
        this.manifestTimeStamp = Long.parseLong(generatedFrom.getValue());
        this.manifestType = Byte.parseByte(generatedFrom.getAttribute("type"));
        if (this.bundledata.getAdaptor().isReadOnly() || existingHeaders2 != null) {
            return existingHeaders2;
        }
        if (builtIn != null) {
            Enumeration<String> keysEnum = builtIn.keys();
            while (keysEnum.hasMoreElements()) {
                String key = keysEnum.nextElement();
                generatedManifest.put(key, builtIn.get(key));
            }
        }
        File bundleManifestLocation = new File(cacheLocation, new StringBuffer(String.valueOf(symbolicName)).append('_').append(version.toString()).append(".MF").toString());
        try {
            converter.writeManifest(bundleManifestLocation, generatedManifest, true);
        }
        catch (Exception exception) {}
        return generatedManifest;
    }

    private boolean isComplete(Dictionary<String, String> manifest) {
        if (manifest.get("Bundle-SymbolicName") != null) {
            return true;
        }
        return this.bundledata.getEntry("plugin.xml") == null && this.bundledata.getEntry("fragment.xml") == null;
    }

    public BaseData getBaseData() {
        return this.bundledata;
    }

    @Override
    public void copy(StorageHook storageHook) {
    }

    @Override
    public void validate() throws IllegalArgumentException {
        this.checkTimeStamp();
    }

    public FrameworkAdaptor getAdaptor() {
        if (this.bundledata != null) {
            return this.bundledata.getAdaptor();
        }
        return null;
    }

    @Override
    public Dictionary<String, String> getManifest(boolean firstLoad) throws BundleException {
        return this.createCachedManifest(firstLoad);
    }

    @Override
    public boolean forgetStatusChange(int status) {
        return false;
    }

    @Override
    public boolean forgetStartLevelChange(int startlevel) {
        return false;
    }
}

