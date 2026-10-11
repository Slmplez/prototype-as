/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.URLUtil
 *  org.eclipse.equinox.p2.metadata.IVersionedId
 *  org.eclipse.equinox.p2.metadata.VersionedId
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.publisher.eclipse;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.p2.core.helpers.URLUtil;
import org.eclipse.equinox.internal.p2.publisher.eclipse.IProductDescriptor;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.VersionedId;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.publishing.Activator;
import org.eclipse.pde.internal.publishing.Messages;
import org.osgi.framework.BundleContext;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProductFile
extends DefaultHandler
implements IProductDescriptor {
    public static final String GENERIC_VERSION_NUMBER = "0.0.0";
    private static final String ATTRIBUTE_PATH = "path";
    private static final String ATTRIBUTE_ICON = "icon";
    protected static final String ATTRIBUTE_FRAGMENT = "fragment";
    private static final String ATTRIBUTE_APPLICATION = "application";
    private static final String ATTRIBUTE_INCLUDE_LAUNCHERS = "includeLaunchers";
    private static final String ATTRIBUTE_NAME = "name";
    private static final String ATTRIBUTE_VALUE = "value";
    private static final String ATTRIBUTE_LOCATION = "location";
    private static final String ATTRIBUTE_AUTO_START = "autoStart";
    private static final String ATTRIBUTE_START_LEVEL = "startLevel";
    protected static final String ATTRIBUTE_VERSION = "version";
    protected static final String ATTRIBUTE_ID = "id";
    private static final String ATTRIBUTE_UID = "uid";
    private static final String PROPERTY_ECLIPSE_APPLICATION = "eclipse.application";
    private static final String PROPERTY_ECLIPSE_PRODUCT = "eclipse.product";
    private static final SAXParserFactory parserFactory = SAXParserFactory.newInstance();
    private static final String PROGRAM_ARGS = "programArgs";
    private static final String PROGRAM_ARGS_LINUX = "programArgsLin";
    private static final String PROGRAM_ARGS_MAC = "programArgsMac";
    private static final String PROGRAM_ARGS_SOLARIS = "programArgsSol";
    private static final String PROGRAM_ARGS_WIN = "programArgsWin";
    private static final String VM_ARGS = "vmArgs";
    private static final String VM_ARGS_LINUX = "vmArgsLin";
    private static final String VM_ARGS_MAC = "vmArgsMac";
    private static final String VM_ARGS_SOLARIS = "vmArgsSol";
    private static final String VM_ARGS_WIN = "vmArgsWin";
    private static final String SOLARIS_LARGE = "solarisLarge";
    private static final String SOLARIS_MEDIUM = "solarisMedium";
    private static final String SOLARIS_SMALL = "solarisSmall";
    private static final String SOLARIS_TINY = "solarisTiny";
    private static final String WIN32_16_LOW = "winSmallLow";
    private static final String WIN32_16_HIGH = "winSmallHigh";
    private static final String WIN32_24_LOW = "win24Low";
    private static final String WIN32_32_LOW = "winMediumLow";
    private static final String WIN32_32_HIGH = "winMediumHigh";
    private static final String WIN32_48_LOW = "winLargeLow";
    private static final String WIN32_48_HIGH = "winLargeHigh";
    private static final String OS_WIN32 = "win32";
    private static final String OS_LINUX = "linux";
    private static final String OS_SOLARIS = "solaris";
    private static final String OS_MACOSX = "macosx";
    private static final String EL_FEATURES = "features";
    private static final String EL_FEATURE = "feature";
    private static final String EL_PLUGINS = "plugins";
    private static final String EL_PLUGIN = "plugin";
    private static final String EL_PRODUCT = "product";
    private static final String EL_PROPERTY = "property";
    private static final String EL_CONFIG_INI = "configIni";
    private static final String EL_LAUNCHER = "launcher";
    private static final String EL_LAUNCHER_ARGS = "launcherArgs";
    private static final String EL_SPLASH = "splash";
    private static final String EL_CONFIGURATIONS = "configurations";
    private static final String EL_LICENSE = "license";
    private static final String EL_URL = "url";
    private static final String EL_TEXT = "text";
    private static final int STATE_START = 0;
    private static final int STATE_PRODUCT = 1;
    private static final int STATE_LAUNCHER = 2;
    private static final int STATE_LAUNCHER_ARGS = 3;
    private static final int STATE_PLUGINS = 4;
    private static final int STATE_FEATURES = 5;
    private static final int STATE_PROGRAM_ARGS = 6;
    private static final int STATE_PROGRAM_ARGS_LINUX = 7;
    private static final int STATE_PROGRAM_ARGS_MAC = 8;
    private static final int STATE_PROGRAM_ARGS_SOLARIS = 9;
    private static final int STATE_PROGRAM_ARGS_WIN = 10;
    private static final int STATE_VM_ARGS = 11;
    private static final int STATE_VM_ARGS_LINUX = 12;
    private static final int STATE_VM_ARGS_MAC = 13;
    private static final int STATE_VM_ARGS_SOLARIS = 14;
    private static final int STATE_VM_ARGS_WIN = 15;
    private static final int STATE_CONFIG_INI = 16;
    private static final int STATE_CONFIGURATIONS = 17;
    private static final int STATE_LICENSE = 18;
    private static final int STATE_LICENSE_URL = 19;
    private static final int STATE_LICENSE_TEXT = 20;
    private static final String PI_PDEBUILD = "org.eclipse.pde.build";
    private static final int EXCEPTION_PRODUCT_FORMAT = 23;
    private static final int EXCEPTION_PRODUCT_FILE = 24;
    private int state = 0;
    private SAXParser parser;
    private String launcherName = null;
    private final Map<String, Collection<String>> icons = new HashMap<String, Collection<String>>(6);
    private String configPath = null;
    private final Map<String, String> platformSpecificConfigPaths = new HashMap<String, String>();
    private String configPlatform = null;
    private String platformConfigPath = null;
    private String id = null;
    private String uid = null;
    private boolean useFeatures = false;
    protected List<FeatureEntry> plugins = new ArrayList<FeatureEntry>();
    protected List<FeatureEntry> fragments = new ArrayList<FeatureEntry>();
    private final List<FeatureEntry> features = new ArrayList<FeatureEntry>();
    private String splashLocation = null;
    private String productName = null;
    private String application = null;
    private String version = null;
    private Properties launcherArgs = new Properties();
    private final File location;
    private List<BundleInfo> bundleInfos;
    private Map<String, String> properties;
    private boolean includeLaunchers = true;
    private String licenseURL;
    private String licenseText = null;
    private String currentOS;
    static /* synthetic */ Class class$0;

    private static String normalize(String text) {
        if (text == null || text.trim().length() == 0) {
            return "";
        }
        StringBuffer result = new StringBuffer(text.length());
        boolean haveSpace = false;
        int i = 0;
        while (i < text.length()) {
            char c = text.charAt(i);
            if (Character.isWhitespace(c)) {
                if (!haveSpace) {
                    haveSpace = true;
                    result.append(" ");
                }
            } else {
                haveSpace = false;
                result.append(c);
            }
            ++i;
        }
        return result.toString();
    }

    public ProductFile(String location, String os) throws CoreException {
        this.currentOS = os;
        this.location = new File(location);
        try {
            parserFactory.setNamespaceAware(true);
            this.parser = parserFactory.newSAXParser();
            BufferedInputStream in = new BufferedInputStream(new FileInputStream(location));
            try {
                this.parser.parse(new InputSource(in), (DefaultHandler)this);
            }
            catch (Throwable throwable) {
                try {
                    ((InputStream)in).close();
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                ((InputStream)in).close();
            }
            catch (IOException iOException) {}
        }
        catch (ParserConfigurationException e) {
            throw new CoreException((IStatus)new Status(4, PI_PDEBUILD, 23, NLS.bind((String)Messages.exception_productParse, (Object)location), (Throwable)e));
        }
        catch (SAXException e) {
            throw new CoreException((IStatus)new Status(4, PI_PDEBUILD, 23, NLS.bind((String)Messages.exception_productParse, (Object)location), (Throwable)e));
        }
        catch (FileNotFoundException fileNotFoundException) {
            throw new CoreException((IStatus)new Status(4, PI_PDEBUILD, 24, NLS.bind((String)Messages.exception_missingElement, (Object)location), null));
        }
        catch (IOException e) {
            throw new CoreException((IStatus)new Status(4, PI_PDEBUILD, 23, NLS.bind((String)Messages.exception_productParse, (Object)location), (Throwable)e));
        }
    }

    public ProductFile(String location) throws Exception {
        this.location = new File(location);
        parserFactory.setNamespaceAware(true);
        this.parser = parserFactory.newSAXParser();
        BufferedInputStream in = new BufferedInputStream(new FileInputStream(location));
        try {
            this.parser.parse(new InputSource(in), (DefaultHandler)this);
        }
        finally {
            ((InputStream)in).close();
        }
        this.parser = null;
    }

    @Override
    public String getLauncherName() {
        return this.launcherName;
    }

    @Override
    public File getLocation() {
        return this.location;
    }

    @Override
    public Map<String, String> getConfigurationProperties() {
        HashMap<String, String> result;
        HashMap<String, String> hashMap = result = this.properties != null ? this.properties : new HashMap<String, String>();
        if (this.application != null && !result.containsKey(PROPERTY_ECLIPSE_APPLICATION)) {
            result.put(PROPERTY_ECLIPSE_APPLICATION, this.application);
        }
        if (this.id != null && !result.containsKey(PROPERTY_ECLIPSE_PRODUCT)) {
            result.put(PROPERTY_ECLIPSE_PRODUCT, this.id);
        }
        return result;
    }

    @Override
    public List<IVersionedId> getBundles(boolean includeFragments) {
        LinkedList<IVersionedId> result = new LinkedList<IVersionedId>();
        for (FeatureEntry plugin : this.plugins) {
            result.add((IVersionedId)new VersionedId(plugin.getId(), plugin.getVersion()));
        }
        if (includeFragments) {
            for (FeatureEntry fragment : this.fragments) {
                result.add((IVersionedId)new VersionedId(fragment.getId(), fragment.getVersion()));
            }
        }
        return result;
    }

    private List<FeatureEntry> getBundleEntries(boolean includeFragments) {
        LinkedList<FeatureEntry> result = new LinkedList<FeatureEntry>();
        result.addAll(this.plugins);
        if (includeFragments) {
            result.addAll(this.fragments);
        }
        return result;
    }

    @Override
    public List<BundleInfo> getBundleInfos() {
        return this.bundleInfos != null ? this.bundleInfos : CollectionUtils.emptyList();
    }

    @Override
    public List<IVersionedId> getFragments() {
        LinkedList<IVersionedId> result = new LinkedList<IVersionedId>();
        for (FeatureEntry fragment : this.fragments) {
            result.add((IVersionedId)new VersionedId(fragment.getId(), fragment.getVersion()));
        }
        return result;
    }

    @Override
    public List<IVersionedId> getFeatures() {
        LinkedList<IVersionedId> result = new LinkedList<IVersionedId>();
        for (FeatureEntry feature : this.features) {
            result.add((IVersionedId)new VersionedId(feature.getId(), feature.getVersion()));
        }
        return result;
    }

    public List<FeatureEntry> getProductEntries() {
        if (this.useFeatures()) {
            return this.features;
        }
        return this.getBundleEntries(true);
    }

    public boolean containsPlugin(String plugin) {
        return this.getBundles(true).contains(plugin);
    }

    public String[] getIcons() {
        return this.getIcons(this.currentOS);
    }

    @Override
    public String[] getIcons(String os) {
        Collection<String> result = this.icons.get(os);
        if (result == null) {
            return new String[0];
        }
        return result.toArray(new String[result.size()]);
    }

    @Override
    public String getConfigIniPath(String os) {
        String specific = this.platformSpecificConfigPaths.get(os);
        return specific == null ? this.configPath : specific;
    }

    public String getConfigIniPath() {
        return this.configPath;
    }

    public boolean haveCustomConfig() {
        return this.configPath != null || this.platformSpecificConfigPaths.size() > 0;
    }

    @Override
    public String getId() {
        if (this.uid != null) {
            return this.uid;
        }
        return this.id;
    }

    @Override
    public String getProductId() {
        return this.id;
    }

    @Override
    public String getSplashLocation() {
        return this.splashLocation;
    }

    @Override
    public String getProductName() {
        return this.productName;
    }

    @Override
    public String getApplication() {
        return this.application;
    }

    @Override
    public boolean useFeatures() {
        return this.useFeatures;
    }

    @Override
    public String getVersion() {
        return this.version == null || this.version.length() == 0 ? GENERIC_VERSION_NUMBER : this.version;
    }

    @Override
    public boolean includeLaunchers() {
        return this.includeLaunchers;
    }

    public Map<String, BundleInfo> getConfigurationInfo() {
        HashMap<String, BundleInfo> result = new HashMap<String, BundleInfo>();
        for (BundleInfo info : this.getBundleInfos()) {
            result.put(info.getSymbolicName(), info);
        }
        return result;
    }

    public Properties getConfigProperties() {
        Properties props = new Properties();
        for (Map.Entry<String, String> property : this.getConfigurationProperties().entrySet()) {
            props.setProperty(property.getKey(), property.getValue());
        }
        return props;
    }

    @Override
    public String getVMArguments(String os) {
        os = os == null ? "" : os;
        String key = null;
        if (os.equals(OS_WIN32)) {
            key = VM_ARGS_WIN;
        } else if (os.equals(OS_LINUX)) {
            key = VM_ARGS_LINUX;
        } else if (os.equals(OS_MACOSX)) {
            key = VM_ARGS_MAC;
        } else if (os.equals(OS_SOLARIS)) {
            key = VM_ARGS_SOLARIS;
        }
        String prefix = this.launcherArgs.getProperty(VM_ARGS);
        String platform = null;
        String args = null;
        if (key != null) {
            platform = this.launcherArgs.getProperty(key);
        }
        args = prefix != null ? (platform != null ? new StringBuffer(String.valueOf(prefix)).append(" ").append(platform).toString() : prefix) : (platform != null ? platform : "");
        return ProductFile.normalize(args);
    }

    @Override
    public String getProgramArguments(String os) {
        os = os == null ? "" : os;
        String key = null;
        if (os.equals(OS_WIN32)) {
            key = PROGRAM_ARGS_WIN;
        } else if (os.equals(OS_LINUX)) {
            key = PROGRAM_ARGS_LINUX;
        } else if (os.equals(OS_MACOSX)) {
            key = PROGRAM_ARGS_MAC;
        } else if (os.equals(OS_SOLARIS)) {
            key = PROGRAM_ARGS_SOLARIS;
        }
        String prefix = this.launcherArgs.getProperty(PROGRAM_ARGS);
        String platform = null;
        String args = null;
        if (key != null) {
            platform = this.launcherArgs.getProperty(key);
        }
        args = prefix != null ? (platform != null ? new StringBuffer(String.valueOf(prefix)).append(" ").append(platform).toString() : prefix) : (platform != null ? platform : "");
        return ProductFile.normalize(args);
    }

    @Override
    public String getLicenseText() {
        return this.licenseText;
    }

    @Override
    public String getLicenseURL() {
        return this.licenseURL;
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) {
        switch (this.state) {
            case 0: {
                if (!EL_PRODUCT.equals(localName)) break;
                this.processProduct(attributes);
                this.state = 1;
                break;
            }
            case 1: {
                if (EL_CONFIG_INI.equals(localName)) {
                    this.processConfigIni(attributes);
                    this.state = 16;
                    break;
                }
                if (EL_LAUNCHER.equals(localName)) {
                    this.processLauncher(attributes);
                    this.state = 2;
                    break;
                }
                if (EL_PLUGINS.equals(localName)) {
                    this.state = 4;
                    break;
                }
                if (EL_FEATURES.equals(localName)) {
                    this.state = 5;
                    break;
                }
                if (EL_LAUNCHER_ARGS.equals(localName)) {
                    this.state = 3;
                    break;
                }
                if (EL_SPLASH.equals(localName)) {
                    this.splashLocation = attributes.getValue(ATTRIBUTE_LOCATION);
                    break;
                }
                if (EL_CONFIGURATIONS.equals(localName)) {
                    this.state = 17;
                    break;
                }
                if (!EL_LICENSE.equals(localName)) break;
                this.state = 18;
                break;
            }
            case 16: {
                this.processConfigIniPlatform(localName, true);
                break;
            }
            case 2: {
                if (OS_SOLARIS.equals(localName)) {
                    this.processSolaris(attributes);
                } else if ("win".equals(localName)) {
                    this.processWin(attributes);
                } else if (OS_LINUX.equals(localName)) {
                    this.processLinux(attributes);
                } else if (OS_MACOSX.equals(localName)) {
                    this.processMac(attributes);
                }
                if ("ico".equals(localName)) {
                    this.processIco(attributes);
                    break;
                }
                if (!"bmp".equals(localName)) break;
                this.processBmp(attributes);
                break;
            }
            case 3: {
                if (PROGRAM_ARGS.equals(localName)) {
                    this.state = 6;
                    break;
                }
                if (PROGRAM_ARGS_LINUX.equals(localName)) {
                    this.state = 7;
                    break;
                }
                if (PROGRAM_ARGS_MAC.equals(localName)) {
                    this.state = 8;
                    break;
                }
                if (PROGRAM_ARGS_SOLARIS.equals(localName)) {
                    this.state = 9;
                    break;
                }
                if (PROGRAM_ARGS_WIN.equals(localName)) {
                    this.state = 10;
                    break;
                }
                if (VM_ARGS.equals(localName)) {
                    this.state = 11;
                    break;
                }
                if (VM_ARGS_LINUX.equals(localName)) {
                    this.state = 12;
                    break;
                }
                if (VM_ARGS_MAC.equals(localName)) {
                    this.state = 13;
                    break;
                }
                if (VM_ARGS_SOLARIS.equals(localName)) {
                    this.state = 14;
                    break;
                }
                if (!VM_ARGS_WIN.equals(localName)) break;
                this.state = 15;
                break;
            }
            case 4: {
                if (!EL_PLUGIN.equals(localName)) break;
                this.processPlugin(attributes);
                break;
            }
            case 18: {
                if (EL_URL.equals(localName)) {
                    this.state = 19;
                    break;
                }
                if (!EL_TEXT.equals(localName)) break;
                this.licenseText = "";
                this.state = 20;
                break;
            }
            case 5: {
                if (!EL_FEATURE.equals(localName)) break;
                this.processFeature(attributes);
                break;
            }
            case 17: {
                if (EL_PLUGIN.equals(localName)) {
                    this.processPluginConfiguration(attributes);
                    break;
                }
                if (!EL_PROPERTY.equals(localName)) break;
                this.processPropertyConfiguration(attributes);
            }
        }
    }

    private void processPropertyConfiguration(Attributes attributes) {
        String name = attributes.getValue(ATTRIBUTE_NAME);
        String value = attributes.getValue(ATTRIBUTE_VALUE);
        if (name == null) {
            return;
        }
        if (value == null) {
            value = "";
        }
        if (this.properties == null) {
            this.properties = new HashMap<String, String>();
        }
        this.properties.put(name, value);
    }

    private void processPluginConfiguration(Attributes attributes) {
        int startLevel;
        BundleInfo info = new BundleInfo();
        info.setSymbolicName(attributes.getValue(ATTRIBUTE_ID));
        info.setVersion(attributes.getValue(ATTRIBUTE_VERSION));
        String value = attributes.getValue(ATTRIBUTE_START_LEVEL);
        if (value != null && (startLevel = Integer.parseInt(value)) > 0) {
            info.setStartLevel(startLevel);
        }
        if ((value = attributes.getValue(ATTRIBUTE_AUTO_START)) != null) {
            info.setMarkedAsStarted(Boolean.valueOf(value).booleanValue());
        }
        if (this.bundleInfos == null) {
            this.bundleInfos = new ArrayList<BundleInfo>();
        }
        this.bundleInfos.add(info);
    }

    @Override
    public void endElement(String uri, String localName, String qName) {
        switch (this.state) {
            case 4: {
                if (!EL_PLUGINS.equals(localName)) break;
                this.state = 1;
                break;
            }
            case 5: {
                if (!EL_FEATURES.equals(localName)) break;
                this.state = 1;
                break;
            }
            case 3: {
                if (!EL_LAUNCHER_ARGS.equals(localName)) break;
                this.state = 1;
                break;
            }
            case 2: {
                if (!EL_LAUNCHER.equals(localName)) break;
                this.state = 1;
                break;
            }
            case 17: {
                if (!EL_CONFIGURATIONS.equals(localName)) break;
                this.state = 1;
                break;
            }
            case 18: {
                if (!EL_LICENSE.equals(localName)) break;
                this.state = 1;
                break;
            }
            case 6: 
            case 7: 
            case 8: 
            case 9: 
            case 10: 
            case 11: 
            case 12: 
            case 13: 
            case 14: 
            case 15: {
                this.state = 3;
                break;
            }
            case 19: 
            case 20: {
                this.state = 18;
                break;
            }
            case 16: {
                if (EL_CONFIG_INI.equals(localName)) {
                    this.state = 1;
                    break;
                }
                this.processConfigIniPlatform(localName, false);
            }
        }
    }

    @Override
    public void characters(char[] ch, int start, int length) {
        switch (this.state) {
            case 6: {
                this.addLaunchArgumentToMap(PROGRAM_ARGS, String.valueOf(ch, start, length));
                break;
            }
            case 7: {
                this.addLaunchArgumentToMap(PROGRAM_ARGS_LINUX, String.valueOf(ch, start, length));
                break;
            }
            case 8: {
                this.addLaunchArgumentToMap(PROGRAM_ARGS_MAC, String.valueOf(ch, start, length));
                break;
            }
            case 9: {
                this.addLaunchArgumentToMap(PROGRAM_ARGS_SOLARIS, String.valueOf(ch, start, length));
                break;
            }
            case 10: {
                this.addLaunchArgumentToMap(PROGRAM_ARGS_WIN, String.valueOf(ch, start, length));
                break;
            }
            case 11: {
                this.addLaunchArgumentToMap(VM_ARGS, String.valueOf(ch, start, length));
                break;
            }
            case 12: {
                this.addLaunchArgumentToMap(VM_ARGS_LINUX, String.valueOf(ch, start, length));
                break;
            }
            case 13: {
                this.addLaunchArgumentToMap(VM_ARGS_MAC, String.valueOf(ch, start, length));
                break;
            }
            case 14: {
                this.addLaunchArgumentToMap(VM_ARGS_SOLARIS, String.valueOf(ch, start, length));
                break;
            }
            case 15: {
                this.addLaunchArgumentToMap(VM_ARGS_WIN, String.valueOf(ch, start, length));
                break;
            }
            case 16: {
                if (this.platformConfigPath == null) break;
                this.platformConfigPath = new StringBuffer(String.valueOf(this.platformConfigPath)).append(String.valueOf(ch, start, length)).toString();
                break;
            }
            case 19: {
                this.licenseURL = String.valueOf(ch, start, length);
                break;
            }
            case 20: {
                if (this.licenseText == null) break;
                this.licenseText = new StringBuffer(String.valueOf(this.licenseText)).append(String.valueOf(ch, start, length)).toString();
            }
        }
    }

    private void addLaunchArgumentToMap(String key, String value) {
        String oldValue;
        if (this.launcherArgs == null) {
            this.launcherArgs = new Properties();
        }
        if ((oldValue = this.launcherArgs.getProperty(key)) != null) {
            this.launcherArgs.setProperty(key, new StringBuffer(String.valueOf(oldValue)).append(value).toString());
        } else {
            this.launcherArgs.setProperty(key, value);
        }
    }

    protected void processPlugin(Attributes attributes) {
        String fragment = attributes.getValue(ATTRIBUTE_FRAGMENT);
        String pluginId = attributes.getValue(ATTRIBUTE_ID);
        String pluginVersion = attributes.getValue(ATTRIBUTE_VERSION);
        FeatureEntry entry = new FeatureEntry(pluginId, pluginVersion != null ? pluginVersion : GENERIC_VERSION_NUMBER, true);
        entry.setFragment(Boolean.valueOf(fragment));
        if (fragment != null && new Boolean(fragment).booleanValue()) {
            this.fragments.add(entry);
        } else {
            this.plugins.add(entry);
        }
    }

    private void processFeature(Attributes attributes) {
        String featureId = attributes.getValue(ATTRIBUTE_ID);
        String featureVersion = attributes.getValue(ATTRIBUTE_VERSION);
        FeatureEntry featureEntry = new FeatureEntry(featureId, featureVersion != null ? featureVersion : GENERIC_VERSION_NUMBER, false);
        this.features.add(featureEntry);
    }

    private void processProduct(Attributes attributes) {
        String use;
        this.id = attributes.getValue(ATTRIBUTE_ID);
        this.uid = attributes.getValue(ATTRIBUTE_UID);
        this.productName = attributes.getValue(ATTRIBUTE_NAME);
        this.application = attributes.getValue(ATTRIBUTE_APPLICATION);
        if (attributes.getIndex(ATTRIBUTE_INCLUDE_LAUNCHERS) >= 0) {
            this.includeLaunchers = Boolean.valueOf(attributes.getValue(ATTRIBUTE_INCLUDE_LAUNCHERS));
        }
        if ((use = attributes.getValue("useFeatures")) != null) {
            this.useFeatures = Boolean.valueOf(use);
        }
        this.version = attributes.getValue(ATTRIBUTE_VERSION);
    }

    private void processConfigIni(Attributes attributes) {
        String os;
        String path = null;
        if ("custom".equals(attributes.getValue("use"))) {
            path = attributes.getValue(ATTRIBUTE_PATH);
        }
        if ((os = attributes.getValue("os")) != null && os.length() > 0) {
            if (path != null) {
                this.platformSpecificConfigPaths.put(os, path);
            }
        } else if (path != null) {
            this.configPath = path;
        }
    }

    private void processConfigIniPlatform(String key, boolean begin) {
        if (begin) {
            this.configPlatform = key;
            this.platformConfigPath = "";
        } else if (this.configPlatform.equals(key) && this.platformConfigPath.length() > 0) {
            this.platformSpecificConfigPaths.put(key, this.platformConfigPath);
            this.platformConfigPath = null;
        }
    }

    private void processLauncher(Attributes attributes) {
        this.launcherName = attributes.getValue(ATTRIBUTE_NAME);
    }

    private void addIcon(String os, String value) {
        Collection<String> list;
        if (value == null) {
            return;
        }
        File iconFile = new File(value);
        if (!iconFile.isFile()) {
            File workspace;
            Location instanceLocation;
            BundleContext bundleContext = Activator.getContext();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((instanceLocation = (Location)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName(), (String)Location.INSTANCE_FILTER)) != null && instanceLocation.getURL() != null && (workspace = URLUtil.toFile((URL)instanceLocation.getURL())) != null) {
                iconFile = new File(workspace, value);
            }
        }
        if (!iconFile.isFile()) {
            iconFile = new File(this.location.getParentFile(), value);
        }
        if ((list = this.icons.get(os)) == null) {
            list = new ArrayList<String>(6);
            this.icons.put(os, list);
        }
        list.add(iconFile.getAbsolutePath());
    }

    private void processSolaris(Attributes attributes) {
        this.addIcon(OS_SOLARIS, attributes.getValue(SOLARIS_LARGE));
        this.addIcon(OS_SOLARIS, attributes.getValue(SOLARIS_MEDIUM));
        this.addIcon(OS_SOLARIS, attributes.getValue(SOLARIS_SMALL));
        this.addIcon(OS_SOLARIS, attributes.getValue(SOLARIS_TINY));
    }

    private void processWin(Attributes attributes) {
    }

    private void processIco(Attributes attributes) {
        this.addIcon(OS_WIN32, attributes.getValue(ATTRIBUTE_PATH));
    }

    private void processBmp(Attributes attributes) {
        this.addIcon(OS_WIN32, attributes.getValue(WIN32_16_HIGH));
        this.addIcon(OS_WIN32, attributes.getValue(WIN32_16_LOW));
        this.addIcon(OS_WIN32, attributes.getValue(WIN32_24_LOW));
        this.addIcon(OS_WIN32, attributes.getValue(WIN32_32_HIGH));
        this.addIcon(OS_WIN32, attributes.getValue(WIN32_32_LOW));
        this.addIcon(OS_WIN32, attributes.getValue(WIN32_48_HIGH));
        this.addIcon(OS_WIN32, attributes.getValue(WIN32_48_LOW));
    }

    private void processLinux(Attributes attributes) {
        this.addIcon(OS_LINUX, attributes.getValue(ATTRIBUTE_ICON));
    }

    private void processMac(Attributes attributes) {
        this.addIcon(OS_MACOSX, attributes.getValue(ATTRIBUTE_ICON));
    }
}

