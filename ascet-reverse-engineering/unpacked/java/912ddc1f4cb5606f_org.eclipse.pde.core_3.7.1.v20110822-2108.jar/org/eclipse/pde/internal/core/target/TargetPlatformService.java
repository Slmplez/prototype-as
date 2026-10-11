/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResourceProxy
 *  org.eclipse.core.resources.IResourceProxyVisitor
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.target;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDEPreferencesManager;
import org.eclipse.pde.internal.core.PluginModelManager;
import org.eclipse.pde.internal.core.TargetDefinitionManager;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.target.AbstractTargetHandle;
import org.eclipse.pde.internal.core.target.DirectoryBundleContainer;
import org.eclipse.pde.internal.core.target.ExternalFileTargetHandle;
import org.eclipse.pde.internal.core.target.FeatureBundleContainer;
import org.eclipse.pde.internal.core.target.IUBundleContainer;
import org.eclipse.pde.internal.core.target.LocalTargetHandle;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.pde.internal.core.target.ProfileBundleContainer;
import org.eclipse.pde.internal.core.target.TargetDefinition;
import org.eclipse.pde.internal.core.target.WorkspaceFileTargetHandle;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.IResolvedBundle;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.ITargetHandle;
import org.eclipse.pde.internal.core.target.provisional.ITargetPlatformService;
import org.eclipse.pde.internal.core.target.provisional.NameVersionDescriptor;

