/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.provisional.frameworkadmin;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Properties;
import org.eclipse.equinox.frameworkadmin.BundleInfo;

public class ConfigData {
    private final String fwName;
    private final String fwVersion;
    private final String launcherName;
    private final String launcherVersion;
    private int beginningFwStartLevel = -1;
    private int initialBundleStartLevel = -1;
    private LinkedHashSet bundlesList = new LinkedHashSet();
    private Properties properties = new Properties();

    public ConfigData(String fwName, String fwVersion, String launcherName, String launcherVersion) {
        this.fwName = fwName;
        this.fwVersion = fwVersion;
        this.launcherName = launcherName;
        this.launcherVersion = launcherVersion;
        this.initialize();
    }

    public void addBundle(BundleInfo bundleInfo) {
        this.bundlesList.add(bundleInfo);
    }

    public int getBeginingFwStartLevel() {
        return this.beginningFwStartLevel;
    }

    public BundleInfo[] getBundles() {
        if (this.bundlesList.size() == 0) {
            return new BundleInfo[0];
        }
        BundleInfo[] ret = new BundleInfo[this.bundlesList.size()];
        this.bundlesList.toArray(ret);
        return ret;
    }

    public String getProperty(String key) {
        return this.properties.getProperty(key);
    }

    public Properties getProperties() {
        Properties ret = new Properties();
        ret.putAll(this.properties);
        return ret;
    }

    public String getFwName() {
        return this.fwName;
    }

    public String getFwVersion() {
        return this.fwVersion;
    }

    public int getInitialBundleStartLevel() {
        return this.initialBundleStartLevel;
    }

    public String getLauncherName() {
        return this.launcherName;
    }

    public String getLauncherVersion() {
        return this.launcherVersion;
    }

    public void initialize() {
        this.beginningFwStartLevel = -1;
        this.initialBundleStartLevel = -1;
        this.bundlesList.clear();
        this.properties.clear();
        this.properties.clear();
    }

    public boolean removeBundle(BundleInfo bundleInfo) {
        if (bundleInfo == null) {
            throw new IllegalArgumentException("Bundle info can't be null:" + bundleInfo);
        }
        return this.bundlesList.remove(bundleInfo);
    }

    public void setBeginningFwStartLevel(int startLevel) {
        this.beginningFwStartLevel = startLevel;
    }

    public void setBundles(BundleInfo[] bundleInfos) {
        this.bundlesList.clear();
        if (bundleInfos != null) {
            int i = 0;
            while (i < bundleInfos.length) {
                this.bundlesList.add(bundleInfos[i]);
                ++i;
            }
        }
    }

    public void setProperty(String key, String value) {
        if (value == null) {
            this.properties.remove(key);
        } else {
            this.properties.setProperty(key, value);
        }
    }

    public void appendProperties(Properties props) {
        this.properties.putAll(props);
    }

    public void setProperties(Properties props) {
        this.properties.clear();
        this.properties.putAll(props);
    }

    public void setInitialBundleStartLevel(int startLevel) {
        this.initialBundleStartLevel = startLevel;
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("Class:" + this.getClass().getName() + "\n");
        sb.append("============Independent===============\n");
        sb.append("fwName=" + this.fwName + "\n");
        sb.append("fwVersion=" + this.fwVersion + "\n");
        sb.append("launcherName=" + this.launcherName + "\n");
        sb.append("launcherVersion=" + this.launcherVersion + "\n");
        sb.append("beginningFwStartLevel=" + this.beginningFwStartLevel + "\n");
        sb.append("initialBundleStartLevel=" + this.initialBundleStartLevel + "\n");
        if (this.bundlesList.size() == 0) {
            sb.append("bundlesList=null\n");
        } else {
            sb.append("bundlesList=\n");
            int i = 0;
            Iterator iter = this.bundlesList.iterator();
            while (iter.hasNext()) {
                sb.append("\tbundlesList[" + i + "]=" + iter.next().toString() + "\n");
                ++i;
            }
        }
        sb.append("============ Properties ===============\n");
        sb.append("fwIndependentProps=");
        ConfigData.setPropsStrings(sb, this.properties);
        return sb.toString();
    }

    private static void setPropsStrings(StringBuffer sb, Properties props) {
        if (props.size() > 0) {
            sb.append("\n");
            Enumeration enumeration = props.keys();
            while (enumeration.hasMoreElements()) {
                String key = (String)enumeration.nextElement();
                String value = props.getProperty(key);
                if (value == null || value.equals("")) continue;
                sb.append("\t{" + key + " ,\t" + value + "}\n");
            }
        } else {
            sb.append("empty\n");
        }
    }
}

