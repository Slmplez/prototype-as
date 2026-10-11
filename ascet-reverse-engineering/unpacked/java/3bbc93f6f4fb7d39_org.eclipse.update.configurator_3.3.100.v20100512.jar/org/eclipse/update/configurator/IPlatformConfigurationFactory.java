/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.update.configurator;

import java.io.IOException;
import java.net.URL;
import org.eclipse.update.configurator.IPlatformConfiguration;

public interface IPlatformConfigurationFactory {
    public IPlatformConfiguration getCurrentPlatformConfiguration();

    public IPlatformConfiguration getPlatformConfiguration(URL var1) throws IOException;

    public IPlatformConfiguration getPlatformConfiguration(URL var1, URL var2) throws IOException;
}

