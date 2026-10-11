/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.core.ProvisionException
 */
package org.eclipse.equinox.internal.p2.update;

import java.io.File;
import java.net.URL;
import org.eclipse.equinox.internal.p2.update.Configuration;
import org.eclipse.equinox.internal.p2.update.ConfigurationParser;
import org.eclipse.equinox.internal.p2.update.ConfigurationWriter;
import org.eclipse.equinox.p2.core.ProvisionException;

public class ConfigurationIO {
    private static CacheEntry cache = null;

    static Configuration read(File file, URL osgiInstallArea) throws ProvisionException {
        if (cache != null && file.lastModified() == ConfigurationIO.cache.timestamp) {
            return ConfigurationIO.cache.config;
        }
        Configuration config = ConfigurationParser.parse(file, osgiInstallArea);
        if (config == null) {
            return null;
        }
        ConfigurationIO.cache(file, config, osgiInstallArea);
        return config;
    }

    private static void cache(File location, Configuration config, URL osgiInstallArea) {
        CacheEntry entry = new CacheEntry();
        entry.config = config;
        entry.osgiInstallArea = osgiInstallArea;
        entry.location = location;
        entry.timestamp = location.lastModified();
        cache = entry;
    }

    static void write(File location, Configuration config, URL osgiInstallArea) throws ProvisionException {
        ConfigurationWriter.save(config, location, osgiInstallArea);
        ConfigurationIO.cache(location, config, osgiInstallArea);
    }

    static class CacheEntry {
        Configuration config;
        URL osgiInstallArea;
        File location;
        long timestamp;

        CacheEntry() {
        }
    }
}

