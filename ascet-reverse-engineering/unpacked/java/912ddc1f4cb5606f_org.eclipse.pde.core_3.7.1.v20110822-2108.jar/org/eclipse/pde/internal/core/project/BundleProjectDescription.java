/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.ProjectScope
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core.project;

import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.core.project.IBundleClasspathEntry;
import org.eclipse.pde.core.project.IBundleProjectDescription;
import org.eclipse.pde.core.project.IBundleProjectService;
import org.eclipse.pde.core.project.IHostDescription;
import org.eclipse.pde.core.project.IPackageExportDescription;
import org.eclipse.pde.core.project.IPackageImportDescription;
import org.eclipse.pde.core.project.IRequiredBundleDescription;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.build.WorkspaceBuildModel;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.pde.internal.core.project.ProjectModifyOperation;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;

public class BundleProjectDescription
implements IBundleProjectDescription {
    private IProject fProject;
    private IPath fRoot;
    private String fSymbolicName;
    private String fBundleName;
    private String fBundleVendor;
    private IHostDescription fHost;
    private URI fUri;
    private Version fVersion;
    private boolean fSingleton = false;
    private IPath fLocalization = null;
    private IPath fDefaultOuputFolder = null;
    private String[] fEEs;
    private String[] fNatures;
    private IBundleClasspathEntry[] fBundleClasspath = null;
    private String fActivator = null;
    private String fTargetVersion;
    private boolean fIsEquinox = false;
    private boolean fIsExtensionRegistry = false;
    private String fActivationPolicy;
    private IRequiredBundleDescription[] fRequiredBundles;
    private IPackageImportDescription[] fImports;
    private IPackageExportDescription[] fExports;
    private IPath[] fBinIncludes;
    private IBundleProjectService fService;
    private String[] fLaunchShortcuts;
    private String fExportWizard;
    private Map fHeaders = new HashMap();
    private Map fReadHeaders = null;
    static /* synthetic */ Class class$0;

    public BundleProjectDescription(IProject project) throws CoreException {
        this.fProject = project;
        if (project.exists() && project.isOpen()) {
            this.initiaize(project);
        }
    }

    IBundleProjectService getBundleProjectService() {
        if (this.fService == null) {
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
            this.fService = (IBundleProjectService)pDECore.acquireService(clazz.getName());
        }
        return this.fService;
    }

    private IBuild getBuildModel(IProject project) {
        IFile buildFile = PDEProject.getBuildProperties(project);
        if (buildFile.exists()) {
            WorkspaceBuildModel buildModel = new WorkspaceBuildModel(buildFile);
            buildModel.load();
            return buildModel.getBuild();
        }
        return null;
    }

    private String getHeaderValue(Map headers, String key) throws CoreException {
        ManifestElement[] elements = this.parseHeader(headers, key);
        if (elements != null && elements.length > 0) {
            return elements[0].getValue();
        }
        return null;
    }

    private ManifestElement[] parseHeader(Map headers, String key) throws CoreException {
        String value = (String)headers.get(key);
        if (value != null) {
            if (value.trim().length() > 0) {
                try {
                    return ManifestElement.parseHeader((String)key, (String)value);
                }
                catch (BundleException e) {
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", e.getMessage(), (Throwable)e));
                }
            }
            return new ManifestElement[0];
        }
        return null;
    }

    private void initiaize(IProject project) throws CoreException {
        IEclipsePreferences node;
        IContainer root = PDEProject.getBundleRoot(project);
        if (root != project) {
            this.setBundleRoot(root.getProjectRelativePath());
        }
        if ((node = new ProjectScope(project).getNode("org.eclipse.pde.core")) != null) {
            this.setExtensionRegistry(node.getBoolean("pluginProject.extensions", true));
            this.setEquinox(node.getBoolean("pluginProject.equinox", true));
        }
        this.setExportWizardId(PDEProject.getExportWizard(project));
        this.setLaunchShortcuts(PDEProject.getLaunchShortcuts(project));
        this.setLocationURI(project.getDescription().getLocationURI());
        this.setNatureIds(project.getDescription().getNatureIds());
        IFile manifest = PDEProject.getManifest(project);
        if (manifest.exists()) {
            String[] tokens;
            IBuildEntry entry;
            IPluginBase base;
            String tv;
            String lazy;
            String pv;
            int i;
            String value;
            ManifestElement[] elements;
            IJavaProject jp;
            Map headers;
            try {
                this.fReadHeaders = headers = ManifestElement.parseBundleManifest((InputStream)manifest.getContents(), null);
            }
            catch (IOException e) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", e.getMessage(), (Throwable)e));
            }
            catch (BundleException e) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", e.getMessage(), (Throwable)e));
            }
            this.setActivator(this.getHeaderValue(headers, "Bundle-Activator"));
            this.setBundleName(this.getHeaderValue(headers, "Bundle-Name"));
            this.setBundleVendor(this.getHeaderValue(headers, "Bundle-Vendor"));
            String version = this.getHeaderValue(headers, "Bundle-Version");
            if (version != null) {
                this.setBundleVersion(new Version(version));
            }
            if ((jp = JavaCore.create((IProject)project)).exists()) {
                this.setDefaultOutputFolder(jp.getOutputLocation().removeFirstSegments(1));
            }
            if ((elements = this.parseHeader(headers, "Fragment-Host")) != null && elements.length > 0) {
                this.setHost(this.getBundleProjectService().newHost(elements[0].getValue(), this.getRange(elements[0].getAttribute("bundle-version"))));
            }
            if ((value = this.getHeaderValue(headers, "Bundle-Localization")) != null) {
                this.setLocalization((IPath)new Path(value));
            }
            if ((elements = this.parseHeader(headers, "Bundle-RequiredExecutionEnvironment")) != null && elements.length > 0) {
                String[] keys = new String[elements.length];
                int i2 = 0;
                while (i2 < elements.length) {
                    keys[i2] = elements[i2].getValue();
                    ++i2;
                }
                this.setExecutionEnvironments(keys);
            }
            IBuild build = this.getBuildModel(project);
            elements = this.parseHeader(headers, "Bundle-ClassPath");
            IBundleClasspathEntry[] classpath = null;
            if (elements != null && elements.length > 0) {
                ArrayList<IBundleClasspathEntry> collect = new ArrayList<IBundleClasspathEntry>();
                i = 0;
                while (i < elements.length) {
                    String libName = elements[i].getValue();
                    IBundleClasspathEntry[] entries = this.getClasspathEntries(project, build, libName);
                    if (entries != null) {
                        int j = 0;
                        while (j < entries.length) {
                            collect.add(entries[j]);
                            ++j;
                        }
                    }
                    ++i;
                }
                classpath = collect.toArray(new IBundleClasspathEntry[collect.size()]);
            } else if (elements == null) {
                classpath = this.getClasspathEntries(project, build, ".");
            }
            this.setBundleClasspath(classpath);
            elements = this.parseHeader(headers, "Bundle-SymbolicName");
            if (elements != null && elements.length > 0) {
                this.setSymbolicName(elements[0].getValue());
                String directive = elements[0].getDirective("singleton");
                if (directive == null) {
                    directive = elements[0].getAttribute("singleton");
                }
                this.setSingleton("true".equals(directive));
            }
            if ((elements = this.parseHeader(headers, "Import-Package")) != null) {
                if (elements.length > 0) {
                    IPackageImportDescription[] imports = new IPackageImportDescription[elements.length];
                    i = 0;
                    while (i < elements.length) {
                        boolean optional = "optional".equals(elements[i].getDirective("resolution")) || "true".equals(elements[i].getAttribute("optional"));
                        pv = elements[i].getAttribute("specification-version");
                        if (pv == null) {
                            pv = elements[i].getAttribute("version");
                        }
                        imports[i] = this.getBundleProjectService().newPackageImport(elements[i].getValue(), this.getRange(pv), optional);
                        ++i;
                    }
                    this.setPackageImports(imports);
                } else {
                    this.setHeader("Import-Package", "");
                }
            }
            if ((elements = this.parseHeader(headers, "Export-Package")) != null && elements.length > 0) {
                IPackageExportDescription[] exports = new IPackageExportDescription[elements.length];
                i = 0;
                while (i < elements.length) {
                    ManifestElement exp = elements[i];
                    pv = exp.getAttribute("specification-version");
                    if (pv == null) {
                        pv = exp.getAttribute("version");
                    }
                    String directive = exp.getDirective("x-friends");
                    boolean internal = "true".equals(exp.getDirective("x-internal")) || directive != null;
                    String[] friends = null;
                    if (directive != null) {
                        friends = ManifestElement.getArrayFromList((String)directive);
                    }
                    exports[i] = this.getBundleProjectService().newPackageExport(exp.getValue(), this.getVersion(pv), !internal, friends);
                    ++i;
                }
                this.setPackageExports(exports);
            }
            if ((elements = this.parseHeader(headers, "Require-Bundle")) != null && elements.length > 0) {
                IRequiredBundleDescription[] req = new IRequiredBundleDescription[elements.length];
                i = 0;
                while (i < elements.length) {
                    ManifestElement rb = elements[i];
                    boolean reexport = "reexport".equals(rb.getDirective("visibility")) || "true".equals(rb.getAttribute("reprovide"));
                    boolean optional = "optional".equals(rb.getDirective("resolution")) || "true".equals(rb.getAttribute("optional"));
                    req[i] = this.getBundleProjectService().newRequiredBundle(rb.getValue(), this.getRange(rb.getAttribute("bundle-version")), optional, reexport);
                    ++i;
                }
                this.setRequiredBundles(req);
            }
            if ((lazy = this.getHeaderValue(headers, "Eclipse-AutoStart")) == null && (lazy = this.getHeaderValue(headers, "Eclipse-LazyStart")) == null) {
                this.setActivationPolicy(this.getHeaderValue(headers, "Bundle-ActivationPolicy"));
            }
            if ("true".equals(lazy)) {
                this.setActivationPolicy("lazy");
            }
            String latest = TargetPlatformHelper.getTargetVersionString();
            IPluginModelBase model = PluginRegistry.findModel(project);
            if (model != null && !(tv = TargetPlatformHelper.getTargetVersionForSchemaVersion((base = model.getPluginBase()).getSchemaVersion())).equals(latest)) {
                this.setTargetVersion(tv);
            }
            if (build != null && (entry = build.getEntry("bin.includes")) != null && (tokens = entry.getTokens()) != null && tokens.length > 0) {
                ArrayList<String> strings = new ArrayList<String>();
                int i3 = 0;
                while (i3 < tokens.length) {
                    strings.add(tokens[i3]);
                    ++i3;
                }
                strings.remove("META-INF/");
                String[] names = ProjectModifyOperation.getLibraryNames(this);
                if (names != null) {
                    int i4 = 0;
                    while (i4 < names.length) {
                        strings.remove(names[i4]);
                        Path path = new Path(names[i4]);
                        if (path.getFileExtension() == null) {
                            strings.remove(String.valueOf(names[i4]) + "/");
                        }
                        ++i4;
                    }
                }
                if (!strings.isEmpty()) {
                    IPath[] paths = new IPath[strings.size()];
                    int i5 = 0;
                    while (i5 < strings.size()) {
                        paths[i5] = new Path((String)strings.get(i5));
                        ++i5;
                    }
                    this.setBinIncludes(paths);
                }
            }
        }
    }

    private IBundleClasspathEntry[] getClasspathEntries(IProject project, IBuild build, String libraryName) throws CoreException {
        if (build != null) {
            IBuildEntry entry = build.getEntry("source." + libraryName);
            if (entry == null) {
                entry = build.getEntry("output." + libraryName);
                if (entry == null) {
                    return new IBundleClasspathEntry[]{this.getBundleProjectService().newBundleClasspathEntry(null, null, (IPath)new Path(libraryName))};
                }
                return this.getClasspathEntries(project, entry, true);
            }
            return this.getClasspathEntries(project, entry, false);
        }
        return null;
    }

    private IBundleClasspathEntry[] getClasspathEntries(IProject project, IBuildEntry entry, boolean binary) throws CoreException {
        String[] tokens = entry.getTokens();
        Path lib = null;
        lib = binary ? new Path(entry.getName().substring("output.".length())) : new Path(entry.getName().substring("source.".length()));
        if (tokens != null && tokens.length > 0) {
            IBundleClasspathEntry[] bces = new IBundleClasspathEntry[tokens.length];
            int i = 0;
            while (i < tokens.length) {
                Path path = new Path(tokens[i]);
                IBundleClasspathEntry spec = null;
                if (binary) {
                    spec = this.getBundleProjectService().newBundleClasspathEntry(null, (IPath)path, (IPath)lib);
                } else {
                    IJavaProject jp = JavaCore.create((IProject)project);
                    IPath output = null;
                    if (jp.exists()) {
                        IClasspathEntry[] rawClasspath = jp.getRawClasspath();
                        int j = 0;
                        while (j < rawClasspath.length) {
                            IClasspathEntry cpe = rawClasspath[j];
                            if (cpe.getEntryKind() == 3 && cpe.getPath().removeFirstSegments(1).equals((Object)path)) {
                                output = cpe.getOutputLocation();
                                if (output == null) break;
                                output = output.removeFirstSegments(1);
                                break;
                            }
                            ++j;
                        }
                    }
                    spec = this.getBundleProjectService().newBundleClasspathEntry((IPath)path, output, (IPath)lib);
                }
                bces[i] = spec;
                ++i;
            }
            return bces;
        }
        return null;
    }

    private VersionRange getRange(String version) {
        if (version != null) {
            return new VersionRange(version);
        }
        return null;
    }

    private Version getVersion(String version) {
        if (version != null) {
            return new Version(version);
        }
        return null;
    }

    public void apply(IProgressMonitor monitor) throws CoreException {
        ProjectModifyOperation operation = new ProjectModifyOperation();
        operation.execute(monitor, this);
        this.fService = null;
    }

    public void setSymbolicName(String name) {
        this.fSymbolicName = name;
    }

    public String getSymbolicName() {
        return this.fSymbolicName;
    }

    public void setLocationURI(URI location) {
        this.fUri = location;
    }

    public URI getLocationURI() {
        return this.fUri;
    }

    public void setBundleName(String name) {
        this.fBundleName = name;
    }

    public String getBundleName() {
        return this.fBundleName;
    }

    public void setBundleVendor(String name) {
        this.fBundleVendor = name;
    }

    public String getBundleVendor() {
        return this.fBundleVendor;
    }

    public void setBundleVersion(Version version) {
        this.fVersion = version;
    }

    public Version getBundleVersion() {
        return this.fVersion;
    }

    public void setSingleton(boolean singleton) {
        this.fSingleton = singleton;
    }

    public boolean isSingleton() {
        return this.fSingleton;
    }

    public void setLocalization(IPath path) {
        this.fLocalization = path;
    }

    public IPath getLocalization() {
        return this.fLocalization;
    }

    public String[] getNatureIds() {
        if (this.fNatures == null) {
            return new String[0];
        }
        String[] copy = new String[this.fNatures.length];
        System.arraycopy(this.fNatures, 0, copy, 0, this.fNatures.length);
        return copy;
    }

    public void setNatureIds(String[] natures) {
        String[] copy = null;
        if (natures != null) {
            copy = new String[natures.length];
            System.arraycopy(natures, 0, copy, 0, natures.length);
        }
        this.fNatures = copy;
    }

    public boolean hasNature(String natureId) {
        if (this.fNatures != null) {
            int i = 0;
            while (i < this.fNatures.length) {
                if (this.fNatures[i].equals(natureId)) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    public void setHost(IHostDescription host) {
        this.fHost = host;
    }

    public IHostDescription getHost() {
        return this.fHost;
    }

    public void setDefaultOutputFolder(IPath output) {
        this.fDefaultOuputFolder = output;
    }

    public IPath getDefaultOutputFolder() {
        return this.fDefaultOuputFolder;
    }

    public void setExecutionEnvironments(String[] environments) {
        this.fEEs = environments;
    }

    public String[] getExecutionEnvironments() {
        return this.fEEs;
    }

    public IBundleClasspathEntry[] getBundleClasspath() {
        return this.fBundleClasspath;
    }

    public void setActivator(String className) {
        this.fActivator = className;
    }

    public String getActivator() {
        return this.fActivator;
    }

    public void setTargetVersion(String version) {
        this.fTargetVersion = version;
    }

    public String getTargetVersion() {
        return this.fTargetVersion;
    }

    public void setEquinox(boolean equinox) {
        this.fIsEquinox = equinox;
    }

    public boolean isEquinox() {
        return this.fIsEquinox;
    }

    public void setRequiredBundles(IRequiredBundleDescription[] bundles) {
        this.fRequiredBundles = bundles;
    }

    public IRequiredBundleDescription[] getRequiredBundles() {
        return this.fRequiredBundles;
    }

    public void setPackageImports(IPackageImportDescription[] imports) {
        this.fImports = imports;
    }

    public IPackageImportDescription[] getPackageImports() {
        return this.fImports;
    }

    public void setPackageExports(IPackageExportDescription[] exports) {
        this.fExports = exports;
    }

    public IPackageExportDescription[] getPackageExports() {
        return this.fExports;
    }

    public IProject getProject() {
        return this.fProject;
    }

    public void setBundleClassath(IBundleClasspathEntry[] entries) {
        this.setBundleClasspath(entries);
    }

    public void setBundleClasspath(IBundleClasspathEntry[] entries) {
        this.fBundleClasspath = entries;
    }

    public void setBinIncludes(IPath[] paths) {
        this.fBinIncludes = paths;
    }

    public IPath[] getBinIncludes() {
        return this.fBinIncludes;
    }

    public void setBundleRoot(IPath path) {
        this.fRoot = path;
    }

    public IPath getBundleRoot() {
        return this.fRoot;
    }

    public boolean isExtensionRegistry() {
        return this.fIsExtensionRegistry;
    }

    public void setExtensionRegistry(boolean supportExtensions) {
        this.fIsExtensionRegistry = supportExtensions;
    }

    public String[] getLaunchShortcuts() {
        return this.fLaunchShortcuts;
    }

    public void setLaunchShortcuts(String[] ids) {
        this.fLaunchShortcuts = ids;
    }

    public String getExportWizardId() {
        return this.fExportWizard;
    }

    public void setExportWizardId(String id) {
        this.fExportWizard = id;
    }

    public void setActivationPolicy(String policy) {
        this.fActivationPolicy = "lazy".equals(policy) ? policy : null;
    }

    public String getActivationPolicy() {
        return this.fActivationPolicy;
    }

    public void setHeader(String header, String value) {
        this.fHeaders.put(header, value);
    }

    public String getHeader(String header) {
        if (this.fHeaders.containsKey(header)) {
            return (String)this.fHeaders.get(header);
        }
        if (this.fReadHeaders != null && this.fReadHeaders.containsKey(header)) {
            String value = (String)this.fReadHeaders.get(header);
            if (value == null) {
                return "";
            }
            return value;
        }
        return null;
    }

    Map getExtraHeaders() {
        return this.fHeaders;
    }
}

