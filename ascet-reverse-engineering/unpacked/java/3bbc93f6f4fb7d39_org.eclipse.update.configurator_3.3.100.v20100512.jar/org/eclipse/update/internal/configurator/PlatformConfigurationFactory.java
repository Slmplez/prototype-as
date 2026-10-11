/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.update.internal.configurator;

import java.io.IOException;
import java.net.URL;
import org.eclipse.update.configurator.IPlatformConfiguration;
import org.eclipse.update.configurator.IPlatformConfigurationFactory;
import org.eclipse.update.internal.configurator.PlatformConfiguration;

public class PlatformConfigurationFactory
implements IPlatformConfigurationFactory {
    public IPlatformConfiguration getCurrentPlatformConfiguration() {
        return PlatformConfiguration.getCurrent();
    }

    public IPlatformConfiguration getPlatformConfiguration(URL url) throws IOException {
        try {
            return new PlatformConfiguration(url);
        }
        catch (Exception e) {
            if (e instanceof IOException) {
                throw (IOException)e;
            }
            throw new IOException(e.getMessage());
        }
    }

    public IPlatformConfiguration getPlatformConfiguration(URL url, URL loc) throws IOException {
        try {
            return new PlatformConfiguration(url, loc);
        }
        catch (Exception e) {
            if (e instanceof IOException) {
                throw (IOException)e;
            }
            throw new IOException(e.getMessage());
        }
    }
}

