/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.variables.IStringVariableManager
 *  org.eclipse.core.variables.VariablesPlugin
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.target;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.variables.IStringVariableManager;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.plugin.TargetPlatform;
import org.eclipse.pde.internal.core.ExternalFeatureModelManager;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.ifeature.IFeaturePlugin;
import org.eclipse.pde.internal.core.target.AbstractBundleContainer;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.pde.internal.core.target.ResolvedBundle;
import org.eclipse.pde.internal.core.target.TargetDefinitionPersistenceHelper;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.IResolvedBundle;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetHandle;
import org.eclipse.pde.internal.core.target.provisional.NameVersionDescriptor;
import org.xml.sax.SAXException;

public class TargetDefinition
implements ITargetDefinition {
    private String fName;
    private NameVersionDescriptor[] fIncluded;
    private NameVersionDescriptor[] fOptional;
    private String fProgramArgs;
    private String fVMArgs;
    private IPath fJREContainer;
    private String fArch;
    private String fOS;
    private String fWS;
    private String fNL;
    private IBundleContainer[] fContainers;
    private ITargetHandle fHandle;
    private NameVersionDescriptor[] fImplicit;
    private int fUIMode = 0;
    public static final int MODE_PLUGIN = 0;
    public static final int MODE_FEATURE = 1;
    private Map fFeaturesInLocation = new HashMap();
    private IFeatureModel[] fFeatureModels;
    private IResolvedBundle[] fOtherBundles;
    private int fSequenceNumber = -1;

    TargetDefinition(ITargetHandle handle) {
        this.fHandle = handle;
    }

    public String getArch() {
        return this.fArch;
    }

    public IBundleContainer[] getBundleContainers() {
        return this.fContainers;
    }

    public String getNL() {
        return this.fNL;
    }

    public String getName() {
        return this.fName;
    }

    public String getOS() {
        return this.fOS;
    }

    public String getProgramArguments() {
        return this.fProgramArgs;
    }

    public String getVMArguments() {
        return this.fVMArgs;
    }

    public String getWS() {
        return this.fWS;
    }

    public void setArch(String arch) {
        this.incrementSequenceNumber();
        this.fArch = arch;
    }

    public void setNL(String nl) {
        this.incrementSequenceNumber();
        this.fNL = nl;
    }

    public void setName(String name) {
        this.fName = name;
    }

    public void setOS(String os) {
        this.incrementSequenceNumber();
        this.fOS = os;
    }

    public void setProgramArguments(String args) {
        if (args != null && args.length() == 0) {
            args = null;
        }
        this.fProgramArgs = args;
    }

    public void setVMArguments(String args) {
        if (args != null && args.length() == 0) {
            args = null;
        }
        this.fVMArgs = args;
    }

    public void setWS(String ws) {
        this.incrementSequenceNumber();
        this.fWS = ws;
    }

    public void setBundleContainers(IBundleContainer[] containers) {
        this.incrementSequenceNumber();
        this.fFeatureModels = null;
        this.fOtherBundles = null;
        if (containers != null && containers.length == 0) {
            containers = null;
        }
        this.fContainers = containers;
        if (containers == null) {
            this.fIncluded = null;
            this.fOptional = null;
        } else {
            int i = 0;
            while (i < containers.length) {
                ((AbstractBundleContainer)containers[i]).associateWithTarget(this);
                ++i;
            }
        }
    }

    public void flushCaches(String location) {
        this.fFeatureModels = null;
        this.fOtherBundles = null;
        if (location == null) {
            this.fFeaturesInLocation.clear();
        } else {
            this.fFeaturesInLocation.remove(location);
        }
        if (this.fContainers == null) {
            this.fIncluded = null;
            this.fOptional = null;
        }
    }

    public IStatus resolve(IProgressMonitor monitor) {
        IBundleContainer[] containers = this.getBundleContainers();
        int num = 0;
        if (containers != null) {
            num = containers.length;
        }
        SubMonitor subMonitor = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.TargetDefinition_1, (int)(num * 10));
        try {
            MultiStatus status = new MultiStatus("org.eclipse.pde.core", 0, Messages.TargetDefinition_2, null);
            if (containers != null) {
                int i = 0;
                while (i < containers.length) {
                    if (subMonitor.isCanceled()) {
                        IStatus iStatus = Status.CANCEL_STATUS;
                        return iStatus;
                    }
                    subMonitor.subTask(Messages.TargetDefinition_4);
                    IStatus s = containers[i].resolve(this, (IProgressMonitor)subMonitor.newChild(10));
                    if (!s.isOK()) {
                        status.add(s);
                    }
                    ++i;
                }
            }
            if (status.isOK()) {
                IStatus iStatus = Status.OK_STATUS;
                return iStatus;
            }
            MultiStatus multiStatus = status;
            return multiStatus;
        }
        finally {
            subMonitor.done();
            if (monitor != null) {
                monitor.done();
            }
        }
    }

    public boolean isResolved() {
        IBundleContainer[] containers = this.getBundleContainers();
        if (containers != null) {
            int i = 0;
            while (i < containers.length) {
                IBundleContainer container = containers[i];
                if (!container.isResolved()) {
                    return false;
                }
                ++i;
            }
        }
        return true;
    }

    public IStatus getBundleStatus() {
        if (this.isResolved()) {
            IBundleContainer[] containers = this.getBundleContainers();
            if (containers != null) {
                MultiStatus result = new MultiStatus("org.eclipse.pde.core", 0, Messages.TargetDefinition_5, null);
                int i = 0;
                while (i < containers.length) {
                    IBundleContainer container = containers[i];
                    IStatus containerStatus = container.getStatus();
                    if (containerStatus != null && !containerStatus.isOK()) {
                        result.add(containerStatus);
                    }
                    ++i;
                }
                IResolvedBundle[] bundles = this.getBundles();
                int i2 = 0;
                while (i2 < bundles.length) {
                    if (!bundles[i2].getStatus().isOK()) {
                        result.add(bundles[i2].getStatus());
                    }
                    ++i2;
                }
                if (result.isOK()) {
                    return Status.OK_STATUS;
                }
                return result;
            }
            return Status.OK_STATUS;
        }
        return null;
    }

    public void setIncluded(NameVersionDescriptor[] included) {
        this.fIncluded = included;
    }

    public NameVersionDescriptor[] getIncluded() {
        return this.fIncluded;
    }

    public void setOptional(NameVersionDescriptor[] optional) {
        this.fOptional = optional;
    }

    public NameVersionDescriptor[] getOptional() {
        return this.fOptional;
    }

    public IResolvedBundle[] getBundles() {
        return this.getBundles(false);
    }

    public IResolvedBundle[] getAllBundles() {
        return this.getBundles(true);
    }

    private IResolvedBundle[] getBundles(boolean allBundles) {
        if (this.isResolved()) {
            IBundleContainer[] containers = this.getBundleContainers();
            if (containers != null) {
                ArrayList<IResolvedBundle> all = new ArrayList<IResolvedBundle>();
                int i = 0;
                while (i < containers.length) {
                    IBundleContainer container = containers[i];
                    IResolvedBundle[] bundles = container.getBundles();
                    if (bundles != null) {
                        int j = 0;
                        while (j < bundles.length) {
                            IResolvedBundle rb = bundles[j];
                            all.add(rb);
                            ++j;
                        }
                    }
                    ++i;
                }
                IResolvedBundle[] allResolvedBundles = all.toArray(new IResolvedBundle[all.size()]);
                if (allBundles) {
                    return allResolvedBundles;
                }
                return this.filterBundles(allResolvedBundles, this.getIncluded());
            }
            return new IResolvedBundle[0];
        }
        return null;
    }

    private IResolvedBundle[] filterBundles(IResolvedBundle[] bundles, NameVersionDescriptor[] filter) {
        if (filter == null) {
            IBundleContainer parent = this.fContainers != null && this.fContainers.length > 0 ? this.fContainers[0] : null;
            List resolved = TargetDefinition.getMatchingBundles(bundles, null, this.fOptional, parent);
            return resolved.toArray(new IResolvedBundle[resolved.size()]);
        }
        if (filter.length == 0) {
            return new IResolvedBundle[0];
        }
        boolean containsFeatures = false;
        ArrayList<NameVersionDescriptor> missingFeatures = new ArrayList<NameVersionDescriptor>();
        ArrayList<NameVersionDescriptor> included = new ArrayList<NameVersionDescriptor>();
        int i = 0;
        while (i < filter.length) {
            if (filter[i].getType() == "plugin") {
                included.add(filter[i]);
            } else if (filter[i].getType() == "feature") {
                containsFeatures = true;
                IFeatureModel[] features = this.getAllFeatures();
                IFeatureModel bestMatch = null;
                int j = 0;
                while (j < features.length) {
                    if (features[j].getFeature().getId().equals(filter[i].getId())) {
                        Version v2;
                        Version v1;
                        if (filter[i].getVersion() != null) {
                            if (filter[i].getVersion().equals(features[j].getFeature().getVersion())) {
                                bestMatch = features[j];
                                break;
                            }
                        } else if (bestMatch != null && (v1 = Version.parseVersion((String)features[j].getFeature().getVersion())).compareTo((Object)(v2 = Version.parseVersion((String)bestMatch.getFeature().getVersion()))) > 0) {
                            bestMatch = features[j];
                        }
                        if (bestMatch == null) {
                            bestMatch = features[j];
                        }
                    }
                    ++j;
                }
                if (bestMatch != null) {
                    IFeaturePlugin[] plugins = bestMatch.getFeature().getPlugins();
                    int j2 = 0;
                    while (j2 < plugins.length) {
                        included.add(new NameVersionDescriptor(plugins[j2].getId(), plugins[j2].getVersion()));
                        ++j2;
                    }
                } else {
                    missingFeatures.add(filter[i]);
                }
            }
            ++i;
        }
        IBundleContainer parent = this.fContainers != null && this.fContainers.length > 0 ? this.fContainers[0] : null;
        List result = TargetDefinition.getMatchingBundles(bundles, included.toArray(new NameVersionDescriptor[included.size()]), this.fOptional, containsFeatures ? null : parent);
        if (containsFeatures && !missingFeatures.isEmpty()) {
            Iterator iterator = missingFeatures.iterator();
            while (iterator.hasNext()) {
                NameVersionDescriptor missing = (NameVersionDescriptor)iterator.next();
                BundleInfo info = new BundleInfo(missing.getId(), missing.getVersion(), null, -1, false);
                String message = NLS.bind((String)Messages.TargetDefinition_RequiredFeatureCouldNotBeFound, (Object)missing.getId());
                Status status = new Status(4, "org.eclipse.pde.core", 110, message, null);
                result.add(new ResolvedBundle(info, parent, (IStatus)status, null, false, false));
            }
        }
        return result.toArray(new IResolvedBundle[result.size()]);
    }

    static List getMatchingBundles(IResolvedBundle[] collection, NameVersionDescriptor[] included, NameVersionDescriptor[] optional, IBundleContainer errorParentContainer) {
        int i;
        if (included == null && optional == null) {
            ArrayList<IResolvedBundle> result = new ArrayList<IResolvedBundle>();
            result.addAll(Arrays.asList(collection));
            return result;
        }
        HashMap<String, ArrayList<IResolvedBundle>> bundleMap = new HashMap<String, ArrayList<IResolvedBundle>>(collection.length);
        int i2 = 0;
        while (i2 < collection.length) {
            IResolvedBundle resolved = collection[i2];
            ArrayList<IResolvedBundle> list = (ArrayList<IResolvedBundle>)bundleMap.get(resolved.getBundleInfo().getSymbolicName());
            if (list == null) {
                list = new ArrayList<IResolvedBundle>(3);
                bundleMap.put(resolved.getBundleInfo().getSymbolicName(), list);
            }
            list.add(resolved);
            ++i2;
        }
        ArrayList<IResolvedBundle> resolved = new ArrayList<IResolvedBundle>();
        if (included == null) {
            i = 0;
            while (i < collection.length) {
                resolved.add(collection[i]);
                ++i;
            }
        } else {
            i = 0;
            while (i < included.length) {
                BundleInfo info = new BundleInfo(included[i].getId(), included[i].getVersion(), null, -1, false);
                IResolvedBundle bundle = TargetDefinition.resolveBundle(bundleMap, info, false, errorParentContainer);
                if (bundle != null) {
                    resolved.add(bundle);
                }
                ++i;
            }
        }
        if (optional != null) {
            i = 0;
            while (i < optional.length) {
                BundleInfo option = new BundleInfo(optional[i].getId(), optional[i].getVersion(), null, -1, false);
                IResolvedBundle resolveBundle = TargetDefinition.resolveBundle(bundleMap, option, true, errorParentContainer);
                if (resolveBundle != null) {
                    IStatus status = resolveBundle.getStatus();
                    if (status.isOK()) {
                        if (!resolved.contains(resolveBundle)) {
                            resolved.add(resolveBundle);
                        }
                    } else {
                        resolved.add(resolveBundle);
                    }
                }
                ++i;
            }
        }
        return resolved;
    }

    private static IResolvedBundle resolveBundle(Map bundleMap, BundleInfo info, boolean optional, IBundleContainer errorParentContainer) {
        List list = (List)bundleMap.get(info.getSymbolicName());
        if (list != null) {
            String version = info.getVersion();
            if (version == null || version.equals("0.0.0")) {
                if (list.size() > 1) {
                    Collections.sort(list, new Comparator(){

                        public int compare(Object o1, Object o2) {
                            BundleInfo b1 = ((IResolvedBundle)o1).getBundleInfo();
                            BundleInfo b2 = ((IResolvedBundle)o2).getBundleInfo();
                            return b1.getVersion().compareTo(b2.getVersion());
                        }
                    });
                }
                ResolvedBundle rb = (ResolvedBundle)list.get(list.size() - 1);
                rb.setOptional(optional);
                return rb;
            }
            Iterator iterator = list.iterator();
            while (iterator.hasNext()) {
                IResolvedBundle bundle = (IResolvedBundle)iterator.next();
                if (!bundle.getBundleInfo().getVersion().equals(version)) continue;
                ((ResolvedBundle)bundle).setOptional(optional);
                return bundle;
            }
            if (errorParentContainer == null) {
                return null;
            }
            int sev = 4;
            String message = NLS.bind((String)Messages.AbstractBundleContainer_1, (Object[])new Object[]{info.getVersion(), info.getSymbolicName()});
            if (optional) {
                sev = 1;
                message = NLS.bind((String)Messages.AbstractBundleContainer_2, (Object[])new Object[]{info.getVersion(), info.getSymbolicName()});
            }
            return new ResolvedBundle(info, errorParentContainer, (IStatus)new Status(sev, "org.eclipse.pde.core", 101, message, null), null, optional, false);
        }
        if (errorParentContainer == null) {
            return null;
        }
        int sev = 4;
        String message = NLS.bind((String)Messages.AbstractBundleContainer_3, (Object)info.getSymbolicName());
        if (optional) {
            sev = 1;
            message = NLS.bind((String)Messages.AbstractBundleContainer_4, (Object)info.getSymbolicName());
        }
        return new ResolvedBundle(info, errorParentContainer, (IStatus)new Status(sev, "org.eclipse.pde.core", 100, message, null), null, optional, false);
    }

    public ITargetHandle getHandle() {
        return this.fHandle;
    }

    void setContents(InputStream stream) throws CoreException {
        try {
            this.fArch = null;
            this.fContainers = null;
            this.fImplicit = null;
            this.fJREContainer = null;
            this.fName = null;
            this.fNL = null;
            this.fOS = null;
            this.fProgramArgs = null;
            this.fVMArgs = null;
            this.fWS = null;
            this.fSequenceNumber = 0;
            TargetDefinitionPersistenceHelper.initFromXML(this, stream);
        }
        catch (ParserConfigurationException e) {
            this.abort(Messages.TargetDefinition_0, e);
        }
        catch (SAXException e) {
            this.abort(Messages.TargetDefinition_0, e);
        }
        catch (IOException e) {
            this.abort(Messages.TargetDefinition_0, e);
        }
    }

    void write(OutputStream stream) throws CoreException {
        try {
            TargetDefinitionPersistenceHelper.persistXML(this, stream);
        }
        catch (IOException e) {
            this.abort(Messages.TargetDefinition_3, e);
        }
        catch (ParserConfigurationException e) {
            this.abort(Messages.TargetDefinition_3, e);
        }
        catch (TransformerException e) {
            this.abort(Messages.TargetDefinition_3, e);
        }
    }

    private void abort(String message, Exception e) throws CoreException {
        throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", message, (Throwable)e));
    }

    public NameVersionDescriptor[] getImplicitDependencies() {
        return this.fImplicit;
    }

    public void setImplicitDependencies(NameVersionDescriptor[] bundles) {
        if (bundles != null && bundles.length == 0) {
            bundles = null;
        }
        this.fImplicit = bundles;
    }

    public IPath getJREContainer() {
        return this.fJREContainer;
    }

    public void setJREContainer(IPath containerPath) {
        this.fJREContainer = containerPath;
    }

    public boolean isContentEqual(ITargetDefinition definition) {
        IBundleContainer[] c2;
        IBundleContainer[] c1;
        if (this.isNullOrEqual(this.getName(), definition.getName()) && this.isNullOrEqual(this.getArch(), definition.getArch()) && this.isNullOrEqual(this.getNL(), definition.getNL()) && this.isNullOrEqual(this.getOS(), definition.getOS()) && this.isNullOrEqual(this.getWS(), definition.getWS()) && this.isNullOrEqual(this.getProgramArguments(), definition.getProgramArguments()) && this.isNullOrEqual(this.getVMArguments(), definition.getVMArguments()) && this.isNullOrEqual(this.getJREContainer(), definition.getJREContainer()) && this.isNullOrEqual(this.getIncluded(), definition.getIncluded()) && this.isNullOrEqual(this.getOptional(), definition.getOptional()) && this.areContainersEqual(c1 = this.getBundleContainers(), c2 = definition.getBundleContainers())) {
            return this.isNullOrEqual(this.getImplicitDependencies(), definition.getImplicitDependencies());
        }
        return false;
    }

    public boolean isContentEquivalent(ITargetDefinition definition) {
        IBundleContainer[] c2;
        IBundleContainer[] c1;
        if (this.isNullOrEqual(this.getArch(), definition.getArch()) && this.isNullOrEqual(this.getNL(), definition.getNL()) && this.isNullOrEqual(this.getOS(), definition.getOS()) && this.isNullOrEqual(this.getWS(), definition.getWS()) && this.isArgsNullOrEqual(this.getProgramArguments(), definition.getProgramArguments()) && this.isArgsNullOrEqual(this.getVMArguments(), definition.getVMArguments()) && this.isNullOrEqual(this.getJREContainer(), definition.getJREContainer()) && this.isNullOrEqual(this.getIncluded(), definition.getIncluded()) && this.isNullOrEqual(this.getOptional(), definition.getOptional()) && this.areContainersEqual(c1 = this.getBundleContainers(), c2 = definition.getBundleContainers())) {
            return this.isNullOrEqual(this.getImplicitDependencies(), definition.getImplicitDependencies());
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

    private boolean isNullOrEqual(Object[] objects1, Object[] objects2) {
        if (objects1 == null) {
            return objects2 == null;
        }
        if (objects2 == null) {
            return false;
        }
        if (objects1.length == objects2.length) {
            int i = 0;
            while (i < objects1.length) {
                if (!objects1[i].equals(objects2[i])) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        return false;
    }

    private boolean isArgsNullOrEqual(String args1, String args2) {
        String[] a2;
        if (args1 == null) {
            return args2 == null;
        }
        if (args2 == null) {
            return false;
        }
        String[] a1 = DebugPlugin.parseArguments((String)args1);
        if (a1.length == (a2 = DebugPlugin.parseArguments((String)args2)).length) {
            int i = 0;
            while (i < a1.length) {
                if (!a1[i].equals(a2[i])) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        return false;
    }

    private boolean areContainersEqual(IBundleContainer[] c1, IBundleContainer[] c2) {
        if (c1 == null) {
            return c2 == null;
        }
        if (c2 == null) {
            return false;
        }
        if (c1.length == c2.length) {
            int i = 0;
            while (i < c2.length) {
                AbstractBundleContainer ac1 = (AbstractBundleContainer)c1[i];
                AbstractBundleContainer ac2 = (AbstractBundleContainer)c2[i];
                if (!ac1.isContentEqual(ac2)) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        return false;
    }

    public String toString() {
        StringBuffer buf = new StringBuffer();
        buf.append(this.fName != null ? this.fName : "No Name");
        if (this.fContainers == null) {
            buf.append("\n\tNo containers");
        } else {
            int i = 0;
            while (i < this.fContainers.length) {
                buf.append("\n\t").append(this.fContainers.toString());
                ++i;
            }
        }
        buf.append("\nEnv: ").append(this.fOS).append("/").append(this.fWS).append("/").append(this.fArch).append("/").append(this.fNL);
        buf.append("\nJRE: ").append(this.fJREContainer);
        buf.append("\nArgs: ").append(this.fProgramArgs).append("/").append(this.fVMArgs);
        buf.append("\nImplicit: ").append(this.fImplicit == null ? "null" : Integer.toString(this.fImplicit.length));
        buf.append("\nHandle: ").append(this.fHandle.toString());
        return buf.toString();
    }

    public IFeatureModel[] getFeatureModels(String locationPath, IProgressMonitor monitor) throws CoreException {
        String path = locationPath;
        if (path == null) {
            path = TargetPlatform.getDefaultLocation();
        } else {
            IStringVariableManager manager = VariablesPlugin.getDefault().getStringVariableManager();
            path = manager.performStringSubstitution(path);
        }
        IFeatureModel[] models = null;
        if (this.fFeaturesInLocation != null) {
            models = (IFeatureModel[])this.fFeaturesInLocation.get(path);
        }
        if (models != null) {
            return models;
        }
        models = ExternalFeatureModelManager.createModels(path, new ArrayList(), monitor);
        this.fFeaturesInLocation.put(path, models);
        return models;
    }

    public IFeatureModel[] getAllFeatures() {
        if (!this.isResolved()) {
            return null;
        }
        if (this.fFeatureModels != null) {
            return this.fFeatureModels;
        }
        IBundleContainer[] containers = this.getBundleContainers();
        HashMap<NameVersionDescriptor, IFeatureModel> result = new HashMap<NameVersionDescriptor, IFeatureModel>();
        if (containers != null && containers.length > 0) {
            int i = 0;
            while (i < containers.length) {
                IFeatureModel[] currentFeatures = containers[i].getFeatures();
                if (currentFeatures != null && currentFeatures.length > 0) {
                    int j = 0;
                    while (j < currentFeatures.length) {
                        IFeatureModel feature = currentFeatures[j];
                        NameVersionDescriptor key = new NameVersionDescriptor(feature.getFeature().getId(), feature.getFeature().getVersion());
                        result.put(key, feature);
                        ++j;
                    }
                }
                ++i;
            }
        }
        this.fFeatureModels = result.values().toArray(new IFeatureModel[result.size()]);
        return this.fFeatureModels;
    }

    public IResolvedBundle[] getOtherBundles() {
        if (!this.isResolved()) {
            return null;
        }
        if (this.fOtherBundles != null) {
            return this.fOtherBundles;
        }
        IResolvedBundle[] allBundles = this.getAllBundles();
        HashMap<String, IResolvedBundle> remaining = new HashMap<String, IResolvedBundle>();
        int i = 0;
        while (i < allBundles.length) {
            remaining.put(allBundles[i].getBundleInfo().getSymbolicName(), allBundles[i]);
            ++i;
        }
        IFeatureModel[] features = this.getAllFeatures();
        int i2 = 0;
        while (i2 < features.length) {
            IFeaturePlugin[] plugins = features[i2].getFeature().getPlugins();
            int j = 0;
            while (j < plugins.length) {
                remaining.remove(plugins[j].getId());
                ++j;
            }
            ++i2;
        }
        Collection values = remaining.values();
        this.fOtherBundles = values.toArray(new IResolvedBundle[values.size()]);
        return this.fOtherBundles;
    }

    public Set getFeaturesAndBundles() {
        int j;
        if (!this.isResolved()) {
            return null;
        }
        IFeatureModel[] allFeatures = this.getAllFeatures();
        IResolvedBundle[] allExtraBundles = this.getOtherBundles();
        NameVersionDescriptor[] included = this.getIncluded();
        NameVersionDescriptor[] optional = this.getOptional();
        if (included == null && optional == null) {
            HashSet<Object> result = new HashSet<Object>();
            result.addAll(Arrays.asList(allFeatures));
            result.addAll(Arrays.asList(allExtraBundles));
            return result;
        }
        HashSet<Object> result = new HashSet<Object>();
        int i = 0;
        while (i < included.length) {
            if (included[i].getType() == "plugin") {
                j = 0;
                while (j < allExtraBundles.length) {
                    if (allExtraBundles[j].getBundleInfo().getSymbolicName().equals(included[i].getId())) {
                        result.add(allExtraBundles[j]);
                    }
                    ++j;
                }
            } else if (included[i].getType() == "feature") {
                j = 0;
                while (j < allFeatures.length) {
                    if (allFeatures[j].getFeature().getId().equals(included[i].getId())) {
                        result.add(allFeatures[j]);
                    }
                    ++j;
                }
            }
            ++i;
        }
        if (optional != null) {
            i = 0;
            while (i < optional.length) {
                j = 0;
                while (j < allExtraBundles.length) {
                    if (allExtraBundles[j].getBundleInfo().getSymbolicName().equals(optional[i].getId())) {
                        result.add(allExtraBundles[j]);
                    }
                    ++j;
                }
                ++i;
            }
        }
        return result;
    }

    public int getUIMode() {
        return this.fUIMode;
    }

    public void setUIMode(int mode) {
        this.fUIMode = mode;
    }

    public int getSequenceNumber() {
        return this.fSequenceNumber;
    }

    public int incrementSequenceNumber() {
        return ++this.fSequenceNumber;
    }

    void setSequenceNumber(int value) {
        this.fSequenceNumber = value;
    }
}

