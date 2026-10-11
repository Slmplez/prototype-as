/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.InvalidSyntaxException
 */
package org.osgi.service.cm;

import java.io.IOException;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.service.cm.Configuration;

public interface ConfigurationAdmin {
    public static final String SERVICE_FACTORYPID = "service.factoryPid";
    public static final String SERVICE_BUNDLELOCATION = "service.bundleLocation";

    public Configuration createFactoryConfiguration(String var1) throws IOException;

    public Configuration createFactoryConfiguration(String var1, String var2) throws IOException;

    public Configuration getConfiguration(String var1, String var2) throws IOException;

    public Configuration getConfiguration(String var1) throws IOException;

    public Configuration[] listConfigurations(String var1) throws IOException, InvalidSyntaxException;
}

