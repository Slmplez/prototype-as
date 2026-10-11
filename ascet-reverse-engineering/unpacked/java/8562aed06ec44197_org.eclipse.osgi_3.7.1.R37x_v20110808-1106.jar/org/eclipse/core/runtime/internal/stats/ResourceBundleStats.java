/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.stats;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Properties;
import java.util.ResourceBundle;

public class ResourceBundleStats {
    private String pluginId;
    private String fileName;
    private int keyCount = 0;
    private int keySize = 0;
    private int valueSize = 0;
    private long hashSize = 0L;
    private long fileSize = 0L;

    private static int sizeOf(String value) {
        return 44 + 2 * value.length();
    }

    private static int sizeOf(Properties value) {
        return (int)Math.round(44.0 + (16.0 + (double)value.size() * 1.25 * 4.0) + (double)(24 * value.size()));
    }

    public ResourceBundleStats(String pluginId, String fileName, URL input) {
        this.pluginId = pluginId;
        this.fileName = fileName;
        this.initialize(input);
    }

    public ResourceBundleStats(String pluginId, String fileName, ResourceBundle bundle) {
        this.pluginId = pluginId;
        this.fileName = fileName;
        this.initialize(bundle);
    }

    private void initialize(ResourceBundle bundle) {
        Enumeration<String> keys = bundle.getKeys();
        while (keys.hasMoreElements()) {
            String key = keys.nextElement();
            this.keySize += ResourceBundleStats.sizeOf(key);
            this.valueSize += ResourceBundleStats.sizeOf(bundle.getString(key));
            ++this.keyCount;
        }
    }

    private void initialize(URL url) {
        InputStream stream = null;
        Properties props = new Properties();
        try {
            try {
                stream = url.openStream();
                this.fileSize = stream.available();
                props.load(stream);
                Iterator iter = props.keySet().iterator();
                while (iter.hasNext()) {
                    String key = (String)iter.next();
                    this.keySize += ResourceBundleStats.sizeOf(key);
                    this.valueSize += ResourceBundleStats.sizeOf(props.getProperty(key));
                    ++this.keyCount;
                }
                this.hashSize = ResourceBundleStats.sizeOf(props);
            }
            finally {
                if (stream != null) {
                    stream.close();
                }
            }
        }
        catch (IOException iOException) {}
    }

    public long getHashSize() {
        return this.hashSize;
    }

    public int getKeyCount() {
        return this.keyCount;
    }

    public String getPluginId() {
        return this.pluginId;
    }

    public int getKeySize() {
        return this.keySize;
    }

    public int getValueSize() {
        return this.valueSize;
    }

    public long getTotalSize() {
        return (long)(this.keySize + this.valueSize) + this.hashSize;
    }

    public String getFileName() {
        return this.fileName;
    }

    public long getFileSize() {
        return this.fileSize;
    }
}

