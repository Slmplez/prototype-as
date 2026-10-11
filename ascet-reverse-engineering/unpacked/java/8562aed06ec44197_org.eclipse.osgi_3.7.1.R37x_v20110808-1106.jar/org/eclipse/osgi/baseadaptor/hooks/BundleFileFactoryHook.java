/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.hooks;

import java.io.IOException;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;

public interface BundleFileFactoryHook {
    public BundleFile createBundleFile(Object var1, BaseData var2, boolean var3) throws IOException;
}

