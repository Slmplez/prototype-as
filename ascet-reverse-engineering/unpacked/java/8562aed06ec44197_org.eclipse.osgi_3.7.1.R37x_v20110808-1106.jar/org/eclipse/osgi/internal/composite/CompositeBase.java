/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.composite;

import java.io.IOException;
import java.io.InputStream;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.eclipse.osgi.framework.internal.core.BundleHost;
import org.eclipse.osgi.internal.module.CompositeResolveHelper;
import org.eclipse.osgi.service.internal.composite.CompositeModule;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;
import org.osgi.framework.launch.Framework;

public abstract class CompositeBase
extends BundleHost
implements CompositeResolveHelper,
CompositeModule {
    protected static String PROP_COMPOSITE = "org.eclipse.equinox.Composite";
    protected static String PROP_PARENTFRAMEWORK = "org.eclipse.equinox.parentFramework";
    protected final Framework companionFramework;
    protected final ThreadLocal resolving = new ThreadLocal();

    public CompositeBase(BundleData bundledata, org.eclipse.osgi.framework.internal.core.Framework framework) throws BundleException {
        super(bundledata, framework);
        this.companionFramework = this.findCompanionFramework(framework, bundledata);
    }

    protected abstract Framework findCompanionFramework(org.eclipse.osgi.framework.internal.core.Framework var1, BundleData var2) throws BundleException;

    protected abstract Bundle getCompanionBundle();

    protected boolean isSurrogate() {
        return false;
    }

    public BundleDescription getCompositeDescription() {
        return this.getBundleDescription();
    }

    public ClassLoaderDelegate getDelegate() {
        return this.getBundleLoader();
    }

    public void refreshContent() {
        this.resolving.set(Boolean.TRUE);
        try {
            this.framework.getPackageAdmin().refreshPackages(new Bundle[]{this}, true, null);
        }
        finally {
            this.resolving.set(null);
        }
    }

    public boolean resolveContent() {
        this.resolving.set(Boolean.TRUE);
        try {
            boolean bl = this.framework.getPackageAdmin().resolveBundles(new Bundle[]{this});
            return bl;
        }
        finally {
            this.resolving.set(null);
        }
    }

    public void started(CompositeModule surrogate) {
    }

    public void stopped(CompositeModule surrogate) {
    }

    public void updateContent(InputStream content) throws BundleException {
        super.update(content);
    }

    public void update() throws BundleException {
        throw new BundleException("Cannot update composite bundles", 2);
    }

    public void update(InputStream in) throws BundleException {
        try {
            in.close();
        }
        catch (IOException iOException) {}
        throw new BundleException("Cannot update composite bundles", 2);
    }
}

