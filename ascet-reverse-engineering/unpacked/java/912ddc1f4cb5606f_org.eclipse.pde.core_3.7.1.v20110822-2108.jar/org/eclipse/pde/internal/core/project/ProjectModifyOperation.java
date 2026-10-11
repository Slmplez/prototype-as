/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IProjectDescription
 *  org.eclipse.core.resources.ProjectScope
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.launching.JavaRuntime
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.osgi.framework.Version
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.pde.internal.core.project;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.core.build.IBuildModelFactory;
import org.eclipse.pde.core.plugin.IFragment;
import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.project.IBundleClasspathEntry;
import org.eclipse.pde.core.project.IBundleProjectDescription;
import org.eclipse.pde.core.project.IBundleProjectService;
import org.eclipse.pde.core.project.IHostDescription;
import org.eclipse.pde.internal.core.ClasspathComputer;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.build.WorkspaceBuildModel;
import org.eclipse.pde.internal.core.bundle.BundlePluginBase;
import org.eclipse.pde.internal.core.bundle.WorkspaceBundleFragmentModel;
import org.eclipse.pde.internal.core.bundle.WorkspaceBundleModel;
import org.eclipse.pde.internal.core.bundle.WorkspaceBundlePluginModel;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginBase;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelBase;
import org.eclipse.pde.internal.core.ibundle.IManifestHeader;
import org.eclipse.pde.internal.core.plugin.WorkspacePluginModelBase;
import org.eclipse.pde.internal.core.project.BundleProjectDescription;
import org.eclipse.pde.internal.core.project.Messages;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.pde.internal.core.text.bundle.BundleModelFactory;
import org.eclipse.pde.internal.core.text.bundle.BundleSymbolicNameHeader;
import org.eclipse.pde.internal.core.text.bundle.ExportPackageHeader;
import org.eclipse.pde.internal.core.text.bundle.ExportPackageObject;
import org.eclipse.pde.internal.core.text.bundle.ImportPackageHeader;
import org.eclipse.pde.internal.core.text.bundle.ImportPackageObject;
import org.eclipse.pde.internal.core.text.bundle.PackageFriend;
import org.eclipse.pde.internal.core.util.CoreUtility;
import org.osgi.framework.Version;
import org.osgi.service.prefs.BackingStoreException;

public class ProjectModifyOperation {
    private WorkspacePluginModelBase fModel;
    private static final IPath[] EXCLUDE_NONE = new IPath[0];
    static /* synthetic */ Class class$0;

