/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.protocol.bundleresource;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.loader.BaseClassLoader;
import org.eclipse.osgi.baseadaptor.loader.ClasspathManager;
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
        BaseClassLoader classloader = Handler.getBundleClassLoader(bundle);
        if (classloader == null) {
            throw new FileNotFoundException(url.getPath());
        }
        ClasspathManager cpManager = classloader.getClasspathManager();
        BundleEntry entry = cpManager.findLocalEntry(url.getPath(), url.getPort());
        if (entry == null) {
            entry = cpManager.findLocalEntry(url.getPath());
        }
        if (entry == null) {
            throw new FileNotFoundException(url.getPath());
        }
        return entry;
    }
}

