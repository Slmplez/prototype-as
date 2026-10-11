/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.preferences.BundleDefaultsScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.core.variables.IStringVariableManager
 *  org.eclipse.core.variables.VariablesPlugin
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.debug.core.sourcelookup.ISourceContainer
 *  org.eclipse.jdt.core.IClasspathAttribute
 *  org.eclipse.jdt.core.IClasspathContainer
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaModel
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.jdt.launching;

import com.ibm.icu.text.MessageFormat;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.StringReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.xml.parsers.DocumentBuilder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.preferences.BundleDefaultsScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.core.variables.IStringVariableManager;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.launching.CompositeId;
import org.eclipse.jdt.internal.launching.DefaultEntryResolver;
import org.eclipse.jdt.internal.launching.DefaultProjectClasspathEntry;
import org.eclipse.jdt.internal.launching.EEVMType;
import org.eclipse.jdt.internal.launching.JREContainerInitializer;
import org.eclipse.jdt.internal.launching.JavaSourceLookupUtil;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.internal.launching.RuntimeClasspathEntry;
import org.eclipse.jdt.internal.launching.RuntimeClasspathEntryResolver;
import org.eclipse.jdt.internal.launching.RuntimeClasspathProvider;
import org.eclipse.jdt.internal.launching.SocketAttachConnector;
import org.eclipse.jdt.internal.launching.VMDefinitionsContainer;
import org.eclipse.jdt.internal.launching.VMListener;
import org.eclipse.jdt.internal.launching.VariableClasspathEntry;
import org.eclipse.jdt.internal.launching.environments.EnvironmentsManager;
import org.eclipse.jdt.launching.AbstractVMInstallType;
import org.eclipse.jdt.launching.IJavaLaunchConfigurationConstants;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry2;
import org.eclipse.jdt.launching.IRuntimeClasspathEntryResolver;
import org.eclipse.jdt.launching.IRuntimeClasspathEntryResolver2;
import org.eclipse.jdt.launching.IRuntimeClasspathProvider;
import org.eclipse.jdt.launching.IVMConnector;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstall2;
import org.eclipse.jdt.launching.IVMInstallChangedListener;
import org.eclipse.jdt.launching.IVMInstallType;
import org.eclipse.jdt.launching.LibraryLocation;
import org.eclipse.jdt.launching.PropertyChangeEvent;
import org.eclipse.jdt.launching.StandardClasspathProvider;
import org.eclipse.jdt.launching.StandardSourcePathProvider;
import org.eclipse.jdt.launching.VMStandin;
import org.eclipse.jdt.launching.environments.ExecutionEnvironmentDescription;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.eclipse.jdt.launching.environments.IExecutionEnvironmentsManager;
import org.osgi.service.prefs.BackingStoreException;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public final class JavaRuntime {
    public static final String JRELIB_VARIABLE = "JRE_LIB";
    public static final String JRESRC_VARIABLE = "JRE_SRC";
    public static final String JRESRCROOT_VARIABLE = "JRE_SRCROOT";
    public static final String EXTENSION_POINT_RUNTIME_CLASSPATH_ENTRY_RESOLVERS = "runtimeClasspathEntryResolvers";
    public static final String EXTENSION_POINT_RUNTIME_CLASSPATH_PROVIDERS = "classpathProviders";
    public static final String EXTENSION_POINT_EXECUTION_ENVIRONMENTS = "executionEnvironments";
    public static final String EXTENSION_POINT_VM_INSTALLS = "vmInstalls";
    public static final String JRE_CONTAINER = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".JRE_CONTAINER";
    public static final String JRE_CONTAINER_MARKER = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".jreContainerMarker";
    public static final int ERR_UNABLE_TO_RESOLVE_JRE = 160;
    public static final String PREF_CONNECT_TIMEOUT = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".PREF_CONNECT_TIMEOUT";
    public static final String PREF_VM_XML = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".PREF_VM_XML";
    public static final String PREF_STRICTLY_COMPATIBLE_JRE_NOT_AVAILABLE = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".PREF_STRICTLY_COMPATIBLE_JRE_NOT_AVAILABLE";
    public static final String ID_PLUGIN = "org.eclipse.jdt.launching";
    public static final int DEF_CONNECT_TIMEOUT = 20000;
    public static final String ATTR_CMDLINE = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".launcher.cmdLine";
    public static final String CLASSPATH_ATTR_LIBRARY_PATH_ENTRY = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".CLASSPATH_ATTR_LIBRARY_PATH_ENTRY";
    private static Object fgVMLock = new Object();
    private static boolean fgInitializingVMs = false;
    private static HashSet fgVMTypes = null;
    private static String fgDefaultVMId = null;
    private static String fgDefaultVMConnectorId = null;
    private static Map fgVariableResolvers = null;
    private static Map fgContainerResolvers = null;
    private static Map fgRuntimeClasspathEntryResolvers = null;
    private static Map fgPathProviders = null;
    private static IRuntimeClasspathProvider fgDefaultClasspathProvider = new StandardClasspathProvider();
    private static IRuntimeClasspathProvider fgDefaultSourcePathProvider = new StandardSourcePathProvider();
    private static ListenerList fgVMListeners = new ListenerList();
    private static ThreadLocal fgProjects = new ThreadLocal();
    private static ThreadLocal fgEntryCount = new ThreadLocal();
    private static Set fgContributedVMs = new HashSet();

    private JavaRuntime() {
    }

    private static void initializeVMTypeExtensions() {
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(ID_PLUGIN, "vmInstallTypes");
        if (extensionPoint != null) {
            IConfigurationElement[] configs = extensionPoint.getConfigurationElements();
            MultiStatus status = new MultiStatus(LaunchingPlugin.getUniqueIdentifier(), 0, "Exceptions occurred", null);
            fgVMTypes = new HashSet();
            int i = 0;
            while (i < configs.length) {
                try {
                    fgVMTypes.add(configs[i].createExecutableExtension("class"));
                }
                catch (CoreException e) {
                    status.add(e.getStatus());
                }
                ++i;
            }
            if (!status.isOK()) {
                LaunchingPlugin.log((IStatus)status);
            }
        } else {
            LaunchingPlugin.log((IStatus)new Status(4, LaunchingPlugin.getUniqueIdentifier(), "VM Install extension point not found", null));
        }
    }

    public static IVMInstall getVMInstall(IJavaProject project) throws CoreException {
        IVMInstall vm = null;
        IClasspathEntry[] classpath = project.getRawClasspath();
        IRuntimeClasspathEntryResolver2 resolver = null;
        IClasspathEntry entry = null;
        int i = 0;
        while (i < classpath.length) {
            entry = classpath[i];
            switch (entry.getEntryKind()) {
                case 4: {
                    resolver = JavaRuntime.getVariableResolver(entry.getPath().segment(0));
                    if (resolver == null) break;
                    vm = resolver.resolveVMInstall(entry);
                    break;
                }
                case 5: {
                    resolver = JavaRuntime.getContainerResolver(entry.getPath().segment(0));
                    if (resolver == null) break;
                    vm = resolver.resolveVMInstall(entry);
                }
            }
            if (vm != null) {
                return vm;
            }
            ++i;
        }
        return null;
    }

    public static IVMInstallType getVMInstallType(String id) {
        IVMInstallType[] vmTypes = JavaRuntime.getVMInstallTypes();
        int i = 0;
        while (i < vmTypes.length) {
            if (vmTypes[i].getId().equals(id)) {
                return vmTypes[i];
            }
            ++i;
        }
        return null;
    }

    public static void setDefaultVMInstall(IVMInstall vm, IProgressMonitor monitor) throws CoreException {
        JavaRuntime.setDefaultVMInstall(vm, monitor, true);
    }

    public static void setDefaultVMInstall(IVMInstall vm, IProgressMonitor monitor, boolean savePreference) throws CoreException {
        IVMInstall previous = null;
        if (fgDefaultVMId != null) {
            previous = JavaRuntime.getVMFromCompositeId(fgDefaultVMId);
        }
        fgDefaultVMId = JavaRuntime.getCompositeIdFromVM(vm);
        if (savePreference) {
            JavaRuntime.saveVMConfiguration();
        }
        IVMInstall current = null;
        if (fgDefaultVMId != null) {
            current = JavaRuntime.getVMFromCompositeId(fgDefaultVMId);
        }
        if (previous != current) {
            JavaRuntime.notifyDefaultVMChanged(previous, current);
        }
    }

    public static void setDefaultVMConnector(IVMConnector connector, IProgressMonitor monitor) throws CoreException {
        fgDefaultVMConnectorId = connector.getIdentifier();
        JavaRuntime.saveVMConfiguration();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static IVMInstall getDefaultVMInstall() {
        File location;
        IVMInstall install = JavaRuntime.getVMFromCompositeId(JavaRuntime.getDefaultVMId());
        if (install != null && (location = install.getInstallLocation()) != null && location.exists()) {
            return install;
        }
        if (install != null) {
            install.getVMInstallType().disposeVMInstall(install.getId());
        }
        Object object = fgVMLock;
        synchronized (object) {
            fgDefaultVMId = null;
            fgVMTypes = null;
            JavaRuntime.initializeVMs();
        }
        return JavaRuntime.getVMFromCompositeId(JavaRuntime.getDefaultVMId());
    }

    public static IVMConnector getDefaultVMConnector() {
        String id = JavaRuntime.getDefaultVMConnectorId();
        IVMConnector connector = null;
        if (id != null) {
            connector = JavaRuntime.getVMConnector(id);
        }
        if (connector == null) {
            connector = new SocketAttachConnector();
        }
        return connector;
    }

    public static IVMInstallType[] getVMInstallTypes() {
        JavaRuntime.initializeVMs();
        return fgVMTypes.toArray(new IVMInstallType[fgVMTypes.size()]);
    }

    private static String getDefaultVMId() {
        JavaRuntime.initializeVMs();
        return fgDefaultVMId;
    }

    private static String getDefaultVMConnectorId() {
        JavaRuntime.initializeVMs();
        return fgDefaultVMConnectorId;
    }

    public static String getCompositeIdFromVM(IVMInstall vm) {
        if (vm == null) {
            return null;
        }
        IVMInstallType vmType = vm.getVMInstallType();
        String typeID = vmType.getId();
        CompositeId id = new CompositeId(new String[]{typeID, vm.getId()});
        return id.toString();
    }

    public static IVMInstall getVMFromCompositeId(String idString) {
        IVMInstallType vmType;
        if (idString == null || idString.length() == 0) {
            return null;
        }
        CompositeId id = CompositeId.fromString(idString);
        if (id.getPartCount() == 2 && (vmType = JavaRuntime.getVMInstallType(id.get(0))) != null) {
            return vmType.findVMInstall(id.get(1));
        }
        return null;
    }

    public static IRuntimeClasspathEntry newStringVariableClasspathEntry(String expression) {
        return new VariableClasspathEntry(expression);
    }

    public static IRuntimeClasspathEntry newDefaultProjectClasspathEntry(IJavaProject project) {
        return new DefaultProjectClasspathEntry(project);
    }

    public static IRuntimeClasspathEntry newProjectRuntimeClasspathEntry(IJavaProject project) {
        return JavaRuntime.newRuntimeClasspathEntry(JavaCore.newProjectEntry((IPath)project.getProject().getFullPath()));
    }

    public static IRuntimeClasspathEntry newArchiveRuntimeClasspathEntry(IResource resource) {
        return JavaRuntime.newRuntimeClasspathEntry(JavaCore.newLibraryEntry((IPath)resource.getFullPath(), null, null));
    }

    public static IRuntimeClasspathEntry newArchiveRuntimeClasspathEntry(IPath path) {
        return JavaRuntime.newRuntimeClasspathEntry(JavaCore.newLibraryEntry((IPath)path, null, null));
    }

    public static IRuntimeClasspathEntry newVariableRuntimeClasspathEntry(IPath path) {
        return JavaRuntime.newRuntimeClasspathEntry(JavaCore.newVariableEntry((IPath)path, null, null));
    }

    public static IRuntimeClasspathEntry newRuntimeContainerClasspathEntry(IPath path, int classpathProperty) throws CoreException {
        return JavaRuntime.newRuntimeContainerClasspathEntry(path, classpathProperty, null);
    }

    public static IRuntimeClasspathEntry newRuntimeContainerClasspathEntry(IPath path, int classpathProperty, IJavaProject project) throws CoreException {
        RuntimeClasspathEntry entry = new RuntimeClasspathEntry(JavaCore.newContainerEntry((IPath)path), classpathProperty);
        entry.setJavaProject(project);
        return entry;
    }

    public static IRuntimeClasspathEntry newRuntimeClasspathEntry(String memento) throws CoreException {
        try {
            Element root = null;
            DocumentBuilder parser = LaunchingPlugin.getParser();
            StringReader reader = new StringReader(memento);
            InputSource source = new InputSource(reader);
            root = parser.parse(source).getDocumentElement();
            String id = root.getAttribute("id");
            if (id == null || id.length() == 0) {
                return new RuntimeClasspathEntry(root);
            }
            IRuntimeClasspathEntry2 entry = LaunchingPlugin.getDefault().newRuntimeClasspathEntry(id);
            NodeList list = root.getChildNodes();
            Node node = null;
            Element element = null;
            int i = 0;
            while (i < list.getLength()) {
                node = list.item(i);
                if (node.getNodeType() == 1 && "memento".equals((element = (Element)node).getNodeName())) {
                    entry.initializeFrom(element);
                }
                ++i;
            }
            return entry;
        }
        catch (SAXException e) {
            JavaRuntime.abort(LaunchingMessages.JavaRuntime_32, e);
        }
        catch (IOException e) {
            JavaRuntime.abort(LaunchingMessages.JavaRuntime_32, e);
        }
        return null;
    }

    private static IRuntimeClasspathEntry newRuntimeClasspathEntry(IClasspathEntry entry) {
        return new RuntimeClasspathEntry(entry);
    }

    public static IRuntimeClasspathEntry[] computeUnresolvedRuntimeClasspath(IJavaProject project) throws CoreException {
        IClasspathEntry[] entries = project.getRawClasspath();
        ArrayList<IRuntimeClasspathEntry> classpathEntries = new ArrayList<IRuntimeClasspathEntry>(3);
        int i = 0;
        while (i < entries.length) {
            IClasspathEntry entry = entries[i];
            switch (entry.getEntryKind()) {
                case 5: {
                    IClasspathContainer container = JavaCore.getClasspathContainer((IPath)entry.getPath(), (IJavaProject)project);
                    if (container == null) break;
                    switch (container.getKind()) {
                        case 1: {
                            break;
                        }
                        case 3: {
                            classpathEntries.add(JavaRuntime.newRuntimeContainerClasspathEntry(container.getPath(), 1, project));
                            break;
                        }
                        case 2: {
                            classpathEntries.add(JavaRuntime.newRuntimeContainerClasspathEntry(container.getPath(), 2, project));
                        }
                    }
                    break;
                }
                case 4: {
                    if (!JRELIB_VARIABLE.equals(entry.getPath().segment(0))) break;
                    IRuntimeClasspathEntry jre = JavaRuntime.newVariableRuntimeClasspathEntry(entry.getPath());
                    jre.setClasspathProperty(1);
                    classpathEntries.add(jre);
                    break;
                }
            }
            ++i;
        }
        classpathEntries.add(JavaRuntime.newDefaultProjectClasspathEntry(project));
        return classpathEntries.toArray(new IRuntimeClasspathEntry[classpathEntries.size()]);
    }

    public static IRuntimeClasspathEntry[] computeUnresolvedSourceLookupPath(ILaunchConfiguration configuration) throws CoreException {
        return JavaRuntime.getSourceLookupPathProvider(configuration).computeUnresolvedClasspath(configuration);
    }

    public static IRuntimeClasspathEntry[] resolveSourceLookupPath(IRuntimeClasspathEntry[] entries, ILaunchConfiguration configuration) throws CoreException {
        return JavaRuntime.getSourceLookupPathProvider(configuration).resolveClasspath(entries, configuration);
    }

    public static IRuntimeClasspathProvider getClasspathProvider(ILaunchConfiguration configuration) throws CoreException {
        String providerId = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_CLASSPATH_PROVIDER, null);
        IRuntimeClasspathProvider provider = null;
        if (providerId == null) {
            provider = fgDefaultClasspathProvider;
        } else {
            provider = (IRuntimeClasspathProvider)JavaRuntime.getClasspathProviders().get(providerId);
            if (provider == null) {
                JavaRuntime.abort(MessageFormat.format((String)LaunchingMessages.JavaRuntime_26, (Object[])new String[]{providerId}), null);
            }
        }
        return provider;
    }

    public static IRuntimeClasspathProvider getSourceLookupPathProvider(ILaunchConfiguration configuration) throws CoreException {
        String providerId = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_SOURCE_PATH_PROVIDER, null);
        IRuntimeClasspathProvider provider = null;
        if (providerId == null) {
            provider = fgDefaultSourcePathProvider;
        } else {
            provider = (IRuntimeClasspathProvider)JavaRuntime.getClasspathProviders().get(providerId);
            if (provider == null) {
                JavaRuntime.abort(MessageFormat.format((String)LaunchingMessages.JavaRuntime_27, (Object[])new String[]{providerId}), null);
            }
        }
        return provider;
    }

    public static IRuntimeClasspathEntry[] resolveRuntimeClasspathEntry(IRuntimeClasspathEntry entry, ILaunchConfiguration configuration) throws CoreException {
        switch (entry.getType()) {
            case 1: {
                IResource resource = entry.getResource();
                if (resource instanceof IProject) {
                    IProject p = (IProject)resource;
                    IJavaProject project = JavaCore.create((IProject)p);
                    if (project == null || !p.isOpen() || !project.exists()) {
                        return new IRuntimeClasspathEntry[0];
                    }
                    IRuntimeClasspathEntry[] entries = JavaRuntime.resolveOutputLocations(project, entry.getClasspathProperty());
                    if (entries == null) break;
                    return entries;
                }
                JavaRuntime.abort(MessageFormat.format((String)LaunchingMessages.JavaRuntime_Classpath_references_non_existant_project___0__3, (Object[])new String[]{entry.getPath().lastSegment()}), null);
                break;
            }
            case 3: {
                IRuntimeClasspathEntryResolver2 resolver = JavaRuntime.getVariableResolver(entry.getVariableName());
                if (resolver == null) {
                    IRuntimeClasspathEntry[] resolved = JavaRuntime.resolveVariableEntry(entry, null, configuration);
                    if (resolved == null) break;
                    return resolved;
                }
                return resolver.resolveRuntimeClasspathEntry(entry, configuration);
            }
            case 4: {
                IRuntimeClasspathEntryResolver2 resolver = JavaRuntime.getContainerResolver(entry.getVariableName());
                if (resolver == null) {
                    return JavaRuntime.computeDefaultContainerEntries(entry, configuration);
                }
                return resolver.resolveRuntimeClasspathEntry(entry, configuration);
            }
            case 2: {
                File file;
                String location = entry.getLocation();
                if (location == null) {
                    JavaRuntime.abort(MessageFormat.format((String)LaunchingMessages.JavaRuntime_Classpath_references_non_existant_archive___0__4, (Object[])new String[]{entry.getPath().toString()}), null);
                }
                if ((file = new File(location)).exists()) break;
                JavaRuntime.abort(MessageFormat.format((String)LaunchingMessages.JavaRuntime_Classpath_references_non_existant_archive___0__4, (Object[])new String[]{entry.getPath().toString()}), null);
                break;
            }
            case 5: {
                IRuntimeClasspathEntryResolver resolver = JavaRuntime.getContributedResolver(((IRuntimeClasspathEntry2)entry).getTypeId());
                return resolver.resolveRuntimeClasspathEntry(entry, configuration);
            }
        }
        return new IRuntimeClasspathEntry[]{entry};
    }

    private static IRuntimeClasspathEntry[] resolveVariableEntry(IRuntimeClasspathEntry entry, IJavaProject project, ILaunchConfiguration configuration) throws CoreException {
        IPath archPath = JavaCore.getClasspathVariable((String)entry.getVariableName());
        if (archPath != null) {
            if (entry.getPath().segmentCount() > 1) {
                archPath = archPath.append(entry.getPath().removeFirstSegments(1));
            }
            IPath srcPath = null;
            IPath srcVar = entry.getSourceAttachmentPath();
            IPath srcRootPath = null;
            IPath srcRootVar = entry.getSourceAttachmentRootPath();
            if (archPath != null && !archPath.isEmpty()) {
                if (srcVar != null && !srcVar.isEmpty() && (srcPath = JavaCore.getClasspathVariable((String)srcVar.segment(0))) != null) {
                    if (srcVar.segmentCount() > 1) {
                        srcPath = srcPath.append(srcVar.removeFirstSegments(1));
                    }
                    if (srcRootVar != null && !srcRootVar.isEmpty() && (srcRootPath = JavaCore.getClasspathVariable((String)srcRootVar.segment(0))) != null && srcRootVar.segmentCount() > 1) {
                        srcRootPath = srcRootPath.append(srcRootVar.removeFirstSegments(1));
                    }
                }
                IClasspathEntry archEntry = JavaCore.newLibraryEntry((IPath)archPath, srcPath, srcRootPath, (boolean)entry.getClasspathEntry().isExported());
                IRuntimeClasspathEntry runtimeArchEntry = JavaRuntime.newRuntimeClasspathEntry(archEntry);
                runtimeArchEntry.setClasspathProperty(entry.getClasspathProperty());
                if (configuration == null) {
                    return JavaRuntime.resolveRuntimeClasspathEntry(runtimeArchEntry, project);
                }
                return JavaRuntime.resolveRuntimeClasspathEntry(runtimeArchEntry, configuration);
            }
        }
        return null;
    }

    private static IRuntimeClasspathEntry[] resolveOutputLocations(IJavaProject project, int classpathProperty) throws CoreException {
        ArrayList<IPath> nonDefault = new ArrayList<IPath>();
        if (project.exists() && project.getProject().isOpen()) {
            IClasspathEntry[] entries = project.getRawClasspath();
            int i = 0;
            while (i < entries.length) {
                IPath path;
                IClasspathEntry classpathEntry = entries[i];
                if (classpathEntry.getEntryKind() == 3 && (path = classpathEntry.getOutputLocation()) != null) {
                    nonDefault.add(path);
                }
                ++i;
            }
        }
        if (nonDefault.isEmpty()) {
            return null;
        }
        IPath def = project.getOutputLocation();
        if (!nonDefault.contains(def)) {
            nonDefault.add(def);
        }
        IRuntimeClasspathEntry[] locations = new IRuntimeClasspathEntry[nonDefault.size()];
        int i = 0;
        while (i < locations.length) {
            IClasspathEntry newEntry = JavaCore.newLibraryEntry((IPath)((IPath)nonDefault.get(i)), null, null);
            locations[i] = new RuntimeClasspathEntry(newEntry);
            locations[i].setClasspathProperty(classpathProperty);
            ++i;
        }
        return locations;
    }

    public static IRuntimeClasspathEntry[] resolveRuntimeClasspathEntry(IRuntimeClasspathEntry entry, IJavaProject project) throws CoreException {
        switch (entry.getType()) {
            case 1: {
                IResource resource = entry.getResource();
                if (!(resource instanceof IProject)) break;
                IProject p = (IProject)resource;
                IJavaProject jp = JavaCore.create((IProject)p);
                if (jp != null && p.isOpen() && jp.exists()) {
                    IRuntimeClasspathEntry[] entries = JavaRuntime.resolveOutputLocations(jp, entry.getClasspathProperty());
                    if (entries == null) break;
                    return entries;
                }
                return new IRuntimeClasspathEntry[0];
            }
            case 3: {
                IRuntimeClasspathEntryResolver2 resolver = JavaRuntime.getVariableResolver(entry.getVariableName());
                if (resolver == null) {
                    IRuntimeClasspathEntry[] resolved = JavaRuntime.resolveVariableEntry(entry, project, null);
                    if (resolved == null) break;
                    return resolved;
                }
                return resolver.resolveRuntimeClasspathEntry(entry, project);
            }
            case 4: {
                IRuntimeClasspathEntryResolver2 resolver = JavaRuntime.getContainerResolver(entry.getVariableName());
                if (resolver == null) {
                    return JavaRuntime.computeDefaultContainerEntries(entry, project);
                }
                return resolver.resolveRuntimeClasspathEntry(entry, project);
            }
            case 5: {
                IRuntimeClasspathEntryResolver resolver = JavaRuntime.getContributedResolver(((IRuntimeClasspathEntry2)entry).getTypeId());
                return resolver.resolveRuntimeClasspathEntry(entry, project);
            }
        }
        return new IRuntimeClasspathEntry[]{entry};
    }

    private static IRuntimeClasspathEntry[] computeDefaultContainerEntries(IRuntimeClasspathEntry entry, ILaunchConfiguration config) throws CoreException {
        IJavaProject project = entry.getJavaProject();
        if (project == null) {
            project = JavaRuntime.getJavaProject(config);
        }
        return JavaRuntime.computeDefaultContainerEntries(entry, project);
    }

    private static IRuntimeClasspathEntry[] computeDefaultContainerEntries(IRuntimeClasspathEntry entry, IJavaProject project) throws CoreException {
        if (project == null || entry == null) {
            return new IRuntimeClasspathEntry[0];
        }
        IClasspathContainer container = JavaCore.getClasspathContainer((IPath)entry.getPath(), (IJavaProject)project);
        if (container == null) {
            JavaRuntime.abort(MessageFormat.format((String)LaunchingMessages.JavaRuntime_Could_not_resolve_classpath_container___0__1, (Object[])new String[]{entry.getPath().toString()}), null);
            return null;
        }
        IClasspathEntry[] cpes = container.getClasspathEntries();
        int property = -1;
        switch (container.getKind()) {
            case 1: {
                property = 3;
                break;
            }
            case 3: {
                property = 1;
                break;
            }
            case 2: {
                property = 2;
            }
        }
        ArrayList<IRuntimeClasspathEntry> resolved = new ArrayList<IRuntimeClasspathEntry>(cpes.length);
        ArrayList<IJavaProject> projects = (ArrayList<IJavaProject>)fgProjects.get();
        Integer count = (Integer)fgEntryCount.get();
        if (projects == null) {
            projects = new ArrayList<IJavaProject>();
            fgProjects.set(projects);
            count = new Integer(0);
        }
        int intCount = count;
        fgEntryCount.set(new Integer(++intCount));
        try {
            int i = 0;
            while (i < cpes.length) {
                IClasspathEntry cpe = cpes[i];
                if (cpe.getEntryKind() == 2) {
                    IProject p = ResourcesPlugin.getWorkspace().getRoot().getProject(cpe.getPath().segment(0));
                    IJavaProject jp = JavaCore.create((IProject)p);
                    if (!projects.contains(jp)) {
                        projects.add(jp);
                        IRuntimeClasspathEntry classpath = JavaRuntime.newDefaultProjectClasspathEntry(jp);
                        IRuntimeClasspathEntry[] entries = JavaRuntime.resolveRuntimeClasspathEntry(classpath, jp);
                        int j = 0;
                        while (j < entries.length) {
                            IRuntimeClasspathEntry e = entries[j];
                            if (!resolved.contains(e)) {
                                resolved.add(entries[j]);
                            }
                            ++j;
                        }
                    }
                } else {
                    IRuntimeClasspathEntry e = JavaRuntime.newRuntimeClasspathEntry(cpe);
                    if (!resolved.contains(e)) {
                        resolved.add(e);
                    }
                }
                ++i;
            }
        }
        finally {
            if (--intCount == 0) {
                fgProjects.set(null);
                fgEntryCount.set(null);
            } else {
                fgEntryCount.set(new Integer(intCount));
            }
        }
        IRuntimeClasspathEntry[] result = new IRuntimeClasspathEntry[resolved.size()];
        int i = 0;
        while (i < result.length) {
            result[i] = (IRuntimeClasspathEntry)resolved.get(i);
            result[i].setClasspathProperty(property);
            ++i;
        }
        return result;
    }

    public static IRuntimeClasspathEntry[] computeUnresolvedRuntimeClasspath(ILaunchConfiguration configuration) throws CoreException {
        return JavaRuntime.getClasspathProvider(configuration).computeUnresolvedClasspath(configuration);
    }

    public static IRuntimeClasspathEntry[] resolveRuntimeClasspath(IRuntimeClasspathEntry[] entries, ILaunchConfiguration configuration) throws CoreException {
        return JavaRuntime.getClasspathProvider(configuration).resolveClasspath(entries, configuration);
    }

    public static IJavaProject getJavaProject(ILaunchConfiguration configuration) throws CoreException {
        String projectName = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_PROJECT_NAME, null);
        if (projectName == null || projectName.trim().length() < 1) {
            return null;
        }
        IJavaProject javaProject = JavaRuntime.getJavaModel().getJavaProject(projectName);
        if (javaProject != null && javaProject.getProject().exists() && !javaProject.getProject().isOpen()) {
            JavaRuntime.abort(MessageFormat.format((String)LaunchingMessages.JavaRuntime_28, (Object[])new String[]{configuration.getName(), projectName}), 124, null);
        }
        if (javaProject == null || !javaProject.exists()) {
            JavaRuntime.abort(MessageFormat.format((String)LaunchingMessages.JavaRuntime_Launch_configuration__0__references_non_existing_project__1___1, (Object[])new String[]{configuration.getName(), projectName}), 107, null);
        }
        return javaProject;
    }

    private static IJavaModel getJavaModel() {
        return JavaCore.create((IWorkspaceRoot)ResourcesPlugin.getWorkspace().getRoot());
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static IVMInstall computeVMInstall(ILaunchConfiguration configuration) throws CoreException {
        String jreAttr = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_JRE_CONTAINER_PATH, null);
        if (jreAttr == null) {
            String type = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_VM_INSTALL_TYPE, null);
            if (type == null) {
                IVMInstall vm;
                IJavaProject proj = JavaRuntime.getJavaProject(configuration);
                if (proj == null || (vm = JavaRuntime.getVMInstall(proj)) == null) return JavaRuntime.getDefaultVMInstall();
                return vm;
            }
            String name = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_VM_INSTALL_NAME, null);
            return JavaRuntime.resolveVM(type, name, configuration);
        }
        IPath jrePath = Path.fromPortableString((String)jreAttr);
        IClasspathEntry entry = JavaCore.newContainerEntry((IPath)jrePath);
        IRuntimeClasspathEntryResolver2 resolver = JavaRuntime.getVariableResolver(jrePath.segment(0));
        if (resolver != null) {
            return resolver.resolveVMInstall(entry);
        }
        resolver = JavaRuntime.getContainerResolver(jrePath.segment(0));
        if (resolver == null) return JavaRuntime.getDefaultVMInstall();
        return resolver.resolveVMInstall(entry);
    }

    private static IVMInstall resolveVM(String type, String name, ILaunchConfiguration configuration) throws CoreException {
        IVMInstallType vt = JavaRuntime.getVMInstallType(type);
        if (vt == null) {
            JavaRuntime.abort(MessageFormat.format((String)LaunchingMessages.JavaRuntime_Specified_VM_install_type_does_not_exist___0__2, (Object[])new String[]{type}), null);
        }
        IVMInstall vm = null;
        if (name == null) {
            LaunchingPlugin.log((IStatus)new Status(2, LaunchingPlugin.getUniqueIdentifier(), 103, MessageFormat.format((String)"VM not fully specified in launch configuration {0} - missing VM name. Reverting to default VM.", (Object[])new String[]{configuration.getName()}), null));
            return JavaRuntime.getDefaultVMInstall();
        }
        vm = vt.findVMInstallByName(name);
        if (vm != null) {
            return vm;
        }
        JavaRuntime.abort(MessageFormat.format((String)LaunchingMessages.JavaRuntime_Specified_VM_install_not_found__type__0___name__1__2, (Object[])new String[]{vt.getName(), name}), null);
        return null;
    }

    private static void abort(String message, Throwable exception) throws CoreException {
        JavaRuntime.abort(message, 150, exception);
    }

    private static void abort(String message, int code, Throwable exception) throws CoreException {
        throw new CoreException((IStatus)new Status(4, LaunchingPlugin.getUniqueIdentifier(), code, message, exception));
    }

    public static String[] computeDefaultRuntimeClassPath(IJavaProject jproject) throws CoreException {
        IRuntimeClasspathEntry[] unresolved = JavaRuntime.computeUnresolvedRuntimeClasspath(jproject);
        ArrayList<String> resolved = new ArrayList<String>(unresolved.length);
        int i = 0;
        while (i < unresolved.length) {
            IRuntimeClasspathEntry entry = unresolved[i];
            if (entry.getClasspathProperty() == 3) {
                IRuntimeClasspathEntry[] entries = JavaRuntime.resolveRuntimeClasspathEntry(entry, jproject);
                int j = 0;
                while (j < entries.length) {
                    String location = entries[j].getLocation();
                    if (location != null) {
                        resolved.add(location);
                    }
                    ++j;
                }
            }
            ++i;
        }
        return resolved.toArray(new String[resolved.size()]);
    }

    public static void saveVMConfiguration() throws CoreException {
        if (fgVMTypes == null) {
            return;
        }
        String xml = JavaRuntime.getVMsAsXML();
        InstanceScope.INSTANCE.getNode(ID_PLUGIN).put(PREF_VM_XML, xml);
        JavaRuntime.savePreferences();
    }

    private static String getVMsAsXML() throws CoreException {
        VMDefinitionsContainer container = new VMDefinitionsContainer();
        container.setDefaultVMInstallCompositeID(JavaRuntime.getDefaultVMId());
        container.setDefaultVMInstallConnectorTypeID(JavaRuntime.getDefaultVMConnectorId());
        IVMInstallType[] vmTypes = JavaRuntime.getVMInstallTypes();
        IVMInstall[] vms = null;
        int i = 0;
        while (i < vmTypes.length) {
            vms = vmTypes[i].getVMInstalls();
            int j = 0;
            while (j < vms.length) {
                container.addVM(vms[j]);
                ++j;
            }
            ++i;
        }
        return container.getAsXML();
    }

    private static boolean addPersistedVMs(VMDefinitionsContainer vmDefs) throws IOException {
        String vmXMLString = InstanceScope.INSTANCE.getNode(ID_PLUGIN).get(PREF_VM_XML, "");
        if (vmXMLString.length() > 0) {
            try {
                ByteArrayInputStream inputStream = new ByteArrayInputStream(vmXMLString.getBytes("UTF8"));
                VMDefinitionsContainer.parseXMLIntoContainer(inputStream, vmDefs);
                return false;
            }
            catch (IOException ioe) {
                LaunchingPlugin.log(ioe);
            }
        } else {
            IPath stateLocation = LaunchingPlugin.getDefault().getStateLocation();
            IPath stateFile = stateLocation.append("vmConfiguration.xml");
            File file = new File(stateFile.toOSString());
            if (file.exists()) {
                BufferedInputStream fileInputStream = new BufferedInputStream(new FileInputStream(file));
                VMDefinitionsContainer.parseXMLIntoContainer(fileInputStream, vmDefs);
            }
        }
        return true;
    }

    private static void addVMExtensions(VMDefinitionsContainer vmDefs) {
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(ID_PLUGIN, EXTENSION_POINT_VM_INSTALLS);
        IConfigurationElement[] configs = extensionPoint.getConfigurationElements();
        int i = 0;
        while (i < configs.length) {
            block29: {
                IConfigurationElement element = configs[i];
                try {
                    if ("vmInstall".equals(element.getName())) {
                        IVMInstall install;
                        IVMInstallType installType;
                        String id;
                        String vmType = element.getAttribute("vmInstallType");
                        if (vmType == null) {
                            JavaRuntime.abort(MessageFormat.format((String)"Missing required vmInstallType attribute for vmInstall contributed by {0}", (Object[])new String[]{element.getContributor().getName()}), null);
                        }
                        if ((id = element.getAttribute("id")) == null) {
                            JavaRuntime.abort(MessageFormat.format((String)"Missing required id attribute for vmInstall contributed by {0}", (Object[])new String[]{element.getContributor().getName()}), null);
                        }
                        if ((installType = JavaRuntime.getVMInstallType(vmType)) == null) {
                            JavaRuntime.abort(MessageFormat.format((String)"vmInstall {0} contributed by {1} references undefined VM install type {2}", (Object[])new String[]{id, element.getContributor().getName(), vmType}), null);
                        }
                        if ((install = installType.findVMInstall(id)) == null) {
                            String home;
                            String name = element.getAttribute("name");
                            if (name == null) {
                                JavaRuntime.abort(MessageFormat.format((String)"vmInstall {0} contributed by {1} missing required attribute name", (Object[])new String[]{id, element.getContributor().getName()}), null);
                            }
                            if ((home = element.getAttribute("home")) == null) {
                                JavaRuntime.abort(MessageFormat.format((String)"vmInstall {0} contributed by {1} missing required attribute home", (Object[])new String[]{id, element.getContributor().getName()}), null);
                            }
                            String javadoc = element.getAttribute("javadocURL");
                            String vmArgs = element.getAttribute("vmArgs");
                            VMStandin standin = null;
                            File homeDir = new File(home = JavaRuntime.substitute(home));
                            if (homeDir.exists()) {
                                try {
                                    home = homeDir.getCanonicalPath();
                                    homeDir = new File(home);
                                }
                                catch (IOException iOException) {}
                            }
                            if ("org.eclipse.jdt.launching.EEVMType".equals(installType.getId())) {
                                standin = JavaRuntime.createVMFromDefinitionFile(homeDir, name, id);
                            } else {
                                standin = new VMStandin(installType, id);
                                standin.setName(name);
                                IStatus status = installType.validateInstallLocation(homeDir);
                                if (!status.isOK()) {
                                    JavaRuntime.abort(MessageFormat.format((String)"Illegal install location {0} for vmInstall {1} contributed by {2}: {3}", (Object[])new String[]{home, id, element.getContributor().getName(), status.getMessage()}), null);
                                }
                                standin.setInstallLocation(homeDir);
                                if (javadoc != null) {
                                    try {
                                        standin.setJavadocLocation(new URL(javadoc));
                                    }
                                    catch (MalformedURLException e) {
                                        JavaRuntime.abort(MessageFormat.format((String)"Illegal javadocURL attribute for vmInstall {0} contributed by {1}", (Object[])new String[]{id, element.getContributor().getName()}), e);
                                    }
                                }
                                if (vmArgs == null && installType instanceof AbstractVMInstallType) {
                                    AbstractVMInstallType type = (AbstractVMInstallType)installType;
                                    vmArgs = type.getDefaultVMArguments(homeDir);
                                }
                                if (vmArgs != null) {
                                    standin.setVMArgs(vmArgs);
                                }
                                IConfigurationElement[] libraries = element.getChildren("library");
                                LibraryLocation[] locations = null;
                                if (libraries.length > 0) {
                                    locations = new LibraryLocation[libraries.length];
                                    int j = 0;
                                    while (j < libraries.length) {
                                        IConfigurationElement library = libraries[j];
                                        String libPathStr = library.getAttribute("path");
                                        if (libPathStr == null) {
                                            JavaRuntime.abort(MessageFormat.format((String)"library for vmInstall {0} contributed by {1} missing required attribute libPath", (Object[])new String[]{id, element.getContributor().getName()}), null);
                                        }
                                        String sourcePathStr = library.getAttribute("sourcePath");
                                        String packageRootStr = library.getAttribute("packageRootPath");
                                        String javadocOverride = library.getAttribute("javadocURL");
                                        URL url = null;
                                        if (javadocOverride != null) {
                                            try {
                                                url = new URL(javadocOverride);
                                            }
                                            catch (MalformedURLException e) {
                                                JavaRuntime.abort(MessageFormat.format((String)"Illegal javadocURL attribute specified for library {0} for vmInstall {1} contributed by {2}", (Object[])new String[]{libPathStr, id, element.getContributor().getName()}), e);
                                            }
                                        }
                                        Path homePath = new Path(home);
                                        IPath libPath = homePath.append(JavaRuntime.substitute(libPathStr));
                                        Path sourcePath = Path.EMPTY;
                                        if (sourcePathStr != null) {
                                            sourcePath = homePath.append(JavaRuntime.substitute(sourcePathStr));
                                        }
                                        Path packageRootPath = Path.EMPTY;
                                        if (packageRootStr != null) {
                                            packageRootPath = new Path(JavaRuntime.substitute(packageRootStr));
                                        }
                                        locations[j] = new LibraryLocation(libPath, (IPath)sourcePath, (IPath)packageRootPath, url);
                                        ++j;
                                    }
                                }
                                standin.setLibraryLocations(locations);
                            }
                            vmDefs.removeVM(standin);
                            vmDefs.addVM(standin);
                        }
                        fgContributedVMs.add(id);
                        break block29;
                    }
                    JavaRuntime.abort(MessageFormat.format((String)"Illegal element {0} in vmInstalls extension contributed by {1}", (Object[])new String[]{element.getName(), element.getContributor().getName()}), null);
                }
                catch (CoreException e) {
                    LaunchingPlugin.log(e);
                }
            }
            ++i;
        }
    }

    private static String substitute(String expression) throws CoreException {
        return VariablesPlugin.getDefault().getStringVariableManager().performStringSubstitution(expression);
    }

    public static boolean isContributedVMInstall(String id) {
        JavaRuntime.getVMInstallTypes();
        return fgContributedVMs.contains(id);
    }

    public static LibraryLocation[] getLibraryLocations(IVMInstall vm) {
        URL[] javadocLocations;
        IPath[] sourceRootPaths;
        IPath[] sourcePaths;
        IPath[] libraryPaths;
        LibraryLocation[] locations = vm.getLibraryLocations();
        if (locations == null) {
            URL defJavaDocLocation = vm.getJavadocLocation();
            File installLocation = vm.getInstallLocation();
            if (installLocation == null) {
                return new LibraryLocation[0];
            }
            LibraryLocation[] dflts = vm.getVMInstallType().getDefaultLibraryLocations(installLocation);
            libraryPaths = new IPath[dflts.length];
            sourcePaths = new IPath[dflts.length];
            sourceRootPaths = new IPath[dflts.length];
            javadocLocations = new URL[dflts.length];
            int i = 0;
            while (i < dflts.length) {
                libraryPaths[i] = dflts[i].getSystemLibraryPath();
                javadocLocations[i] = defJavaDocLocation == null ? dflts[i].getJavadocLocation() : defJavaDocLocation;
                if (!libraryPaths[i].toFile().isFile()) {
                    libraryPaths[i] = Path.EMPTY;
                }
                sourcePaths[i] = dflts[i].getSystemLibrarySourcePath();
                if (sourcePaths[i].toFile().isFile()) {
                    sourceRootPaths[i] = dflts[i].getPackageRootPath();
                } else {
                    sourcePaths[i] = Path.EMPTY;
                    sourceRootPaths[i] = Path.EMPTY;
                }
                ++i;
            }
        } else {
            libraryPaths = new IPath[locations.length];
            sourcePaths = new IPath[locations.length];
            sourceRootPaths = new IPath[locations.length];
            javadocLocations = new URL[locations.length];
            int i = 0;
            while (i < locations.length) {
                libraryPaths[i] = locations[i].getSystemLibraryPath();
                sourcePaths[i] = locations[i].getSystemLibrarySourcePath();
                sourceRootPaths[i] = locations[i].getPackageRootPath();
                javadocLocations[i] = locations[i].getJavadocLocation();
                ++i;
            }
        }
        locations = new LibraryLocation[sourcePaths.length];
        int i = 0;
        while (i < sourcePaths.length) {
            locations[i] = new LibraryLocation(libraryPaths[i], sourcePaths[i], sourceRootPaths[i], javadocLocations[i]);
            ++i;
        }
        return locations;
    }

    private static VMStandin detectEclipseRuntime() {
        String vmID;
        IVMInstallType[] vmTypes = JavaRuntime.getVMInstallTypes();
        int i = 0;
        while (i < vmTypes.length) {
            String eeFileName;
            if (vmTypes[i] instanceof EEVMType && (eeFileName = System.getProperty("ee.filename")) != null) {
                File vmFile = new File(eeFileName);
                if (vmFile.isDirectory()) {
                    vmFile = new File(vmFile, "default.ee");
                }
                if (vmFile.isFile()) {
                    long unique = System.currentTimeMillis();
                    while (vmTypes[i].findVMInstall(String.valueOf(unique)) != null) {
                        ++unique;
                    }
                    vmID = String.valueOf(unique);
                    try {
                        return JavaRuntime.createVMFromDefinitionFile(vmFile, "", vmID);
                    }
                    catch (CoreException coreException) {}
                }
            }
            ++i;
        }
        i = 0;
        while (i < vmTypes.length) {
            File detectedLocation = vmTypes[i].detectInstallLocation();
            if (detectedLocation != null) {
                long unique = System.currentTimeMillis();
                IVMInstallType vmType = vmTypes[i];
                while (vmType.findVMInstall(String.valueOf(unique)) != null) {
                    ++unique;
                }
                vmID = String.valueOf(unique);
                VMStandin detectedVMStandin = new VMStandin(vmType, vmID);
                detectedVMStandin.setInstallLocation(detectedLocation);
                detectedVMStandin.setName(JavaRuntime.generateDetectedVMName(detectedVMStandin));
                if (vmType instanceof AbstractVMInstallType) {
                    AbstractVMInstallType abs = (AbstractVMInstallType)vmType;
                    URL url = abs.getDefaultJavadocLocation(detectedLocation);
                    detectedVMStandin.setJavadocLocation(url);
                    String arguments = abs.getDefaultVMArguments(detectedLocation);
                    if (arguments != null) {
                        detectedVMStandin.setVMArgs(arguments);
                    }
                }
                return detectedVMStandin;
            }
            ++i;
        }
        return null;
    }

    private static boolean equals(String optionName, Map options, org.osgi.service.prefs.Preferences prefStore) {
        String dummy = new String();
        String prefValue = prefStore.get(optionName, dummy);
        if (prefValue != null && prefValue != dummy) {
            return options.containsKey(optionName) && JavaRuntime.equals(prefValue, options.get(optionName));
        }
        return !options.containsKey(optionName);
    }

    private static boolean equals(Object o1, Object o2) {
        if (o1 == null) {
            return o2 == null;
        }
        return o1.equals(o2);
    }

    private static String generateDetectedVMName(IVMInstall vm) {
        String name = vm.getInstallLocation().getName();
        if ((name = name.trim()).length() == 0) {
            name = LaunchingMessages.JavaRuntime_25;
        }
        return name;
    }

    public static IClasspathEntry getJREVariableEntry() {
        return JavaCore.newVariableEntry((IPath)new Path(JRELIB_VARIABLE), (IPath)new Path(JRESRC_VARIABLE), (IPath)new Path(JRESRCROOT_VARIABLE));
    }

    public static IClasspathEntry getDefaultJREContainerEntry() {
        return JavaCore.newContainerEntry((IPath)JavaRuntime.newDefaultJREContainerPath());
    }

    public static IPath newDefaultJREContainerPath() {
        return new Path(JRE_CONTAINER);
    }

    public static IPath newJREContainerPath(IVMInstall vm) {
        return JavaRuntime.newJREContainerPath(vm.getVMInstallType().getId(), vm.getName());
    }

    public static IPath newJREContainerPath(String typeId, String name) {
        IPath path = JavaRuntime.newDefaultJREContainerPath();
        path = path.append(typeId);
        path = path.append(name);
        return path;
    }

    public static IPath newJREContainerPath(IExecutionEnvironment environment) {
        IPath path = JavaRuntime.newDefaultJREContainerPath();
        path = path.append("org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType");
        path = path.append(JREContainerInitializer.encodeEnvironmentId(environment.getId()));
        return path;
    }

    public static IVMInstall getVMInstall(IPath jreContainerPath) {
        return JREContainerInitializer.resolveVM(jreContainerPath);
    }

    public static String getVMInstallTypeId(IPath jreContainerPath) {
        if (JREContainerInitializer.isExecutionEnvironment(jreContainerPath)) {
            return null;
        }
        return JREContainerInitializer.getVMTypeId(jreContainerPath);
    }

    public static String getVMInstallName(IPath jreContainerPath) {
        if (JREContainerInitializer.isExecutionEnvironment(jreContainerPath)) {
            return null;
        }
        return JREContainerInitializer.getVMName(jreContainerPath);
    }

    public static String getExecutionEnvironmentId(IPath jreContainerPath) {
        return JREContainerInitializer.getExecutionEnvironmentId(jreContainerPath);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static IRuntimeClasspathEntry computeJREEntry(ILaunchConfiguration configuration) throws CoreException {
        String jreAttr = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_JRE_CONTAINER_PATH, null);
        IPath containerPath = null;
        if (jreAttr == null) {
            String type = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_VM_INSTALL_TYPE, null);
            if (type == null) {
                IJavaProject proj = JavaRuntime.getJavaProject(configuration);
                if (proj != null) return JavaRuntime.computeJREEntry(proj);
                containerPath = JavaRuntime.newDefaultJREContainerPath();
            } else {
                String name = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_VM_INSTALL_NAME, null);
                if (name != null) {
                    containerPath = JavaRuntime.newDefaultJREContainerPath().append(type).append(name);
                }
            }
        } else {
            containerPath = Path.fromPortableString((String)jreAttr);
        }
        if (containerPath == null) return null;
        return JavaRuntime.newRuntimeContainerClasspathEntry(containerPath, 1);
    }

    public static IRuntimeClasspathEntry computeJREEntry(IJavaProject project) throws CoreException {
        IClasspathEntry[] rawClasspath = project.getRawClasspath();
        IRuntimeClasspathEntryResolver2 resolver = null;
        int i = 0;
        while (i < rawClasspath.length) {
            IClasspathEntry entry = rawClasspath[i];
            block0 : switch (entry.getEntryKind()) {
                case 4: {
                    resolver = JavaRuntime.getVariableResolver(entry.getPath().segment(0));
                    if (resolver == null || !resolver.isVMInstallReference(entry)) break;
                    return JavaRuntime.newRuntimeClasspathEntry(entry);
                }
                case 5: {
                    IClasspathContainer container;
                    resolver = JavaRuntime.getContainerResolver(entry.getPath().segment(0));
                    if (resolver == null || !resolver.isVMInstallReference(entry) || (container = JavaCore.getClasspathContainer((IPath)entry.getPath(), (IJavaProject)project)) == null) break;
                    switch (container.getKind()) {
                        case 1: {
                            break block0;
                        }
                        case 3: {
                            return JavaRuntime.newRuntimeContainerClasspathEntry(entry.getPath(), 1);
                        }
                        case 2: {
                            return JavaRuntime.newRuntimeContainerClasspathEntry(entry.getPath(), 2);
                        }
                    }
                }
            }
            ++i;
        }
        return null;
    }

    public static boolean isVMInstallReference(IRuntimeClasspathEntry entry) {
        IClasspathEntry classpathEntry = entry.getClasspathEntry();
        if (classpathEntry != null) {
            switch (classpathEntry.getEntryKind()) {
                case 4: {
                    IRuntimeClasspathEntryResolver2 resolver = JavaRuntime.getVariableResolver(classpathEntry.getPath().segment(0));
                    if (resolver == null) break;
                    return resolver.isVMInstallReference(classpathEntry);
                }
                case 5: {
                    IRuntimeClasspathEntryResolver2 resolver = JavaRuntime.getContainerResolver(classpathEntry.getPath().segment(0));
                    if (resolver == null) break;
                    return resolver.isVMInstallReference(classpathEntry);
                }
            }
        }
        return false;
    }

    public static IVMConnector getVMConnector(String id) {
        return LaunchingPlugin.getDefault().getVMConnector(id);
    }

    public static IVMConnector[] getVMConnectors() {
        return LaunchingPlugin.getDefault().getVMConnectors();
    }

    public static Preferences getPreferences() {
        return LaunchingPlugin.getDefault().getPluginPreferences();
    }

    public static void savePreferences() {
        IEclipsePreferences prefs = InstanceScope.INSTANCE.getNode(ID_PLUGIN);
        try {
            prefs.flush();
        }
        catch (BackingStoreException e) {
            LaunchingPlugin.log(e);
        }
    }

    public static void addVariableResolver(IRuntimeClasspathEntryResolver resolver, String variableName) {
        Map map = JavaRuntime.getVariableResolvers();
        map.put(variableName, resolver);
    }

    public static void addContainerResolver(IRuntimeClasspathEntryResolver resolver, String containerIdentifier) {
        Map map = JavaRuntime.getContainerResolvers();
        map.put(containerIdentifier, resolver);
    }

    private static Map getVariableResolvers() {
        if (fgVariableResolvers == null) {
            JavaRuntime.initializeResolvers();
        }
        return fgVariableResolvers;
    }

    private static Map getContainerResolvers() {
        if (fgContainerResolvers == null) {
            JavaRuntime.initializeResolvers();
        }
        return fgContainerResolvers;
    }

    private static Map getEntryResolvers() {
        if (fgRuntimeClasspathEntryResolvers == null) {
            JavaRuntime.initializeResolvers();
        }
        return fgRuntimeClasspathEntryResolvers;
    }

    private static void initializeResolvers() {
        IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint(ID_PLUGIN, EXTENSION_POINT_RUNTIME_CLASSPATH_ENTRY_RESOLVERS);
        IConfigurationElement[] extensions = point.getConfigurationElements();
        fgVariableResolvers = new HashMap(extensions.length);
        fgContainerResolvers = new HashMap(extensions.length);
        fgRuntimeClasspathEntryResolvers = new HashMap(extensions.length);
        int i = 0;
        while (i < extensions.length) {
            RuntimeClasspathEntryResolver res = new RuntimeClasspathEntryResolver(extensions[i]);
            String variable = res.getVariableName();
            String container = res.getContainerId();
            String entryId = res.getRuntimeClasspathEntryId();
            if (variable != null) {
                fgVariableResolvers.put(variable, res);
            }
            if (container != null) {
                fgContainerResolvers.put(container, res);
            }
            if (entryId != null) {
                fgRuntimeClasspathEntryResolvers.put(entryId, res);
            }
            ++i;
        }
    }

    private static Map getClasspathProviders() {
        if (fgPathProviders == null) {
            JavaRuntime.initializeProviders();
        }
        return fgPathProviders;
    }

    private static void initializeProviders() {
        IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint(ID_PLUGIN, EXTENSION_POINT_RUNTIME_CLASSPATH_PROVIDERS);
        IConfigurationElement[] extensions = point.getConfigurationElements();
        fgPathProviders = new HashMap(extensions.length);
        int i = 0;
        while (i < extensions.length) {
            RuntimeClasspathProvider res = new RuntimeClasspathProvider(extensions[i]);
            fgPathProviders.put(res.getIdentifier(), res);
            ++i;
        }
    }

    private static IRuntimeClasspathEntryResolver2 getVariableResolver(String variableName) {
        return (IRuntimeClasspathEntryResolver2)JavaRuntime.getVariableResolvers().get(variableName);
    }

    private static IRuntimeClasspathEntryResolver2 getContainerResolver(String containerId) {
        return (IRuntimeClasspathEntryResolver2)JavaRuntime.getContainerResolvers().get(containerId);
    }

    private static IRuntimeClasspathEntryResolver getContributedResolver(String typeId) {
        IRuntimeClasspathEntryResolver resolver = (IRuntimeClasspathEntryResolver)JavaRuntime.getEntryResolvers().get(typeId);
        if (resolver == null) {
            return new DefaultEntryResolver();
        }
        return resolver;
    }

    public static void addVMInstallChangedListener(IVMInstallChangedListener listener) {
        fgVMListeners.add((Object)listener);
    }

    public static void removeVMInstallChangedListener(IVMInstallChangedListener listener) {
        fgVMListeners.remove((Object)listener);
    }

    private static void notifyDefaultVMChanged(IVMInstall previous, IVMInstall current) {
        Object[] listeners = fgVMListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            IVMInstallChangedListener listener = (IVMInstallChangedListener)listeners[i];
            listener.defaultVMInstallChanged(previous, current);
            ++i;
        }
    }

    public static void fireVMChanged(PropertyChangeEvent event) {
        Object[] listeners = fgVMListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            IVMInstallChangedListener listener = (IVMInstallChangedListener)listeners[i];
            listener.vmChanged(event);
            ++i;
        }
    }

    public static void fireVMAdded(IVMInstall vm) {
        if (!fgInitializingVMs) {
            Object[] listeners = fgVMListeners.getListeners();
            int i = 0;
            while (i < listeners.length) {
                IVMInstallChangedListener listener = (IVMInstallChangedListener)listeners[i];
                listener.vmAdded(vm);
                ++i;
            }
        }
    }

    public static void fireVMRemoved(IVMInstall vm) {
        Object[] listeners = fgVMListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            IVMInstallChangedListener listener = (IVMInstallChangedListener)listeners[i];
            listener.vmRemoved(vm);
            ++i;
        }
    }

    public static String getProjectOutputDirectory(ILaunchConfiguration config) {
        try {
            IPath path;
            IPath outputLocation;
            IWorkspaceRoot root;
            IResource resource;
            IJavaProject javaProject;
            if (config != null && (javaProject = JavaRuntime.getJavaProject(config)) != null && (resource = (root = ResourcesPlugin.getWorkspace().getRoot()).findMember(outputLocation = javaProject.getOutputLocation())) != null && (path = resource.getFullPath()) != null) {
                return path.makeRelative().toString();
            }
        }
        catch (CoreException coreException) {}
        return null;
    }

    public static ISourceContainer[] getSourceContainers(IRuntimeClasspathEntry[] entries) {
        return JavaSourceLookupUtil.translate(entries);
    }

    public static String[] computeJavaLibraryPath(IJavaProject project, boolean requiredProjects) throws CoreException {
        HashSet visited = new HashSet();
        ArrayList entries = new ArrayList();
        JavaRuntime.gatherJavaLibraryPathEntries(project, requiredProjects, visited, entries);
        ArrayList<String> resolved = new ArrayList<String>(entries.size());
        Iterator iterator = entries.iterator();
        IStringVariableManager manager = VariablesPlugin.getDefault().getStringVariableManager();
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        while (iterator.hasNext()) {
            IPath location;
            String entry = (String)iterator.next();
            String resolvedEntry = manager.performStringSubstitution(entry);
            Path path = new Path(resolvedEntry);
            if (path.isAbsolute()) {
                File file = path.toFile();
                resolved.add(file.getAbsolutePath());
                continue;
            }
            IResource resource = root.findMember((IPath)path);
            if (resource == null || (location = resource.getLocation()) == null) continue;
            resolved.add(location.toFile().getAbsolutePath());
        }
        return resolved.toArray(new String[resolved.size()]);
    }

    private static void gatherJavaLibraryPathEntries(IJavaProject project, boolean requiredProjects, Set visited, List entries) throws CoreException {
        if (visited.contains(project)) {
            return;
        }
        visited.add(project);
        IClasspathEntry[] rawClasspath = project.getRawClasspath();
        IClasspathEntry[] required = JavaRuntime.processJavaLibraryPathEntries(project, requiredProjects, rawClasspath, entries);
        if (required != null) {
            IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
            int i = 0;
            while (i < required.length) {
                IJavaProject requiredProject;
                IClasspathEntry entry = required[i];
                String projectName = entry.getPath().segment(0);
                IProject p = root.getProject(projectName);
                if (p.exists() && (requiredProject = JavaCore.create((IProject)p)) != null) {
                    JavaRuntime.gatherJavaLibraryPathEntries(requiredProject, requiredProjects, visited, entries);
                }
                ++i;
            }
        }
    }

    private static IClasspathEntry[] processJavaLibraryPathEntries(IJavaProject project, boolean collectRequired, IClasspathEntry[] classpathEntries, List entries) throws CoreException {
        ArrayList<IClasspathEntry> req = null;
        int i = 0;
        while (i < classpathEntries.length) {
            IClasspathEntry entry = classpathEntries[i];
            IClasspathAttribute[] extraAttributes = entry.getExtraAttributes();
            int j = 0;
            while (j < extraAttributes.length) {
                String[] paths = JavaRuntime.getLibraryPaths(extraAttributes[j]);
                if (paths != null) {
                    int k = 0;
                    while (k < paths.length) {
                        entries.add(paths[k]);
                        ++k;
                    }
                }
                ++j;
            }
            if (entry.getEntryKind() == 5) {
                IClasspathEntry[] requiredProjects;
                IClasspathContainer container = JavaCore.getClasspathContainer((IPath)entry.getPath(), (IJavaProject)project);
                if (container != null && (requiredProjects = JavaRuntime.processJavaLibraryPathEntries(project, collectRequired, container.getClasspathEntries(), entries)) != null) {
                    if (req == null) {
                        req = new ArrayList();
                    }
                    int j2 = 0;
                    while (j2 < requiredProjects.length) {
                        req.add(requiredProjects[j2]);
                        ++j2;
                    }
                }
            } else if (collectRequired && entry.getEntryKind() == 2) {
                if (req == null) {
                    req = new ArrayList<IClasspathEntry>();
                }
                req.add(entry);
            }
            ++i;
        }
        if (req != null) {
            return req.toArray(new IClasspathEntry[req.size()]);
        }
        return null;
    }

    public static IClasspathAttribute newLibraryPathsAttribute(String[] paths) {
        StringBuffer value = new StringBuffer();
        int i = 0;
        while (i < paths.length) {
            value.append(paths[i]);
            if (i < paths.length - 1) {
                value.append("|");
            }
            ++i;
        }
        return JavaCore.newClasspathAttribute((String)CLASSPATH_ATTR_LIBRARY_PATH_ENTRY, (String)value.toString());
    }

    public static String[] getLibraryPaths(IClasspathAttribute attribute) {
        if (CLASSPATH_ATTR_LIBRARY_PATH_ENTRY.equals(attribute.getName())) {
            String value = attribute.getValue();
            return value.split("\\|");
        }
        return null;
    }

    public static IExecutionEnvironmentsManager getExecutionEnvironmentsManager() {
        return EnvironmentsManager.getDefault();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static void initializeVMs() {
        VMDefinitionsContainer vmDefs = null;
        boolean setPref = false;
        boolean updateCompliance = false;
        Object object = fgVMLock;
        synchronized (object) {
            if (fgVMTypes == null) {
                try {
                    fgInitializingVMs = true;
                    JavaRuntime.initializeVMTypeExtensions();
                    try {
                        IVMInstall vm;
                        vmDefs = new VMDefinitionsContainer();
                        setPref = JavaRuntime.addPersistedVMs(vmDefs);
                        IStatus status = vmDefs.getStatus();
                        if (status != null) {
                            if (status.isMultiStatus()) {
                                MultiStatus multi = (MultiStatus)status;
                                IStatus[] children = multi.getChildren();
                                int i = 0;
                                while (i < children.length) {
                                    IStatus child = children[i];
                                    if (!child.isOK()) {
                                        LaunchingPlugin.log(child);
                                    }
                                    ++i;
                                }
                            } else if (!status.isOK()) {
                                LaunchingPlugin.log(status);
                            }
                        }
                        if (vmDefs.getValidVMList().isEmpty()) {
                            VMListener listener = new VMListener();
                            JavaRuntime.addVMInstallChangedListener(listener);
                            setPref = true;
                            VMStandin runtime = JavaRuntime.detectEclipseRuntime();
                            JavaRuntime.removeVMInstallChangedListener(listener);
                            if (!listener.isChanged()) {
                                if (runtime != null) {
                                    updateCompliance = true;
                                    vmDefs.addVM(runtime);
                                    vmDefs.setDefaultVMInstallCompositeID(JavaRuntime.getCompositeIdFromVM(runtime));
                                }
                            } else {
                                JavaRuntime.addPersistedVMs(vmDefs);
                                vmDefs.setDefaultVMInstallCompositeID(fgDefaultVMId);
                                updateCompliance = fgDefaultVMId != null;
                            }
                        }
                        JavaRuntime.addVMExtensions(vmDefs);
                        String defId = vmDefs.getDefaultVMInstallCompositeID();
                        boolean validDef = false;
                        if (defId != null) {
                            Iterator iterator = vmDefs.getValidVMList().iterator();
                            while (iterator.hasNext()) {
                                vm = (IVMInstall)iterator.next();
                                if (!JavaRuntime.getCompositeIdFromVM(vm).equals(defId)) continue;
                                validDef = true;
                                break;
                            }
                        }
                        if (!validDef) {
                            setPref = true;
                            List list = vmDefs.getValidVMList();
                            if (!list.isEmpty()) {
                                vm = (IVMInstall)list.get(0);
                                vmDefs.setDefaultVMInstallCompositeID(JavaRuntime.getCompositeIdFromVM(vm));
                            }
                        }
                        fgDefaultVMId = vmDefs.getDefaultVMInstallCompositeID();
                        fgDefaultVMConnectorId = vmDefs.getDefaultVMInstallConnectorTypeID();
                        List vmList = vmDefs.getValidVMList();
                        Iterator vmListIterator = vmList.iterator();
                        while (vmListIterator.hasNext()) {
                            VMStandin vmStandin = (VMStandin)vmListIterator.next();
                            vmStandin.convertToRealVM();
                        }
                    }
                    catch (IOException e) {
                        LaunchingPlugin.log(e);
                    }
                }
                finally {
                    fgInitializingVMs = false;
                }
            }
        }
        if (vmDefs != null) {
            IVMInstallType[] installTypes = JavaRuntime.getVMInstallTypes();
            int i = 0;
            while (i < installTypes.length) {
                IVMInstallType type = installTypes[i];
                IVMInstall[] installs = type.getVMInstalls();
                int j = 0;
                while (j < installs.length) {
                    JavaRuntime.fireVMAdded(installs[j]);
                    ++j;
                }
                ++i;
            }
            if (setPref) {
                try {
                    String xml = vmDefs.getAsXML();
                    InstanceScope.INSTANCE.getNode(ID_PLUGIN).put(PREF_VM_XML, xml);
                }
                catch (CoreException e) {
                    LaunchingPlugin.log(e);
                }
            }
            if (updateCompliance) {
                JavaRuntime.updateCompliance(JavaRuntime.getDefaultVMInstall());
            }
        }
    }

    private static void updateCompliance(IVMInstall vm) {
        String javaVersion;
        if (vm instanceof IVMInstall2 && (javaVersion = ((IVMInstall2)((Object)vm)).getJavaVersion()) != null) {
            String compliance = null;
            if (javaVersion.startsWith("1.5")) {
                compliance = "1.5";
            } else if (javaVersion.startsWith("1.6")) {
                compliance = "1.6";
            } else if (javaVersion.startsWith("1.7")) {
                compliance = "1.7";
            }
            if (compliance != null) {
                IEclipsePreferences bundleDefaults;
                boolean isDefault;
                Hashtable options = JavaCore.getOptions();
                boolean bl = isDefault = JavaRuntime.equals("org.eclipse.jdt.core.compiler.compliance", options, (org.osgi.service.prefs.Preferences)(bundleDefaults = new BundleDefaultsScope().getNode("org.eclipse.jdt.core"))) && JavaRuntime.equals("org.eclipse.jdt.core.compiler.source", options, (org.osgi.service.prefs.Preferences)bundleDefaults) && JavaRuntime.equals("org.eclipse.jdt.core.compiler.codegen.targetPlatform", options, (org.osgi.service.prefs.Preferences)bundleDefaults) && JavaRuntime.equals("org.eclipse.jdt.core.compiler.problem.assertIdentifier", options, (org.osgi.service.prefs.Preferences)bundleDefaults) && JavaRuntime.equals("org.eclipse.jdt.core.compiler.problem.enumIdentifier", options, (org.osgi.service.prefs.Preferences)bundleDefaults);
                if (isDefault) {
                    JavaCore.setComplianceOptions((String)compliance, (Map)options);
                    JavaCore.setOptions((Hashtable)options);
                }
            }
        }
    }

    public static VMStandin createVMFromDefinitionFile(File eeFile, String name, String id) throws CoreException {
        ExecutionEnvironmentDescription description = new ExecutionEnvironmentDescription(eeFile);
        IStatus status = EEVMType.validateDefinitionFile(description);
        if (status.isOK()) {
            VMStandin standin = new VMStandin(JavaRuntime.getVMInstallType("org.eclipse.jdt.launching.EEVMType"), id);
            if (name != null && name.length() > 0) {
                standin.setName(name);
            } else {
                name = description.getProperty("-Dee.name");
                if (name == null) {
                    name = eeFile.getName();
                }
                standin.setName(name);
            }
            String home = description.getProperty("-Djava.home");
            standin.setInstallLocation(new File(home));
            standin.setLibraryLocations(description.getLibraryLocations());
            standin.setVMArgs(description.getVMArguments());
            standin.setJavadocLocation(EEVMType.getJavadocLocation(description.getProperties()));
            standin.setAttribute("ATTR_EXECUTION_ENVIRONMENT_ID", description.getProperty("-Dee.class.library.level"));
            File exe = description.getExecutable();
            if (exe == null) {
                exe = description.getConsoleExecutable();
            }
            if (exe != null) {
                try {
                    standin.setAttribute("ATTR_JAVA_EXE", exe.getCanonicalPath());
                }
                catch (IOException e) {
                    throw new CoreException((IStatus)new Status(4, LaunchingPlugin.getUniqueIdentifier(), LaunchingMessages.JavaRuntime_24, (Throwable)e));
                }
            }
            standin.setAttribute("ATTR_JAVA_VERSION", description.getProperty("-Dee.language.level"));
            standin.setAttribute("ATTR_DEFINITION_FILE", eeFile.getPath());
            standin.setAttribute("ATTR_DEBUG_ARGS", description.getProperty("-Dee.debug.args"));
            return standin;
        }
        throw new CoreException(status);
    }
}

