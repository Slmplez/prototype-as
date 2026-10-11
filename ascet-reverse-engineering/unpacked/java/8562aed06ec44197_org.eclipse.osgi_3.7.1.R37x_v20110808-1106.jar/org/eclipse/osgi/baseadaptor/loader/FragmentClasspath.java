/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.loader;

import java.io.IOException;
import java.security.ProtectionDomain;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.loader.ClasspathEntry;

public class FragmentClasspath {
    private BaseData bundledata;
    private ClasspathEntry[] entries;
    private ProtectionDomain domain;

    public FragmentClasspath(BaseData bundledata, ClasspathEntry[] entries, ProtectionDomain domain) {
        this.bundledata = bundledata;
        this.entries = entries;
        this.domain = domain;
    }

    public BaseData getBundleData() {
        return this.bundledata;
    }

    public ProtectionDomain getDomain() {
        return this.domain;
    }

    public ClasspathEntry[] getEntries() {
        return this.entries;
    }

    public void close() {
        int i = 0;
        while (i < this.entries.length) {
            try {
                this.entries[i].getBundleFile().close();
            }
            catch (IOException e) {
                this.bundledata.getAdaptor().getEventPublisher().publishFrameworkEvent(2, this.bundledata.getBundle(), e);
            }
            ++i;
        }
    }
}

