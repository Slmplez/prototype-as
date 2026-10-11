/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.device;

import java.io.IOException;
import java.io.InputStream;
import java.util.Dictionary;

public interface DriverLocator {
    public String[] findDrivers(Dictionary var1);

    public InputStream loadDriver(String var1) throws IOException;
}

