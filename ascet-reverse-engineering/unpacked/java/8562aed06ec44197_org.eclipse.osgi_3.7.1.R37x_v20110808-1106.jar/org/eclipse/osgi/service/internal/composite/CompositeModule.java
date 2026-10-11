/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.internal.composite;

import java.io.InputStream;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.osgi.framework.BundleException;

public interface CompositeModule {
    public void updateContent(InputStream var1) throws BundleException;

    public void refreshContent();

    public boolean resolveContent();

    public BundleDescription getCompositeDescription();

    public ClassLoaderDelegate getDelegate();

    public void started(CompositeModule var1);

    public void stopped(CompositeModule var1);
}

