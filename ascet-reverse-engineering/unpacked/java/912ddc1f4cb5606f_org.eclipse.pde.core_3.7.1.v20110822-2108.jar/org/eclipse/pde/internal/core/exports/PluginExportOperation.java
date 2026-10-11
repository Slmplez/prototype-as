/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.State
 */
package org.eclipse.pde.internal.core.exports;

import java.io.File;
import java.util.Dictionary;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.pde.core.plugin.TargetPlatform;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.exports.FeatureBasedExportOperation;
import org.eclipse.pde.internal.core.exports.FeatureExportInfo;
import org.eclipse.pde.internal.core.util.CoreUtility;
import org.w3c.dom.Element;

public class PluginExportOperation
extends FeatureBasedExportOperation {
    public PluginExportOperation(FeatureExportInfo info, String name) {
        super(info, name);
    }

    protected void createPostProcessingFiles() {
        this.createPostProcessingFile(new File(this.fFeatureLocation, PLUGIN_POST_PROCESSING));
    }

    protected State getState(String os, String ws, String arch) {
        if (os.equals(TargetPlatform.getOS()) && ws.equals(TargetPlatform.getWS()) && arch.equals(TargetPlatform.getOSArch()) && this.fStateCopy != null) {
            this.fStateCopy.resolve(true);
            return this.fStateCopy;
        }
        return super.getState(os, ws, arch);
    }

    protected boolean shouldAddPlugin(BundleDescription bundle, Dictionary environment) {
        boolean conflict;
        boolean bl = conflict = !super.shouldAddPlugin(bundle, environment);
        if (conflict) {
            if (this.fStateCopy == null) {
                this.copyState(TargetPlatformHelper.getState());
            }
            BundleDescription desc = this.fStateCopy.removeBundle(bundle.getBundleId());
            BundleDescription newDesc = this.fStateCopy.getFactory().createBundleDescription(desc.getBundleId(), desc.getSymbolicName(), desc.getVersion(), desc.getLocation(), desc.getRequiredBundles(), desc.getHost(), desc.getImportPackages(), desc.getExportPackages(), desc.isSingleton(), desc.attachFragments(), desc.dynamicFragments(), null, desc.getExecutionEnvironments(), desc.getGenericRequires(), desc.getGenericCapabilities());
            this.fStateCopy.addBundle(newDesc);
        }
        return true;
    }

    protected void setAdditionalAttributes(Element plugin, BundleDescription bundle) {
        plugin.setAttribute("unpack", Boolean.toString(CoreUtility.guessUnpack(bundle)));
    }
}

