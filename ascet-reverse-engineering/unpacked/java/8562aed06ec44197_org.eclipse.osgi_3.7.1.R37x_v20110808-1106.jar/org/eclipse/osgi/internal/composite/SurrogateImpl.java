/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.composite;

import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.internal.composite.CompositeBase;
import org.eclipse.osgi.internal.composite.CompositeHelper;
import org.eclipse.osgi.internal.module.ResolverBundle;
import org.eclipse.osgi.service.internal.composite.CompositeModule;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;
import org.osgi.framework.launch.Framework;
import org.osgi.service.framework.CompositeBundle;
import org.osgi.service.framework.SurrogateBundle;

public class SurrogateImpl
extends CompositeBase
implements SurrogateBundle {
    private final CompositeBundle composite = (CompositeBundle)FrameworkProperties.getProperties().get(PROP_COMPOSITE);

    public SurrogateImpl(BundleData bundledata, org.eclipse.osgi.framework.internal.core.Framework framework) throws BundleException {
        super(bundledata, framework);
    }

    protected Framework findCompanionFramework(org.eclipse.osgi.framework.internal.core.Framework thisFramework, BundleData thisData) {
        return (Framework)FrameworkProperties.getProperties().get(PROP_PARENTFRAMEWORK);
    }

    public BundleContext getCompositeBundleContext() {
        return this.composite.getBundleContext();
    }

    protected Bundle getCompanionBundle() {
        return this.composite;
    }

    protected boolean isSurrogate() {
        return true;
    }

    public boolean giveExports(ExportPackageDescription[] matchingExports) {
        if (this.resolving.get() == null) {
            return false;
        }
        if (matchingExports == null) {
            CompositeHelper.setDisabled(true, this.getBundleDescription());
            return true;
        }
        return this.validExports(matchingExports);
    }

    private boolean validExports(ExportPackageDescription[] matchingExports) {
        CompositeModule composite = (CompositeModule)((Object)this.getCompanionBundle());
        BundleDescription childDesc = composite.getCompositeDescription();
        ExportPackageDescription[] childExports = childDesc.getExportPackages();
        int i = 0;
        while (i < matchingExports.length) {
            int j = 0;
            while (j < childExports.length) {
                if (matchingExports[i].getName().equals(childExports[j].getName()) && !this.validateExport(matchingExports[i], childExports[j])) {
                    return false;
                }
                ++j;
            }
            ++i;
        }
        return true;
    }

    private boolean validateExport(ExportPackageDescription matchingExport, ExportPackageDescription childExport) {
        Version matchingVersion = matchingExport.getVersion();
        Version childVersion = childExport.getVersion();
        if (!childVersion.equals(Version.emptyVersion) && !matchingVersion.equals(childVersion)) {
            return false;
        }
        if (!ResolverBundle.equivalentMaps(childExport.getAttributes(), matchingExport.getAttributes(), false)) {
            return false;
        }
        return ResolverBundle.equivalentMaps(childExport.getDirectives(), matchingExport.getDirectives(), false);
    }

    protected void startHook() {
        ((CompositeModule)((Object)this.getCompanionBundle())).started(this);
    }

    protected void stopHook() {
        ((CompositeModule)((Object)this.getCompanionBundle())).stopped(this);
    }
}

