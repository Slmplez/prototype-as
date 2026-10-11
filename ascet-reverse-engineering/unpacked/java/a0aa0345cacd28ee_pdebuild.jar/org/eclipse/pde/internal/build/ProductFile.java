/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
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
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.Utils;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class ProductFile
extends DefaultHandler
implements IPDEBuildConstants {
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
    private static final String ATTRIBUTE_AUTO_START = "autoStart";
    private static final String ATTRIBUTE_START_LEVEL = "startLevel";
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
    private static final String PRODUCT = "product";
    private static final String CONFIG_INI = "configIni";
    private static final String LAUNCHER = "launcher";
    private static final String LAUNCHER_ARGS = "launcherArgs";
    private static final String PLUGINS = "plugins";
    private static final String FEATURES = "features";
    private static final String SPLASH = "splash";
    private static final String CONFIGURATIONS = "configurations";
    private static final String PROPERTY = "property";
    private static final String P_USE_ICO = "useIco";
    private static final String UID = "uid";
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
    private int state = 0;
    private SAXParser parser;
    private String currentOS = null;
    private boolean useIco = false;
    private final Map iconsMap = new HashMap(6);
    private String launcherName = null;
    private String configPath = null;
    private final Map platformSpecificConfigPaths = new HashMap();
    private String configPlatform = null;
    private String platformConfigPath = null;
    private String id = null;
    private String uid = null;
    private boolean useFeatures = false;
    private Properties properties = null;
    private List entries = null;
    private Map bundleInfos = null;
    private String splashLocation = null;
    private String productName = null;
    private String application = null;
    private String location = null;
    private String version = null;
    private Properties launcherArgs = new Properties();

    private static String normalize(String text) {
        if (text == null || text.trim().length() == 0) {
            return "";
        }
        text = text.replaceAll("\\r|\\n|\\f|\\t", " ");
        return text.replaceAll("\\s+", " ");
    }

    public ProductFile(String location, String os) throws CoreException {
        this.currentOS = os;
        this.location = location;
        try {
            parserFactory.setNamespaceAware(true);
            this.parser = parserFactory.newSAXParser();
            BufferedInputStream in = new BufferedInputStream(new FileInputStream(location));
            try {
                this.parser.parse(new InputSource(in), (DefaultHandler)this);
            }
            finally {
                Utils.close(in);
            }
        }
        catch (ParserConfigurationException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 23, NLS.bind((String)Messages.exception_productParse, (Object)location), (Throwable)e));
        }
        catch (SAXException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 23, NLS.bind((String)Messages.exception_productParse, (Object)location), (Throwable)e));
        }
        catch (FileNotFoundException fileNotFoundException) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 24, NLS.bind((String)Messages.exception_missingElement, (Object)location), null));
        }
        catch (IOException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 23, NLS.bind((String)Messages.exception_productParse, (Object)location), (Throwable)e));
        }
    }

    public String getLauncherName() {
        return this.launcherName;
    }

    public String getLocation() {
        return this.location;
    }

    public List getPlugins() {
        return this.getPlugins(true);
    }

    public List getPlugins(boolean includeFragments) {
        if (this.entries == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList<String> plugins = new ArrayList<String>();
        Iterator iterator = this.entries.iterator();
        while (iterator.hasNext()) {
            FeatureEntry entry = (FeatureEntry)iterator.next();
            if (!entry.isPlugin() || entry.isFragment() && !includeFragments) continue;
            plugins.add(entry.getId());
        }
        return plugins;
    }

    public List getFragments() {
        if (this.entries == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList<String> fragments = new ArrayList<String>();
        Iterator iterator = this.entries.iterator();
        while (iterator.hasNext()) {
            FeatureEntry entry = (FeatureEntry)iterator.next();
            if (!entry.isPlugin() || !entry.isFragment()) continue;
            fragments.add(entry.getId());
        }
        return fragments;
    }

    public List getFeatures() {
        if (this.entries == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList<String> features = new ArrayList<String>();
        Iterator iterator = this.entries.iterator();
        while (iterator.hasNext()) {
            FeatureEntry entry = (FeatureEntry)iterator.next();
            if (entry.isPlugin()) continue;
            features.add(entry.getId());
        }
        return features;
    }

    public List getProductEntries() {
        if (this.entries == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList<FeatureEntry> results = new ArrayList<FeatureEntry>();
        Iterator iterator = this.entries.iterator();
        while (iterator.hasNext()) {
            FeatureEntry entry = (FeatureEntry)iterator.next();
            if (this.useFeatures() != !entry.isPlugin()) continue;
            results.add(entry);
        }
        return results;
    }

    public boolean containsPlugin(String plugin) {
        List plugins = this.getPlugins();
        return plugins != null && plugins.contains(plugin);
    }

    public String[] getIcons() {
        return this.getIcons(this.currentOS);
    }

    public String[] getIcons(String os) {
        if (this.iconsMap.containsKey(os)) {
            return (String[])this.iconsMap.get(os);
        }
        return new String[0];
    }

    private String[] toArrayRemoveNulls(List list) {
        String[] temp = new String[list.size()];
        int i = 0;
        Iterator iter = list.iterator();
        while (iter.hasNext()) {
            String element = (String)iter.next();
            if (element == null) continue;
            temp[i++] = element;
        }
        String[] result = new String[i];
        System.arraycopy(temp, 0, result, 0, i);
        return result;
    }

    public String getConfigIniPath() {
        return this.configPath;
    }

    public String getConfigIniPath(String os) {
        String specific = (String)this.platformSpecificConfigPaths.get(os);
        return specific == null ? this.configPath : specific;
    }

    public boolean haveCustomConfig() {
        return this.configPath != null || this.platformSpecificConfigPaths.size() > 0;
    }

    public String getId() {
        if (this.uid != null) {
            return this.uid;
        }
        return this.id;
    }

    public String getProductId() {
        return this.id;
    }

    public String getSplashLocation() {
        return this.splashLocation;
    }

    public String getProductName() {
        return this.productName;
    }

    public String getApplication() {
        return this.application;
    }

    public boolean useFeatures() {
        return this.useFeatures;
    }

    public String getVersion() {
        return this.version == null ? "0.0.0" : this.version;
    }

    public Map getConfigurationInfo() {
        if (this.bundleInfos == null) {
            return Collections.EMPTY_MAP;
        }
        return this.bundleInfos;
    }

    public Properties getConfigProperties() {
        if (this.properties == null) {
            return new Properties();
        }
        return this.properties;
    }

    public String getVMArguments(String os) {
        String key = null;
        if (os.equals("win32")) {
            key = VM_ARGS_WIN;
        } else if (os.equals("linux")) {
            key = VM_ARGS_LINUX;
        } else if (os.equals("macosx")) {
            key = VM_ARGS_MAC;
        } else if (os.equals("solaris")) {
            key = VM_ARGS_SOLARIS;
        }
        String prefix = this.launcherArgs.getProperty(VM_ARGS);
        String platform = null;
        String args = null;
        if (key != null) {
            platform = this.launcherArgs.getProperty(key);
        }
        args = prefix != null ? (platform != null ? String.valueOf(prefix) + " " + platform : prefix) : (platform != null ? platform : "");
        return ProductFile.normalize(args);
    }

    public String getProgramArguments(String os) {
        String key = null;
        if (os.equals("win32")) {
            key = PROGRAM_ARGS_WIN;
        } else if (os.equals("linux")) {
            key = PROGRAM_ARGS_LINUX;
        } else if (os.equals("macosx")) {
            key = PROGRAM_ARGS_MAC;
        } else if (os.equals("solaris")) {
            key = PROGRAM_ARGS_SOLARIS;
        }
        String prefix = this.launcherArgs.getProperty(PROGRAM_ARGS);
        String platform = null;
        String args = null;
        if (key != null) {
            platform = this.launcherArgs.getProperty(key);
        }
        args = prefix != null ? (platform != null ? String.valueOf(prefix) + " " + platform : prefix) : (platform != null ? platform : "");
        return ProductFile.normalize(args);
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) {
        switch (this.state) {
            case 0: {
                if (!PRODUCT.equals(localName)) break;
                this.processProduct(attributes);
                this.state = 1;
                break;
            }
            case 1: {
                if (CONFIG_INI.equals(localName)) {
                    this.processConfigIni(attributes);
                    this.state = 16;
                    break;
                }
                if (LAUNCHER.equals(localName)) {
                    this.processLauncher(attributes);
                    this.state = 2;
                    break;
                }
                if (PLUGINS.equals(localName)) {
                    this.state = 4;
                    break;
                }
                if (FEATURES.equals(localName)) {
                    this.state = 5;
                    break;
                }
                if (LAUNCHER_ARGS.equals(localName)) {
                    this.state = 3;
                    break;
                }
                if (SPLASH.equals(localName)) {
                    this.splashLocation = attributes.getValue("location");
                    break;
                }
                if (!CONFIGURATIONS.equals(localName)) break;
                this.state = 17;
                break;
            }
            case 16: {
                this.processConfigIniPlatform(localName, true);
                break;
            }
            case 2: {
                if ("solaris".equals(localName)) {
                    this.processSolaris(attributes);
                } else if ("win".equals(localName)) {
                    this.processWin(attributes);
                } else if ("linux".equals(localName)) {
                    this.processLinux(attributes);
                } else if ("macosx".equals(localName)) {
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
                if (!"plugin".equals(localName)) break;
                this.processPlugin(attributes);
                break;
            }
            case 5: {
                if (!"feature".equals(localName)) break;
                this.processFeature(attributes);
                break;
            }
            case 17: {
                if ("plugin".equals(localName)) {
                    this.processPluginConfiguration(attributes);
                    break;
                }
                if (!PROPERTY.equals(localName)) break;
                this.processPropertyConfiguration(attributes);
            }
        }
    }

    public void endElement(String uri, String localName, String qName) {
        switch (this.state) {
            case 4: {
                if (!PLUGINS.equals(localName)) break;
                this.state = 1;
                break;
            }
            case 5: {
                if (!FEATURES.equals(localName)) break;
                this.state = 1;
                break;
            }
            case 3: {
                if (!LAUNCHER_ARGS.equals(localName)) break;
                this.state = 1;
                break;
            }
            case 2: {
                if (!LAUNCHER.equals(localName)) break;
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
            case 16: {
                if (CONFIG_INI.equals(localName)) {
                    this.state = 1;
                    break;
                }
                this.processConfigIniPlatform(localName, false);
            }
        }
    }

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
                this.platformConfigPath = String.valueOf(this.platformConfigPath) + String.valueOf(ch, start, length);
            }
        }
    }

    private void addLaunchArgumentToMap(String key, String value) {
        String oldValue;
        if (this.launcherArgs == null) {
            this.launcherArgs = new Properties();
        }
        if ((oldValue = this.launcherArgs.getProperty(key)) != null) {
            this.launcherArgs.setProperty(key, String.valueOf(oldValue) + value);
        } else {
            this.launcherArgs.setProperty(key, value);
        }
    }

    private void processPlugin(Attributes attributes) {
        if (this.entries == null) {
            this.entries = new ArrayList();
        }
        String fragment = attributes.getValue("fragment");
        String pluginId = attributes.getValue("id");
        String pluginVersion = attributes.getValue("version");
        FeatureEntry entry = new FeatureEntry(pluginId, pluginVersion != null ? pluginVersion : "0.0.0", true);
        entry.setFragment(Boolean.valueOf(fragment).booleanValue());
        this.entries.add(entry);
    }

    private void processFeature(Attributes attributes) {
        if (this.entries == null) {
            this.entries = new ArrayList();
        }
        String featureId = attributes.getValue("id");
        String featureVersion = attributes.getValue("version");
        this.entries.add(new FeatureEntry(featureId, featureVersion != null ? featureVersion : "0.0.0", false));
    }

    private void processProduct(Attributes attributes) {
        this.id = attributes.getValue("id");
        this.uid = attributes.getValue(UID);
        this.productName = attributes.getValue("name");
        this.application = attributes.getValue("application");
        String use = attributes.getValue("useFeatures");
        if (use != null) {
            this.useFeatures = "true".equalsIgnoreCase(use);
        }
        this.version = attributes.getValue("version");
    }

    private void processConfigIni(Attributes attributes) {
        String os;
        String path = null;
        if ("custom".equals(attributes.getValue("use"))) {
            path = attributes.getValue("path");
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
        this.launcherName = attributes.getValue("name");
    }

    private void processSolaris(Attributes attributes) {
        ArrayList<String> result = new ArrayList<String>(4);
        result.add(attributes.getValue(SOLARIS_LARGE));
        result.add(attributes.getValue(SOLARIS_MEDIUM));
        result.add(attributes.getValue(SOLARIS_SMALL));
        result.add(attributes.getValue(SOLARIS_TINY));
        this.iconsMap.put("solaris", this.toArrayRemoveNulls(result));
    }

    private void processWin(Attributes attributes) {
        this.useIco = "true".equalsIgnoreCase(attributes.getValue(P_USE_ICO));
    }

    private void processIco(Attributes attributes) {
        if (!this.useIco) {
            return;
        }
        String value = attributes.getValue("path");
        if (value != null) {
            this.iconsMap.put("win32", new String[]{value});
        }
    }

    private void processBmp(Attributes attributes) {
        if (this.useIco) {
            return;
        }
        ArrayList<String> result = new ArrayList<String>(7);
        result.add(attributes.getValue(WIN32_16_HIGH));
        result.add(attributes.getValue(WIN32_16_LOW));
        result.add(attributes.getValue(WIN32_24_LOW));
        result.add(attributes.getValue(WIN32_32_HIGH));
        result.add(attributes.getValue(WIN32_32_LOW));
        result.add(attributes.getValue(WIN32_48_HIGH));
        result.add(attributes.getValue(WIN32_48_LOW));
        this.iconsMap.put("win32", this.toArrayRemoveNulls(result));
    }

    private void processLinux(Attributes attributes) {
        String value = attributes.getValue("icon");
        if (value != null) {
            this.iconsMap.put("linux", new String[]{value});
        }
    }

    private void processMac(Attributes attributes) {
        String value = attributes.getValue("icon");
        if (value != null) {
            this.iconsMap.put("macosx", new String[]{value});
        }
    }

    private void processPluginConfiguration(Attributes attributes) {
        String bundleId = attributes.getValue("id");
        if (bundleId != null) {
            BundleInfo info = new BundleInfo();
            info.setSymbolicName(bundleId);
            info.setVersion(attributes.getValue("version"));
            String value = attributes.getValue(ATTRIBUTE_START_LEVEL);
            if (value != null) {
                info.setStartLevel(Integer.parseInt(value));
            }
            if ((value = attributes.getValue(ATTRIBUTE_AUTO_START)) != null) {
                info.setMarkedAsStarted(Boolean.valueOf(value).booleanValue());
            }
            if (this.bundleInfos == null) {
                this.bundleInfos = new HashMap();
            }
            this.bundleInfos.put(bundleId, info);
        }
    }

    private void processPropertyConfiguration(Attributes attributes) {
        String name = attributes.getValue("name");
        String value = attributes.getValue("value");
        if (name == null) {
            return;
        }
        if (value == null) {
            value = "";
        }
        if (this.properties == null) {
            this.properties = new Properties();
        }
        this.properties.put(name, value);
    }
}

