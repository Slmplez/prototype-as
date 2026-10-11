/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.protocol.bundleentry;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleResourceHandler;

public class Handler
extends BundleResourceHandler {
    public Handler() {
    }

    public Handler(BundleEntry bundleEntry, BaseAdaptor adaptor) {
        super(bundleEntry, adaptor);
    }

    protected BundleEntry findBundleEntry(URL url, AbstractBundle bundle) throws IOException {
        BaseData bundleData = (BaseData)bundle.getBundleData();
        BundleEntry entry = bundleData.getBundleFile().getEntry(url.getPath());
        if (entry == null) {
            throw new FileNotFoundException(url.getPath());
        }
        return entry;
    }
}

