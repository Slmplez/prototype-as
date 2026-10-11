/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.p2.metadata.Version
 */
package org.eclipse.equinox.internal.p2.repository.helpers;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.p2.metadata.Version;

public class LocationProperties {
    public static final String END = "!";
    private static final String VERSION = "version";
    private static final String METADATA_REPOSITORY_FACTORY_ORDER = "metadata.repository.factory.order";
    private static final String ARTIFACT_REPOSITORY_FACTORY_ORDER = "artifact.repository.factory.order";
    private static final String MD5_HASH = "md5.hash.";
    private boolean isValid = false;
    private Version version = Version.createOSGi((int)0, (int)0, (int)0);
    private String[] metadataSearchOrder = new String[0];
    private String[] artifactSearchOrder = new String[0];
    private Map<String, Boolean> md5Hashes = null;

    public static LocationProperties createEmptyIndexFile() {
        return new LocationProperties();
    }

    public static LocationProperties create(InputStream stream) {
        if (stream == null) {
            return new LocationProperties();
        }
        Properties properties = new Properties();
        try {
            properties.load(stream);
        }
        catch (Throwable e) {
            LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.repository", e.getMessage(), e));
            return new LocationProperties();
        }
        if (properties.getProperty(VERSION) == null || properties.getProperty(VERSION).length() == 0) {
            return new LocationProperties();
        }
        try {
            Version version = Version.parseVersion((String)properties.getProperty(VERSION));
            if (version.compareTo((Object)Version.createOSGi((int)1, (int)0, (int)0)) < 0) {
                return new LocationProperties();
            }
            LocationProperties locationProperties = new LocationProperties();
            if (version.compareTo((Object)Version.createOSGi((int)1, (int)0, (int)0)) == 0 && locationProperties.initVersion1(properties)) {
                return locationProperties;
            }
        }
        catch (Throwable t) {
            LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.repository", t.getMessage(), t));
        }
        return new LocationProperties();
    }

    private LocationProperties() {
    }

    public boolean exists() {
        return this.isValid;
    }

    public Version getVersion() {
        return this.version;
    }

    public String[] getMetadataFactorySearchOrder() {
        return this.metadataSearchOrder;
    }

    public String[] getArtifactFactorySearchOrder() {
        return this.artifactSearchOrder;
    }

    public boolean hasMD5Hash(String factoryID) {
        Boolean result = this.md5Hashes.get("md5." + factoryID);
        if (result == null) {
            return false;
        }
        return result;
    }

    private boolean initVersion1(Properties properties) {
        if (properties.get(VERSION) == null) {
            return false;
        }
        Set entrySet = properties.entrySet();
        Iterator iterator = entrySet.iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            if (VERSION.equals(entry.getKey())) {
                this.version = Version.parseVersion((String)((String)entry.getValue()));
                continue;
            }
            if (METADATA_REPOSITORY_FACTORY_ORDER.equals(entry.getKey())) {
                this.initMetadataRepositoryFactoryOrder((String)entry.getValue());
                continue;
            }
            if (ARTIFACT_REPOSITORY_FACTORY_ORDER.equals(entry.getKey())) {
                this.initArtifactRepositoryFactoryOrder((String)entry.getValue());
                continue;
            }
            if (!((String)entry.getKey()).startsWith(MD5_HASH)) continue;
            this.initHashMD5Hash((String)entry.getKey(), (String)entry.getValue());
        }
        this.isValid = true;
        return true;
    }

    private void initHashMD5Hash(String key, String value) {
    }

    private void initArtifactRepositoryFactoryOrder(String repositoryFactoryOrder) {
        repositoryFactoryOrder = repositoryFactoryOrder == null ? "" : repositoryFactoryOrder;
        StringTokenizer tokenizer = new StringTokenizer(repositoryFactoryOrder, ",");
        ArrayList<String> searchOrder = new ArrayList<String>();
        while (tokenizer.hasMoreTokens()) {
            searchOrder.add(tokenizer.nextToken().trim());
        }
        this.artifactSearchOrder = searchOrder.toArray(new String[searchOrder.size()]);
    }

    private void initMetadataRepositoryFactoryOrder(String repositoryFactoryOrder) {
        repositoryFactoryOrder = repositoryFactoryOrder == null ? "" : repositoryFactoryOrder;
        StringTokenizer tokenizer = new StringTokenizer(repositoryFactoryOrder, ",");
        ArrayList<String> searchOrder = new ArrayList<String>();
        while (tokenizer.hasMoreTokens()) {
            searchOrder.add(tokenizer.nextToken().trim());
        }
        this.metadataSearchOrder = searchOrder.toArray(new String[searchOrder.size()]);
    }
}