public class TargetPlatformService
implements ITargetPlatformService {
    private static ITargetPlatformService fgDefault;
    private static Map fExtTargetHandles;

    private TargetPlatformService() {
    }

    public static synchronized ITargetPlatformService getDefault() {
        if (fgDefault == null) {
            fgDefault = new TargetPlatformService();
        }
        return fgDefault;
    }

    public void deleteTarget(ITargetHandle handle) throws CoreException {
        if (handle instanceof ExternalFileTargetHandle) {
            fExtTargetHandles.remove(((ExternalFileTargetHandle)handle).getLocation());
        }
        ((AbstractTargetHandle)handle).delete();
    }

    public ITargetHandle getTarget(IFile file) {
        return new WorkspaceFileTargetHandle(file);
    }

    public ITargetHandle getTarget(String memento) throws CoreException {
        try {
            URI uri = new URI(memento);
            String scheme = uri.getScheme();
            if ("resource".equals(scheme)) {
                return WorkspaceFileTargetHandle.restoreHandle(uri);
            }
            if ("local".equals(scheme)) {
                return LocalTargetHandle.restoreHandle(uri);
            }
            if ("file".equals(scheme)) {
                return ExternalFileTargetHandle.restoreHandle(uri);
            }
        }
        catch (URISyntaxException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.TargetPlatformService_0, (Throwable)e));
        }
        throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.TargetPlatformService_1, null));
    }

    public ITargetHandle getTarget(URI uri) {
        if (fExtTargetHandles == null) {
            fExtTargetHandles = new HashMap(10);
        }
        if (fExtTargetHandles.containsKey(uri)) {
            return (ITargetHandle)fExtTargetHandles.get(uri);
        }
        ExternalFileTargetHandle externalTarget = new ExternalFileTargetHandle(uri);
        fExtTargetHandles.put(uri, externalTarget);
        return externalTarget;
    }

    public ITargetHandle[] getTargets(IProgressMonitor monitor) {
        List local = this.findLocalTargetDefinitions();
        List ws = this.findWorkspaceTargetDefinitions();
        local.addAll(ws);
        if (fExtTargetHandles != null) {
            Collection externalTargets = fExtTargetHandles.values();
            Iterator iterator = externalTargets.iterator();
            while (iterator.hasNext()) {
                ExternalFileTargetHandle target = (ExternalFileTargetHandle)iterator.next();
                if (!target.exists()) continue;
                local.add(target);
            }
        } else {
            PDEPreferencesManager preferences = PDECore.getDefault().getPreferencesManager();
            String memento = preferences.getString("workspace_target_handle");
            if (memento != null && memento.length() != 0 && !memento.equals("NO_TARGET")) {
                try {
                    URI uri = new URI(memento);
                    String scheme = uri.getScheme();
                    if ("file".equals(scheme)) {
                        ITargetHandle target = this.getTarget(uri);
                        local.add(target);
                    }
                }
                catch (URISyntaxException uRISyntaxException) {}
            }
        }
        return local.toArray(new ITargetHandle[local.size()]);
    }

    private List findLocalTargetDefinitions() {
        IPath containerPath = LocalTargetHandle.LOCAL_TARGET_CONTAINER_PATH;
        ArrayList<ITargetHandle> handles = new ArrayList<ITargetHandle>(10);
        final File directory = containerPath.toFile();
        if (directory.isDirectory()) {
            FilenameFilter filter = new FilenameFilter(){

                public boolean accept(File dir, String name) {
                    return dir.equals(directory) && name.endsWith("target");
                }
            };
            File[] files = directory.listFiles(filter);
            int i = 0;
            while (i < files.length) {
                try {
                    handles.add(LocalTargetHandle.restoreHandle(files[i].toURI()));
                }
                catch (CoreException e) {
                    PDECore.log(e);
                }
                ++i;
            }
        }
        return handles;
    }

    private List findWorkspaceTargetDefinitions() {
        ArrayList files = new ArrayList(10);
        ResourceProxyVisitor visitor = new ResourceProxyVisitor(files);
        try {
            ResourcesPlugin.getWorkspace().getRoot().accept((IResourceProxyVisitor)visitor, 0);
        }
        catch (CoreException e) {
            PDECore.log(e);
            return new ArrayList(0);
        }
        Iterator iter = files.iterator();
        ArrayList<WorkspaceFileTargetHandle> handles = new ArrayList<WorkspaceFileTargetHandle>(files.size());
        while (iter.hasNext()) {
            IFile file = (IFile)iter.next();
            handles.add(new WorkspaceFileTargetHandle(file));
        }
        return handles;
    }

    public IBundleContainer newDirectoryContainer(String path) {
        return new DirectoryBundleContainer(path);
    }

    public IBundleContainer newProfileContainer(String home, String configurationLocation) {
        return new ProfileBundleContainer(home, configurationLocation);
    }

    public ITargetDefinition newTarget() {
        return new TargetDefinition(new LocalTargetHandle());
    }

    public void saveTargetDefinition(ITargetDefinition definition) throws CoreException {
        ((AbstractTargetHandle)definition.getHandle()).save(definition);
    }

    public IBundleContainer newFeatureContainer(String home, String id, String version) {
        return new FeatureBundleContainer(home, id, version);
    }

    public ITargetHandle getWorkspaceTargetHandle() throws CoreException {
        PDEPreferencesManager preferences;
        String memento;
        PluginModelManager manager = PDECore.getDefault().getModelManager();
        if (!manager.isInitialized()) {
            manager.getExternalModelManager();
        }
        if ((memento = (preferences = PDECore.getDefault().getPreferencesManager()).getString("workspace_target_handle")) != null && memento.length() != 0 && !memento.equals("NO_TARGET")) {
            return this.getTarget(memento);
        }
        return null;
    }

    public void copyTargetDefinition(ITargetDefinition from, ITargetDefinition to) throws CoreException {
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        ((TargetDefinition)from).write(outputStream);
        ByteArrayInputStream inputStream = new ByteArrayInputStream(outputStream.toByteArray());
        ((TargetDefinition)to).setContents(inputStream);
    }

    public void loadTargetDefinition(ITargetDefinition definition, String targetExtensionId) throws CoreException {
        IConfigurationElement elem = PDECore.getDefault().getTargetProfileManager().getTarget(targetExtensionId);
        if (elem == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.TargetPlatformService_2, (Object)targetExtensionId)));
        }
        String path = elem.getAttribute("definition");
        String symbolicName = elem.getDeclaringExtension().getNamespaceIdentifier();
        URL url = TargetDefinitionManager.getResourceURL(symbolicName, path);
        if (url != null) {
            try {
                ((TargetDefinition)definition).setContents(new BufferedInputStream(url.openStream()));
            }
            catch (IOException e) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.TargetPlatformService_3, (Object)path), (Throwable)e));
            }
        } else {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.TargetPlatformService_4, (Object)path)));
        }
    }

    public void loadTargetDefinitionFromPreferences(ITargetDefinition target) throws CoreException {
        PDEPreferencesManager preferences = PDECore.getDefault().getPreferencesManager();
        this.initializeArgumentsInfo(preferences, target);
        this.initializeEnvironmentInfo(preferences, target);
        this.initializeImplicitInfo(preferences, target);
        this.initializeLocationInfo(preferences, target);
        this.initializeAdditionalLocsInfo(preferences, target);
        this.initializeJREInfo(target);
        this.initializePluginContent(preferences, target);
    }

    private String getValueOrNull(String value) {
        if (value == null) {
            return null;
        }
        if (value.length() == 0) {
            return null;
        }
        return value;
    }

    private void initializeArgumentsInfo(PDEPreferencesManager preferences, ITargetDefinition target) {
        target.setProgramArguments(this.getValueOrNull(preferences.getString("program_args")));
        StringBuffer result = new StringBuffer();
        String vmArgs = this.getValueOrNull(preferences.getString("vm_args"));
        if (vmArgs != null) {
            result.append(vmArgs);
        }
        if (preferences.getBoolean("vm_launcher_ini")) {
            result.append(TargetPlatformHelper.getIniVMArgs());
        }
        if (result.length() == 0) {
            target.setVMArguments(null);
        } else {
            target.setVMArguments(result.toString());
        }
    }

    private void initializeEnvironmentInfo(PDEPreferencesManager preferences, ITargetDefinition target) {
        target.setOS(this.getValueOrNull(preferences.getString("org.eclipse.pde.ui.os")));
        target.setWS(this.getValueOrNull(preferences.getString("org.eclipse.pde.ui.ws")));
        target.setNL(this.getValueOrNull(preferences.getString("org.eclipse.pde.ui.nl")));
        target.setArch(this.getValueOrNull(preferences.getString("org.eclipse.pde.ui.arch")));
    }

    private void initializeImplicitInfo(PDEPreferencesManager preferences, ITargetDefinition target) {
        String value = preferences.getString("implicit_dependencies");
        if (value.length() > 0) {
            StringTokenizer tokenizer = new StringTokenizer(value, ",");
            NameVersionDescriptor[] plugins = new NameVersionDescriptor[tokenizer.countTokens()];
            int i = 0;
            while (tokenizer.hasMoreTokens()) {
                String id = tokenizer.nextToken();
                plugins[i++] = new NameVersionDescriptor(id, null);
            }
            target.setImplicitDependencies(plugins);
        }
    }

    private void initializeLocationInfo(PDEPreferencesManager preferences, ITargetDefinition target) {
        Path configPath;
        Path installPath;
        URL url;
        Location location;
        boolean useThis = preferences.getString("target_mode").equals("useThis");
        boolean profile = preferences.getBoolean("target_platform_realization");
        String home = null;
        Location configArea = Platform.getConfigurationLocation();
        String configLocation = null;
        if (configArea != null) {
            configLocation = configArea.getURL().getFile();
        }
        if (configLocation != null && (location = Platform.getInstallLocation()) != null && (url = location.getURL()) != null && (installPath = new Path(url.getFile())).isPrefixOf((IPath)(configPath = new Path(configLocation)))) {
            configPath = configPath.removeFirstSegments(installPath.segmentCount());
            if ((configPath = configPath.setDevice(null)).segmentCount() == 1 && configPath.lastSegment().equals("configuration")) {
                configLocation = null;
            }
        }
        home = useThis ? "${eclipse_home}" : preferences.getString("platform_path");
        IBundleContainer primary = null;
        primary = profile ? this.newProfileContainer(home, configLocation) : this.newDirectoryContainer(home);
        target.setName(Messages.TargetPlatformService_5);
        target.setBundleContainers(new IBundleContainer[]{primary});
    }

    private void initializeAdditionalLocsInfo(PDEPreferencesManager preferences, ITargetDefinition target) {
        String additional = preferences.getString("additional_locations");
        StringTokenizer tokenizer = new StringTokenizer(additional, ",");
        int size = tokenizer.countTokens();
        if (size > 0) {
            IBundleContainer[] locations = new IBundleContainer[size + 1];
            locations[0] = target.getBundleContainers()[0];
            int i = 1;
            while (tokenizer.hasMoreTokens()) {
                locations[i++] = this.newDirectoryContainer(tokenizer.nextToken().trim());
            }
            target.setBundleContainers(locations);
        }
    }

    private void initializeJREInfo(ITargetDefinition target) {
        target.setJREContainer(null);
    }

    private void initializePluginContent(PDEPreferencesManager preferences, ITargetDefinition target) {
        String value = preferences.getString("checkedPlugins");
        if (value.length() == 0 || value.equals("[savedNone]")) {
            target.setBundleContainers(null);
            return;
        }
        if (!value.equals("[savedAll]")) {
            IPluginModelBase[] models = PluginRegistry.getExternalModels();
            ArrayList<NameVersionDescriptor> list = new ArrayList<NameVersionDescriptor>(models.length);
            HashSet<String> disabledIDs = new HashSet<String>();
            int i = 0;
            while (i < models.length) {
                if (!models[i].isEnabled()) {
                    disabledIDs.add(models[i].getPluginBase().getId());
                }
                ++i;
            }
            i = 0;
            while (i < models.length) {
                String id;
                if (models[i].isEnabled() && (id = models[i].getPluginBase().getId()) != null) {
                    if (disabledIDs.contains(id)) {
                        list.add(new NameVersionDescriptor(id, models[i].getPluginBase().getVersion()));
                    } else {
                        list.add(new NameVersionDescriptor(id, null));
                    }
                }
                ++i;
            }
            if (list.size() > 0) {
                target.setIncluded(list.toArray(new NameVersionDescriptor[list.size()]));
            }
        }
    }

    public ITargetDefinition newDefaultTargetDefinition() {
        Path configPath;
        Path installPath;
        URL url;
        Location location;
        ITargetDefinition target = this.newTarget();
        Location configArea = Platform.getConfigurationLocation();
        String configLocation = null;
        if (configArea != null) {
            configLocation = configArea.getURL().getFile();
        }
        if (configLocation != null && (location = Platform.getInstallLocation()) != null && (url = location.getURL()) != null && (installPath = new Path(url.getFile())).isPrefixOf((IPath)(configPath = new Path(configLocation)))) {
            configPath = configPath.removeFirstSegments(installPath.segmentCount());
            if ((configPath = configPath.setDevice(null)).segmentCount() == 1 && configPath.lastSegment().equals("configuration")) {
                configLocation = null;
            }
        }
        IBundleContainer container = this.newProfileContainer("${eclipse_home}", configLocation);
        target.setBundleContainers(new IBundleContainer[]{container});
        target.setName(Messages.TargetPlatformService_7);
        PDEPreferencesManager preferences = PDECore.getDefault().getPreferencesManager();
        String value = this.getValueOrNull(preferences.getDefaultString("org.eclipse.pde.ui.arch"));
        target.setArch(value);
        value = this.getValueOrNull(preferences.getDefaultString("org.eclipse.pde.ui.os"));
        target.setOS(value);
        value = this.getValueOrNull(preferences.getDefaultString("org.eclipse.pde.ui.ws"));
        target.setWS(value);
        value = this.getValueOrNull(preferences.getDefaultString("org.eclipse.pde.ui.nl"));
        target.setNL(value);
        IBundleContainer[] containers = target.getBundleContainers();
        StringBuffer arguments = new StringBuffer("");
        int i = 0;
        while (i < containers.length) {
            String[] vmargs = containers[i].getVMArguments();
            if (vmargs != null) {
                int j = 0;
                while (j < vmargs.length) {
                    arguments.append(vmargs[j]).append(' ');
                    ++j;
                }
            }
            ++i;
        }
        target.setVMArguments(arguments.toString().trim());
        return target;
    }

    public IStatus compareWithTargetPlatform(ITargetDefinition target) throws CoreException {
        if (!target.isResolved()) {
            return null;
        }
        IPluginModelBase[] models = PDECore.getDefault().getModelManager().getExternalModels();
        HashSet<String> allLocations = new HashSet<String>(models.length);
        HashMap<String, IPluginModelBase> stateLocations = new HashMap<String, IPluginModelBase>(models.length);
        int i = 0;
        while (i < models.length) {
            IPluginModelBase base = models[i];
            allLocations.add(base.getInstallLocation());
            stateLocations.put(base.getInstallLocation(), base);
            ++i;
        }
        MultiStatus multi = new MultiStatus("org.eclipse.pde.core", 0, "", null);
        IResolvedBundle[] bundles = target.getAllBundles();
        HashSet<NameVersionDescriptor> alreadyConsidered = new HashSet<NameVersionDescriptor>(bundles.length);
        int i2 = 0;
        while (i2 < bundles.length) {
            IResolvedBundle bundle = bundles[i2];
            BundleInfo info = bundle.getBundleInfo();
            File file = URIUtil.toFile((URI)info.getLocation());
            String location = file.getAbsolutePath();
            stateLocations.remove(location);
            NameVersionDescriptor desc = new NameVersionDescriptor(info.getSymbolicName(), info.getVersion());
            if (!alreadyConsidered.contains(desc)) {
                IStatus status;
                alreadyConsidered.add(desc);
                if (!allLocations.contains(location) && ((status = bundle.getStatus()).isOK() || status.getCode() != 100 && status.getCode() != 110 && status.getCode() != 101)) {
                    Status s = new Status(2, "org.eclipse.pde.core", 1, bundle.getBundleInfo().getSymbolicName(), null);
                    multi.add((IStatus)s);
                }
            }
            ++i2;
        }
        Iterator iterator = stateLocations.values().iterator();
        while (iterator.hasNext()) {
            IPluginModelBase model = (IPluginModelBase)iterator.next();
            Status status = new Status(2, "org.eclipse.pde.core", 2, model.getPluginBase().getId(), null);
            multi.add((IStatus)status);
        }
        if (multi.isOK()) {
            return Status.OK_STATUS;
        }
        return multi;
    }

    public IBundleContainer newIUContainer(IInstallableUnit[] units, URI[] repositories, int resolutionFlags) {
        return new IUBundleContainer(units, repositories, resolutionFlags);
    }

    public IBundleContainer newIUContainer(String[] unitIds, String[] versions, URI[] repositories, int resolutionFlags) {
        return new IUBundleContainer(unitIds, versions, repositories, resolutionFlags);
    }

    class ResourceProxyVisitor
    implements IResourceProxyVisitor {
        private List fList;

        protected ResourceProxyVisitor(List list) {
            this.fList = list;
        }

        public boolean visit(IResourceProxy proxy) {
            if (proxy.getType() == 1) {
                if ("target".equalsIgnoreCase(new Path(proxy.getName()).getFileExtension())) {
                    this.fList.add(proxy.requestResource());
                }
                return false;
            }
            return true;
        }
    }
}

