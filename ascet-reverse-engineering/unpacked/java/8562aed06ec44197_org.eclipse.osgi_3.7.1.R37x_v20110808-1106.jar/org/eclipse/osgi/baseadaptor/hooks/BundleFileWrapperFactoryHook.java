/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.hooks;

import java.io.IOException;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;

public interface BundleFileWrapperFactoryHook {
    public BundleFile wrapBundleFile(BundleFile var1, Object var2, BaseData var3, boolean var4) throws IOException;
}