    public void execute(IProgressMonitor monitor, IBundleProjectDescription description) throws CoreException {
        IJavaProject jp;
        boolean becomeBundle;
        IProject project = description.getProject();
        PDECore pDECore = PDECore.getDefault();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.pde.core.project.IBundleProjectService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IBundleProjectService service = (IBundleProjectService)pDECore.acquireService(clazz.getName());
        IBundleProjectDescription before = service.getDescription(project);
        boolean considerRoot = !project.exists();
        String taskName = null;
        boolean jpExisted = false;
        if (project.exists()) {
            taskName = Messages.ProjectModifyOperation_0;
            jpExisted = before.hasNature("org.eclipse.jdt.core.javanature");
        } else {
            taskName = Messages.ProjectModifyOperation_1;
            if (description.getNatureIds().length == 0) {
                description.setNatureIds(new String[]{"org.eclipse.pde.PluginNature", "org.eclipse.jdt.core.javanature"});
            }
        }
        boolean bl = becomeBundle = !before.hasNature("org.eclipse.pde.PluginNature") && description.hasNature("org.eclipse.pde.PluginNature");
        if (jpExisted && becomeBundle && description.getExecutionEnvironments() == null && (jp = JavaCore.create((IProject)project)).exists()) {
            IClasspathEntry[] classpath = jp.getRawClasspath();
            int i = 0;
            while (i < classpath.length) {
                String id;
                IClasspathEntry entry = classpath[i];
                if (entry.getEntryKind() == 5 && (id = JavaRuntime.getExecutionEnvironmentId((IPath)entry.getPath())) != null) {
                    description.setExecutionEnvironments(new String[]{id});
                    break;
                }
                ++i;
            }
        }
        if (becomeBundle && description.getBundleVersion() == null) {
            description.setBundleVersion(new Version(1, 0, 0, "qualifier"));
        }
        SubMonitor sub = SubMonitor.convert((IProgressMonitor)monitor, (String)taskName, (int)6);
        this.createProject(description);
        if (considerRoot) {
            IFolder folder = null;
            IPath root = description.getBundleRoot();
            if (root != null && !root.isEmpty()) {
                folder = project.getFolder(root);
                CoreUtility.createFolder(folder);
            }
            PDEProject.setBundleRoot(project, folder);
        }
        sub.worked(1);
        this.configureNatures(description);
        sub.worked(1);
        if (project.hasNature("org.eclipse.jdt.core.javanature")) {
            this.configureJavaProject(description, before, jpExisted);
        }
        sub.worked(1);
        this.configureManifest(description, before);
        sub.worked(1);
        this.configureBuildPropertiesFile(description, before);
        sub.worked(1);
        IEclipsePreferences pref = new ProjectScope(project).getNode("org.eclipse.pde.core");
        if (pref != null) {
            if (description.isEquinox() && description.isExtensionRegistry()) {
                pref.remove("resolve.requirebundle");
            } else {
                pref.putBoolean("resolve.requirebundle", false);
            }
            if (description.isExtensionRegistry()) {
                pref.remove("pluginProject.extensions");
            } else {
                pref.putBoolean("pluginProject.extensions", false);
            }
            if (description.isEquinox()) {
                pref.remove("pluginProject.equinox");
            } else {
                pref.putBoolean("pluginProject.equinox", false);
            }
            String[] shorts = description.getLaunchShortcuts();
            if (shorts == null || shorts.length == 0) {
                pref.remove("manifest.launchShortcuts");
            } else {
                StringBuffer value = new StringBuffer();
                int i = 0;
                while (i < shorts.length) {
                    if (i > 0) {
                        value.append(',');
                    }
                    value.append(shorts[i]);
                    ++i;
                }
                pref.put("manifest.launchShortcuts", value.toString());
            }
            if (description.getExportWizardId() == null) {
                pref.remove("manifest.exportWizard");
            } else {
                pref.put("manifest.exportWizard", description.getExportWizardId());
            }
            try {
                pref.flush();
            }
            catch (BackingStoreException e) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", Messages.ProjectModifyOperation_2, (Throwable)e));
            }
        }
        if (this.fModel.isDirty()) {
            this.fModel.save();
        }
        sub.worked(1);
        sub.done();
        if (monitor != null) {
            monitor.done();
        }
    }

    public WorkspacePluginModelBase getModel() {
        return this.fModel;
    }

    private void configureJavaProject(IBundleProjectDescription description, IBundleProjectDescription before, boolean existed) throws CoreException {
        Object[] prev;
        IProject project = description.getProject();
        IJavaProject javaProject = JavaCore.create((IProject)project);
        Object[] bces = description.getBundleClasspath();
        if (bces != null && bces.length > 0) {
            int i = 0;
            while (i < bces.length) {
                IPath folder = bces[i].getSourcePath();
                if (folder != null) {
                    CoreUtility.createFolder(project.getFolder(folder));
                }
                ++i;
            }
        }
        if (description.getDefaultOutputFolder() != null) {
            IPath path = project.getFullPath().append(description.getDefaultOutputFolder());
            javaProject.setOutputLocation(path, null);
        }
        if (!this.isEqual(bces, prev = before.getBundleClasspath())) {
            IClasspathEntry[] entries;
            if (existed) {
                entries = this.getSourceFolderEntries(javaProject, description);
                IClasspathEntry[] rawClasspath = javaProject.getRawClasspath();
                ArrayList<IClasspathEntry> add = new ArrayList<IClasspathEntry>();
                int i = 0;
                while (i < entries.length) {
                    IClasspathEntry entry = entries[i];
                    boolean present = false;
                    int j = 0;
                    while (j < rawClasspath.length) {
                        IClasspathEntry existingEntry = rawClasspath[j];
                        if (existingEntry.getEntryKind() == entry.getEntryKind() && existingEntry.getPath().equals((Object)entry.getPath())) {
                            present = true;
                            break;
                        }
                        ++j;
                    }
                    if (!present) {
                        add.add(entry);
                    }
                    ++i;
                }
                boolean addRequired = false;
                if (description.hasNature("org.eclipse.pde.PluginNature")) {
                    addRequired = true;
                    int i2 = 0;
                    while (i2 < rawClasspath.length) {
                        IClasspathEntry cpe = rawClasspath[i2];
                        if (cpe.getEntryKind() == 5 && PDECore.REQUIRED_PLUGINS_CONTAINER_PATH.equals((Object)cpe.getPath())) {
                            addRequired = false;
                            break;
                        }
                        ++i2;
                    }
                }
                if (addRequired) {
                    add.add(ClasspathComputer.createContainerEntry());
                }
                if (!add.isEmpty()) {
                    ArrayList<IClasspathEntry> all = new ArrayList<IClasspathEntry>();
                    int i3 = 0;
                    while (i3 < rawClasspath.length) {
                        all.add(rawClasspath[i3]);
                        ++i3;
                    }
                    all.addAll(add);
                    javaProject.setRawClasspath(all.toArray(new IClasspathEntry[all.size()]), null);
                }
            } else {
                entries = this.getClassPathEntries(javaProject, description);
                javaProject.setRawClasspath(entries, null);
            }
        }
    }

    private boolean isEqual(Object[] array1, Object[] array2) {
        if (array1 == null || array1.length == 0) {
            return array2 == null || array2.length == 0;
        }
        if (array2 == null || array2.length == 0) {
            return false;
        }
        if (array1.length != array2.length) {
            return false;
        }
        int i = 0;
        while (i < array1.length) {
            if (!array1[i].equals(array2[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private boolean isEqual(Object st1, Object st2) {
        if (st1 == null) {
            return st2 == null;
        }
        if (st2 == null) {
            return false;
        }
        return st1.equals(st2);
    }

    private IClasspathEntry[] getClassPathEntries(IJavaProject project, IBundleProjectDescription description) throws CoreException {
        IClasspathEntry[] internalClassPathEntries = this.getSourceFolderEntries(project, description);
        IClasspathEntry[] entries = new IClasspathEntry[internalClassPathEntries.length + 2];
        System.arraycopy(internalClassPathEntries, 0, entries, 2, internalClassPathEntries.length);
        String[] ids = description.getExecutionEnvironments();
        String executionEnvironment = null;
        if (ids != null && ids.length > 0) {
            executionEnvironment = ids[0];
        }
        ClasspathComputer.setComplianceOptions(project, executionEnvironment);
        entries[0] = ClasspathComputer.createJREEntry(executionEnvironment);
        entries[1] = ClasspathComputer.createContainerEntry();
        return entries;
    }

    private IClasspathEntry[] getSourceFolderEntries(IJavaProject project, IBundleProjectDescription description) throws CoreException {
        IBundleClasspathEntry[] folders = description.getBundleClasspath();
        if (folders == null || folders.length == 0) {
            return new IClasspathEntry[0];
        }
        ArrayList<IClasspathEntry> entries = new ArrayList<IClasspathEntry>();
        int i = 0;
        while (i < folders.length) {
            IPath output;
            IBundleClasspathEntry folder = folders[i];
            if (folder.getSourcePath() == null) {
                IPath bin = folder.getBinaryPath();
                if (bin == null) {
                    bin = folder.getLibrary();
                }
                if (bin != null) {
                    output = project.getProject().getFullPath().append(bin);
                    entries.add(JavaCore.newLibraryEntry((IPath)output, null, null));
                }
            } else {
                IPath path = project.getProject().getFullPath().append(folder.getSourcePath());
                output = folder.getBinaryPath();
                if (output != null) {
                    output = project.getProject().getFullPath().append(output);
                }
                entries.add(JavaCore.newSourceEntry((IPath)path, (IPath[])EXCLUDE_NONE, (IPath)output));
            }
            ++i;
        }
        return entries.toArray(new IClasspathEntry[entries.size()]);
    }

    private void createProject(IBundleProjectDescription description) throws CoreException {
        IProject project = description.getProject();
        if (!project.exists()) {
            IProjectDescription pd = project.getWorkspace().newProjectDescription(project.getName());
            pd.setLocationURI(description.getLocationURI());
            project.create(pd, null);
        }
        if (!project.isOpen()) {
            project.open(null);
        }
    }

    private void configureNatures(IBundleProjectDescription description) throws CoreException {
        IProject project = description.getProject();
        IProjectDescription projectDescription = project.getDescription();
        String[] curr = projectDescription.getNatureIds();
        HashSet<String> before = new HashSet<String>();
        int i = 0;
        while (i < curr.length) {
            before.add(curr[i]);
            ++i;
        }
        String[] natureIds = description.getNatureIds();
        HashSet<String> after = new HashSet<String>();
        int i2 = 0;
        while (i2 < natureIds.length) {
            after.add(natureIds[i2]);
            ++i2;
        }
        if (!before.equals(after)) {
            projectDescription.setNatureIds(natureIds);
            project.setDescription(projectDescription, null);
        }
    }

    private void configureManifest(IBundleProjectDescription description, IBundleProjectDescription before) throws CoreException {
        String bundleName;
        IProject project = description.getProject();
        IFile manifest = PDEProject.getManifest(project);
        this.fModel = description.getHost() == null ? new WorkspaceBundlePluginModel(manifest, PDEProject.getPluginXml(project)) : new WorkspaceBundleFragmentModel(manifest, PDEProject.getFragmentXml(project));
        IPluginBase pluginBase = this.fModel.getPluginBase();
        String targetVersion = this.getTargetVersion(description.getTargetVersion());
        if (!this.isEqual(targetVersion, this.getTargetVersion(before.getTargetVersion()))) {
            String schemaVersion = TargetPlatformHelper.getSchemaVersionForTargetVersion(targetVersion);
            pluginBase.setSchemaVersion(schemaVersion);
        }
        if (!this.isEqual(description.getSymbolicName(), before.getSymbolicName())) {
            pluginBase.setId(description.getSymbolicName());
        }
        if (!this.isEqual(description.getBundleVersion(), before.getBundleVersion())) {
            pluginBase.setVersion(description.getBundleVersion().toString());
        }
        if ((bundleName = description.getBundleName()) == null) {
            bundleName = description.getSymbolicName();
        }
        if (!this.isEqual(bundleName, before.getBundleName())) {
            pluginBase.setName(bundleName);
        }
        if (!this.isEqual(description.getBundleVendor(), before.getBundleVendor())) {
            pluginBase.setProviderName(description.getBundleVendor());
        }
        if (this.fModel instanceof IBundlePluginModelBase) {
            IBundlePluginModelBase bmodel = (IBundlePluginModelBase)((Object)this.fModel);
            ((IBundlePluginBase)bmodel.getPluginBase()).setTargetVersion(targetVersion);
            String ver = bmodel.getBundleModel().getBundle().getHeader("Bundle-ManifestVersion");
            if (!this.isEqual("2", ver)) {
                bmodel.getBundleModel().getBundle().setHeader("Bundle-ManifestVersion", "2");
            }
        }
        if (pluginBase instanceof IFragment) {
            IFragment fragment = (IFragment)pluginBase;
            IHostDescription host = description.getHost();
            if (!this.isEqual(host, before.getHost())) {
                fragment.setPluginId(host.getName());
                if (host.getVersionRange() != null) {
                    fragment.setPluginVersion(host.getVersionRange().toString());
                } else {
                    fragment.setPluginVersion(null);
                }
            }
        } else {
            String activator = description.getActivator();
            if (!this.isEqual(activator, before.getActivator())) {
                ((IPlugin)pluginBase).setClassName(activator);
            }
        }
        this.configureBundleClasspath(description, before);
        Object[] dependencies = description.getRequiredBundles();
        if (!this.isEqual(dependencies, before.getRequiredBundles())) {
            int i;
            IPluginImport[] imports = pluginBase.getImports();
            if (imports != null && imports.length > 0) {
                i = 0;
                while (i < imports.length) {
                    pluginBase.remove(imports[i]);
                    ++i;
                }
            }
            if (dependencies != null) {
                i = 0;
                while (i < dependencies.length) {
                    Object req = dependencies[i];
                    VersionRange range = req.getVersionRange();
                    IPluginImport iimport = this.fModel.getPluginFactory().createImport();
                    iimport.setId(req.getName());
                    if (range != null) {
                        iimport.setVersion(range.toString());
                        iimport.setMatch(2);
                    }
                    iimport.setReexported(req.isExported());
                    iimport.setOptional(req.isOptional());
                    pluginBase.add(iimport);
                    ++i;
                }
            }
        }
        if (pluginBase instanceof BundlePluginBase) {
            WorkspaceBundleModel wbm;
            IBundleModel bundleModel;
            IPath localization;
            Object[] exports;
            Object[] packages;
            Object[] ees;
            IManifestHeader header;
            IBundle bundle = ((BundlePluginBase)pluginBase).getBundle();
            BundleModelFactory factory = new BundleModelFactory(bundle.getModel());
            if (before.getHost() != null && description.getHost() == null) {
                bundle.setHeader("Fragment-Host", null);
            }
            if (description.isSingleton() != before.isSingleton() && description.isSingleton() && (header = factory.createHeader("Bundle-SymbolicName", description.getSymbolicName())) instanceof BundleSymbolicNameHeader) {
                ((BundleSymbolicNameHeader)header).setSingleton(description.isSingleton());
                bundle.setHeader("Bundle-SymbolicName", header.getValue());
            }
            if (!this.isEqual(ees = description.getExecutionEnvironments(), before.getExecutionEnvironments())) {
                if (ees == null) {
                    bundle.setHeader("Bundle-RequiredExecutionEnvironment", null);
                } else {
                    StringBuffer buffer = new StringBuffer();
                    int i = 0;
                    while (i < ees.length) {
                        Object id = ees[i];
                        if (buffer.length() > 0) {
                            buffer.append(",\n ");
                        }
                        buffer.append((String)id);
                        ++i;
                    }
                    bundle.setHeader("Bundle-RequiredExecutionEnvironment", buffer.toString());
                }
            }
            if (!this.isEqual(packages = description.getPackageImports(), before.getPackageImports())) {
                if (packages == null) {
                    bundle.setHeader("Import-Package", null);
                } else {
                    ImportPackageHeader header2 = (ImportPackageHeader)factory.createHeader("Import-Package", "");
                    int i = 0;
                    while (i < packages.length) {
                        Object pkg = packages[i];
                        ImportPackageObject ip = header2.addPackage(pkg.getName());
                        VersionRange range = pkg.getVersionRange();
                        if (range != null) {
                            ip.setVersion(range.toString());
                        }
                        ip.setOptional(pkg.isOptional());
                        ++i;
                    }
                    header2.update();
                    bundle.setHeader("Import-Package", header2.getValue());
                }
            }
            if (!this.isEqual(exports = description.getPackageExports(), before.getPackageExports())) {
                if (exports == null) {
                    bundle.setHeader("Export-Package", null);
                } else {
                    ExportPackageHeader header3 = (ExportPackageHeader)factory.createHeader("Export-Package", "");
                    int i = 0;
                    while (i < exports.length) {
                        String[] friends;
                        Object pkg = exports[i];
                        ExportPackageObject epo = header3.addPackage(pkg.getName());
                        Version version = pkg.getVersion();
                        if (version != null) {
                            epo.setVersion(version.toString());
                        }
                        if ((friends = pkg.getFriends()) != null) {
                            int j = 0;
                            while (j < friends.length) {
                                epo.addFriend(new PackageFriend(epo, friends[j]));
                                ++j;
                            }
                        } else {
                            epo.setInternal(!pkg.isApi());
                        }
                        ++i;
                    }
                    header3.update();
                    bundle.setHeader("Export-Package", header3.getValue());
                }
            }
            boolean removeActivation = false;
            if (!this.isEqual(description.getActivationPolicy(), before.getActivationPolicy())) {
                if ("lazy".equals(description.getActivationPolicy())) {
                    if (description.isEquinox()) {
                        if (targetVersion.equals("3.1")) {
                            bundle.setHeader("Eclipse-AutoStart", "true");
                        } else {
                            double version = Double.parseDouble(targetVersion);
                            if (version >= 3.4) {
                                bundle.setHeader("Bundle-ActivationPolicy", "lazy");
                            } else {
                                bundle.setHeader("Eclipse-LazyStart", "true");
                            }
                        }
                    } else {
                        bundle.setHeader("Bundle-ActivationPolicy", "lazy");
                    }
                } else {
                    removeActivation = true;
                }
            }
            if (description.getHost() != null && before.getHost() == null) {
                removeActivation = true;
            }
            if (removeActivation) {
                bundle.setHeader("Eclipse-AutoStart", null);
                bundle.setHeader("Bundle-ActivationPolicy", null);
                bundle.setHeader("Eclipse-LazyStart", null);
            }
            if (!this.isEqual(localization = description.getLocalization(), before.getLocalization())) {
                if (localization == null) {
                    bundle.setHeader("Bundle-Localization", null);
                } else {
                    bundle.setHeader("Bundle-Localization", localization.toString());
                }
            }
            if ((bundleModel = bundle.getModel()) instanceof WorkspaceBundleModel && (wbm = (WorkspaceBundleModel)bundleModel).isDirty()) {
                this.fModel.setDirty(true);
            }
            BundleProjectDescription bpd = (BundleProjectDescription)description;
            Map extraHeaders = bpd.getExtraHeaders();
            Iterator iterator = extraHeaders.entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry entry = iterator.next();
                String name = (String)entry.getKey();
                String value = (String)entry.getValue();
                if (value != null && value.trim().length() == 0) {
                    value = " ";
                }
                if (this.isEqual(value, bundle.getHeader(name))) continue;
                bundle.setHeader(name, value);
            }
        }
    }

    private String getTargetVersion(String targetVersion) {
        if (targetVersion == null) {
            return TargetPlatformHelper.getTargetVersionString();
        }
        return targetVersion;
    }

    protected static String[] getLibraryNames(IBundleProjectDescription description) {
        IBundleClasspathEntry[] libs = description.getBundleClasspath();
        if (libs != null && libs.length > 0) {
            LinkedHashSet<String> names = new LinkedHashSet<String>();
            int i = 0;
            while (i < libs.length) {
                IPath lib = libs[i].getLibrary();
                String libName = ".";
                if (lib != null) {
                    libName = lib.toString();
                }
                names.add(libName);
                ++i;
            }
            return names.toArray(new String[names.size()]);
        }
        return null;
    }

    private void configureBundleClasspath(IBundleProjectDescription description, IBundleProjectDescription before) throws CoreException {
        Object[] cp = description.getBundleClasspath();
        if (!this.isEqual(cp, before.getBundleClasspath())) {
            String[] names;
            IPluginBase pluginBase = this.fModel.getPluginBase();
            IPluginLibrary[] libraries = pluginBase.getLibraries();
            if (libraries != null && libraries.length > 0) {
                int i = 0;
                while (i < libraries.length) {
                    pluginBase.remove(libraries[i]);
                    ++i;
                }
            }
            if ((names = ProjectModifyOperation.getLibraryNames(description)) != null) {
                if (names.length == 1 && ".".equals(names[0])) {
                    return;
                }
                int i = 0;
                while (i < names.length) {
                    IPluginLibrary library = this.fModel.getPluginFactory().createLibrary();
                    library.setName(names[i]);
                    library.setExported(false);
                    pluginBase.add(library);
                    ++i;
                }
            }
        }
    }

    private void configureBuildPropertiesFile(IBundleProjectDescription description, IBundleProjectDescription before) throws CoreException {
        IProject project = description.getProject();
        IFile file = PDEProject.getBuildProperties(project);
        WorkspaceBuildModel model = new WorkspaceBuildModel(file);
        IBuildModelFactory factory = model.getFactory();
        IBuildEntry binEntry = model.getBuild().getEntry("bin.includes");
        if (binEntry == null) {
            binEntry = factory.createEntry("bin.includes");
            model.getBuild().add(binEntry);
        }
        boolean modified = this.fillBinIncludes(project, binEntry, description, before);
        modified = this.createSourceOutputBuildEntries(model, factory, description, before) | modified;
        if (modified) {
            model.save();
        }
    }

    private boolean fillBinIncludes(IProject project, IBuildEntry binEntry, IBundleProjectDescription description, IBundleProjectDescription before) throws CoreException {
        Object[] prevPaths;
        Object[] paths;
        Object[] prevNames;
        Object[] names;
        boolean modified = false;
        if (!binEntry.contains("META-INF/")) {
            modified = true;
            binEntry.addToken("META-INF/");
        }
        if (!this.isEqual(names = ProjectModifyOperation.getLibraryNames(description), prevNames = ProjectModifyOperation.getLibraryNames(before))) {
            int i;
            if (prevNames != null) {
                i = 0;
                while (i < prevNames.length) {
                    if (binEntry.contains((String)prevNames[i])) {
                        modified = true;
                        binEntry.removeToken((String)prevNames[i]);
                    }
                    ++i;
                }
            }
            if (names != null) {
                i = 0;
                while (i < names.length) {
                    if (!binEntry.contains((String)names[i])) {
                        modified = true;
                        Object name = names[i];
                        Path path = new Path((String)names[i]);
                        String extension = path.getFileExtension();
                        if (extension == null && !((String)name).endsWith("/")) {
                            name = String.valueOf(name) + "/";
                        }
                        binEntry.addToken((String)name);
                    }
                    ++i;
                }
            }
        }
        if (!this.isEqual(paths = description.getBinIncludes(), prevPaths = before.getBinIncludes())) {
            if (prevPaths != null) {
                int i = 0;
                while (i < prevPaths.length) {
                    String token = prevPaths[i].toString();
                    if (binEntry.contains(token)) {
                        binEntry.removeToken(token);
                        modified = true;
                    }
                    ++i;
                }
            }
            if (paths != null) {
                int i = 0;
                while (i < paths.length) {
                    String name = paths[i].toString();
                    if (!binEntry.contains(name)) {
                        binEntry.addToken(name);
                        modified = true;
                    }
                    ++i;
                }
            }
        }
        return modified;
    }

    private boolean createSourceOutputBuildEntries(WorkspaceBuildModel model, IBuildModelFactory factory, IBundleProjectDescription description, IBundleProjectDescription before) throws CoreException {
        Object[] prev;
        boolean modified = false;
        Object[] folders = description.getBundleClasspath();
        if (!this.isEqual(folders, prev = before.getBundleClasspath())) {
            int i;
            modified = true;
            String[] oldNames = ProjectModifyOperation.getLibraryNames(before);
            IBuild build = model.getBuild();
            if (oldNames != null) {
                i = 0;
                while (i < oldNames.length) {
                    this.removeBuildEntry(build, "source." + oldNames[i]);
                    this.removeBuildEntry(build, "output." + oldNames[i]);
                    ++i;
                }
            }
            if (folders != null && folders.length > 0) {
                i = 0;
                while (i < folders.length) {
                    String libraryName = null;
                    IPath libPath = folders[i].getLibrary();
                    libraryName = libPath == null ? "." : folders[i].getLibrary().toString();
                    IPath srcFolder = folders[i].getSourcePath();
                    if (srcFolder != null) {
                        IBuildEntry entry = this.getBuildEntry(build, factory, "source." + libraryName);
                        if (!srcFolder.isEmpty()) {
                            entry.addToken(srcFolder.addTrailingSeparator().toString());
                        } else {
                            entry.addToken(".");
                        }
                    }
                    IPath outFolder = folders[i].getBinaryPath();
                    if (srcFolder != null && outFolder == null) {
                        IJavaProject project = JavaCore.create((IProject)description.getProject());
                        outFolder = project.getOutputLocation().removeFirstSegments(1);
                    }
                    if (outFolder != null) {
                        IBuildEntry entry = this.getBuildEntry(build, factory, "output." + libraryName);
                        String token = null;
                        token = !outFolder.isEmpty() ? outFolder.addTrailingSeparator().toString() : ".";
                        if (!entry.contains(token)) {
                            entry.addToken(token);
                        }
                    }
                    ++i;
                }
            }
        }
        return modified;
    }

    private IBuildEntry getBuildEntry(IBuild build, IBuildModelFactory factory, String key) throws CoreException {
        IBuildEntry entry = build.getEntry(key);
        if (entry == null) {
            entry = factory.createEntry(key);
            build.add(entry);
        }
        return entry;
    }

    private void removeBuildEntry(IBuild build, String key) throws CoreException {
        IBuildEntry entry = build.getEntry(key);
        if (entry != null) {
            build.remove(entry);
        }
    }
}

