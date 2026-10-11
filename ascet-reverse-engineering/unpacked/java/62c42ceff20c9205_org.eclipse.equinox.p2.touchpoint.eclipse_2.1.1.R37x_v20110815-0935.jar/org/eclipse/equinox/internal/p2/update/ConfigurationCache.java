/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.update;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.equinox.internal.p2.update.Configuration;

public class ConfigurationCache {
    private static Map<String, CacheEntry> cache = new HashMap<String, CacheEntry>();

    private static String toKey(File file) {
        try {
            return file.getCanonicalPath();
        }
        catch (IOException iOException) {
            return file.getAbsolutePath();
        }
    }

    public static Configuration get(File file) {
        String key = ConfigurationCache.toKey(file);
        CacheEntry entry = cache.get(key);
        if (entry == null) {
            return null;
        }
        return file.lastModified() == entry.timestamp ? entry.config : null;
    }

    public static void put(File file, Configuration config) {
        String key = ConfigurationCache.toKey(file);
        if (config == null) {
            cache.remove(key);
            return;
        }
        CacheEntry entry = new CacheEntry();
        entry.config = config;
        entry.timestamp = file.lastModified();
        cache.put(key, entry);
    }

    static class CacheEntry {
        long timestamp;
        Configuration config;

        CacheEntry() {
        }
    }
}

