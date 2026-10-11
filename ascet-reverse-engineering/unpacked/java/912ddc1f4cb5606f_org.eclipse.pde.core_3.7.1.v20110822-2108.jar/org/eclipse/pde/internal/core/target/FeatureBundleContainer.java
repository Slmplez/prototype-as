/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.target;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.IBaseModel;
import org.eclipse.pde.internal.core.ExternalFeatureModelManager;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.ifeature.IFeaturePlugin;
import org.eclipse.pde.internal.core.target.AbstractBundleContainer;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.pde.internal.core.target.TargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.IResolvedBundle;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetPlatformService;
import org.eclipse.pde.internal.core.target.provisional.NameVersionDescriptor;

public class FeatureBundleContainer
extends AbstractBundleContainer {
    public static final String TYPE = "Feature";
    private String fId;
    private String fVersion;
    private String fHome;
    static /* synthetic */ Class class$0;

    FeatureBundleContainer(String home, String name, String version) {
        this.fId = name;
        this.fVersion = version;
        this.fHome = home;
    }

    public String getLocation(boolean resolve) throws CoreException {
        if (resolve) {
            return this.resolveHomeLocation().toOSString();
        }
        return this.fHome;
    }

    public String getType() {
        return TYPE;
    }

    public String getFeatureId() {
        return this.fId;
    }

    public String getFeatureVersion() {
        return this.fVersion;
    }

    private IPath resolveHomeLocation() throws CoreException {
        return new Path(this.resolveVariables(this.fHome));
    }

    protected IResolvedBundle[] resolveBundles(ITargetDefinition definition, IProgressMonitor monitor) throws CoreException {
        IBaseModel model = null;
        try {
            ITargetPlatformService service;
            if (monitor.isCanceled()) {
                IResolvedBundle[] iResolvedBundleArray = new IResolvedBundle[]{};
                return iResolvedBundleArray;
            }
            IFeatureModel[] features = this.resolveFeatures(definition, null);
            if (features.length == 0) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.FeatureBundleContainer_1, (Object)this.fId)));
            }
            File location = new File(features[0].getInstallLocation());
            if (!location.exists()) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.FeatureBundleContainer_0, (Object)location.toString())));
            }
            File manifest = new File(location, "feature.xml");
            if (!manifest.exists() || !manifest.isFile()) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.FeatureBundleContainer_2, (Object)this.fId)));
            }
            model = ExternalFeatureModelManager.createModel(manifest);
            if (model == null || !model.isLoaded()) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.FeatureBundleContainer_2, (Object)this.fId)));
            }
            PDECore pDECore = PDECore.getDefault();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.pde.internal.core.target.provisional.ITargetPlatformService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((service = (ITargetPlatformService)pDECore.acquireService(clazz.getName())) == null) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.FeatureBundleContainer_4));
            }
            File dir = new File(manifest.getParentFile().getParentFile().getParentFile(), "plugins");
            if (!dir.exists() || !dir.isDirectory()) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.FeatureBundleContainer_5, (Object)this.fId)));
            }
            if (monitor.isCanceled()) {
                IResolvedBundle[] iResolvedBundleArray = new IResolvedBundle[]{};
                return iResolvedBundleArray;
            }
            IBundleContainer container = service.newDirectoryContainer(dir.getAbsolutePath());
            container.resolve(definition, monitor);
            IResolvedBundle[] bundles = container.getBundles();
            IFeature feature = model.getFeature();
            IFeaturePlugin[] plugins = feature.getPlugins();
            ArrayList<NameVersionDescriptor> matchInfos = new ArrayList<NameVersionDescriptor>(plugins.length);
            int i = 0;
            while (i < plugins.length) {
                if (monitor.isCanceled()) {
                    IResolvedBundle[] iResolvedBundleArray = new IResolvedBundle[]{};
                    return iResolvedBundleArray;
                }
                IFeaturePlugin plugin = plugins[i];
                if (this.isMatch(definition.getArch(), plugin.getArch(), Platform.getOSArch()) && this.isMatch(definition.getNL(), plugin.getNL(), Platform.getNL()) && this.isMatch(definition.getOS(), plugin.getOS(), Platform.getOS()) && this.isMatch(definition.getWS(), plugin.getWS(), Platform.getWS())) {
                    matchInfos.add(new NameVersionDescriptor(plugin.getId(), plugin.getVersion()));
                }
                ++i;
            }
            i = 0;
            while (i < bundles.length) {
                bundles[i].setParentContainer(this);
                ++i;
            }
            List result = TargetDefinition.getMatchingBundles(bundles, matchInfos.toArray(new NameVersionDescriptor[matchInfos.size()]), null, this);
            IResolvedBundle[] iResolvedBundleArray = result.toArray(new IResolvedBundle[result.size()]);
            return iResolvedBundleArray;
        }
        finally {
            if (model != null) {
                model.dispose();
            }
        }
    }

    protected IFeatureModel[] resolveFeatures(ITargetDefinition definition, IProgressMonitor monitor) throws CoreException {
        if (definition instanceof TargetDefinition) {
            IFeatureModel[] allFeatures = ((TargetDefinition)definition).getFeatureModels(this.getLocation(false), monitor);
            int i = 0;
            while (i < allFeatures.length) {
                if (allFeatures[i].getFeature().getId().equals(this.fId) && (this.fVersion == null || allFeatures[i].getFeature().getVersion().equals(this.fVersion))) {
                    return new IFeatureModel[]{allFeatures[i]};
                }
                ++i;
            }
        }
        return new IFeatureModel[0];
    }

    private boolean isMatch(String targetValue, String fragmentValue, String runningValue) {
        if (fragmentValue == null) {
            return true;
        }
        if (targetValue == null) {
            return runningValue.equals(fragmentValue);
        }
        return targetValue.equals(fragmentValue);
    }

    public boolean isContentEqual(AbstractBundleContainer container) {
        if (container instanceof FeatureBundleContainer) {
            FeatureBundleContainer fbc = (FeatureBundleContainer)container;
            return this.fHome.equals(fbc.fHome) && this.fId.equals(fbc.fId) && this.isNullOrEqual(this.fVersion, this.fVersion);
        }
        return false;
    }

    private boolean isNullOrEqual(Object o1, Object o2) {
        if (o1 == null) {
            return o2 == null;
        }
        if (o2 == null) {
            return false;
        }
        return o1.equals(o2);
    }

    public String toString() {
        return "Feature " + this.fId + ' ' + this.fVersion + ' ' + this.fHome;
    }

    public String[] getVMArguments() {
        return null;
    }
}

