/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.cm;

import java.io.IOException;
import java.util.Dictionary;

public interface Configuration {
    public String getPid();

    public Dictionary getProperties();

    public void update(Dictionary var1) throws IOException;

    public void delete() throws IOException;

    public String getFactoryPid();

    public void update() throws IOException;

    public void setBundleLocation(String var1);

    public String getBundleLocation();

    public boolean equals(Object var1);

    public int hashCode();
}

