/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jdt.core.IClasspathContainer
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.osgi.service.resolver.BaseDescription
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.BundleSpecification
 *  org.eclipse.osgi.service.resolver.ExportPackageDescription
 *  org.eclipse.osgi.service.resolver.HostSpecification
 *  org.eclipse.osgi.service.resolver.ImportPackageSpecification
 *  org.eclipse.osgi.service.resolver.StateHelper
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;
import java.util.TreeMap;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.StateHelper;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildEntry;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.ClasspathUtilCore;
import org.eclipse.pde.internal.core.PDEClasspathContainer;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelBase;

public class RequiredPluginsClasspathContainer
extends PDEClasspathContainer
implements IClasspathContainer {
    private IPluginModelBase fModel;
    private IBuild fBuild;
    private static boolean DEBUG = false;
    private IClasspathEntry[] fEntries = null;

    static {
        DEBUG = PDECore.getDefault().isDebugging() && "true".equals(Platform.getDebugOption((String)"org.eclipse.pde.core/classpath"));
    }

    public RequiredPluginsClasspathContainer(IPluginModelBase model) {
        this(model, null);
    }

    public RequiredPluginsClasspathContainer(IPluginModelBase model, IBuild build) {
        this.fModel = model;
        this.fBuild = build;
    }

    public int getKind() {
        return 1;
    }

    public IPath getPath() {
        return PDECore.REQUIRED_PLUGINS_CONTAINER_PATH;
    }

    public String getDescription() {
        return PDECoreMessages.RequiredPluginsClasspathContainer_description;
    }

    public IClasspathEntry[] getClasspathEntries() {
        if (this.fModel == null) {
            if (DEBUG) {
                System.out.println("********Returned an empty container");
                System.out.println();
            }
            return new IClasspathEntry[0];
        }
        if (this.fEntries == null) {
            this.fEntries = this.computePluginEntries();
        }
        if (DEBUG) {
            System.out.println("Dependencies for plugin '" + this.fModel.getPluginBase().getId() + "':");
            int i = 0;
            while (i < this.fEntries.length) {
                System.out.println(this.fEntries[i]);
                ++i;
            }
            System.out.println();
        }
        return this.fEntries;
    }

    private IClasspathEntry[] computePluginEntries() {
        ArrayList entries = new ArrayList();
        try {
            BundleDescription bundle;
            int i;
            BundleDescription desc = this.fModel.getBundleDescription();
            if (desc == null) {
                return new IClasspathEntry[0];
            }
            Map map = this.retrieveVisiblePackagesFromState(desc);
            HashSet<BundleDescription> added = new HashSet<BundleDescription>();
            added.add(desc);
            HostSpecification host = desc.getHost();
            if (host != null) {
                this.addHostPlugin(host, added, map, entries);
            } else if ("true".equals(System.getProperty("pde.allowCycles"))) {
                BundleDescription[] fragments = desc.getFragments();
                i = 0;
                while (i < fragments.length) {
                    if (fragments[i].isResolved()) {
                        this.addPlugin(fragments[i], false, map, entries);
                    }
                    ++i;
                }
            }
            BundleSpecification[] required = desc.getRequiredBundles();
            i = 0;
            while (i < required.length) {
                this.addDependency((BundleDescription)required[i].getSupplier(), added, map, entries);
                ++i;
            }
            if (this.fBuild == null) {
                this.fBuild = ClasspathUtilCore.getBuild(this.fModel);
            }
            if (this.fBuild != null) {
                this.addSecondaryDependencies(desc, added, entries);
            }
            TreeMap<String, BundleDescription> sortedMap = new TreeMap<String, BundleDescription>();
            Iterator<Object> iter = map.keySet().iterator();
            while (iter.hasNext()) {
                bundle = (BundleDescription)iter.next();
                sortedMap.put(bundle.toString(), bundle);
            }
            iter = sortedMap.values().iterator();
            while (iter.hasNext()) {
                bundle = (BundleDescription)iter.next();
                IPluginModelBase model = PluginRegistry.findModel(bundle);
                if (model == null || !model.isEnabled()) continue;
                this.addDependencyViaImportPackage(model.getBundleDescription(), added, map, entries);
            }
            if (this.fBuild != null) {
                this.addExtraClasspathEntries(added, entries);
            }
        }
        catch (CoreException coreException) {}
        return entries.toArray(new IClasspathEntry[entries.size()]);
    }

    private Map retrieveVisiblePackagesFromState(BundleDescription desc) {
        HashMap visiblePackages = new HashMap();
        StateHelper helper = Platform.getPlatformAdmin().getStateHelper();
        this.addVisiblePackagesFromState(helper, desc, visiblePackages);
        if (desc.getHost() != null) {
            this.addVisiblePackagesFromState(helper, (BundleDescription)desc.getHost().getSupplier(), visiblePackages);
        }
        return visiblePackages;
    }

    private void addVisiblePackagesFromState(StateHelper helper, BundleDescription desc, Map visiblePackages) {
        if (desc == null) {
            return;
        }
        ExportPackageDescription[] exports = helper.getVisiblePackages(desc);
        int i = 0;
        while (i < exports.length) {
            BundleDescription exporter = exports[i].getExporter();
            if (exporter != null) {
                PDEClasspathContainer.Rule rule;
                ArrayList<PDEClasspathContainer.Rule> list = (ArrayList<PDEClasspathContainer.Rule>)visiblePackages.get(exporter);
                if (list == null) {
                    list = new ArrayList<PDEClasspathContainer.Rule>();
                    visiblePackages.put(exporter, list);
                }
                if (!list.contains(rule = this.getRule(helper, desc, exports[i]))) {
                    list.add(rule);
                }
            }
            ++i;
        }
    }

    private PDEClasspathContainer.Rule getRule(StateHelper helper, BundleDescription desc, ExportPackageDescription export) {
        PDEClasspathContainer.Rule rule = new PDEClasspathContainer.Rule();
        rule.discouraged = helper.getAccessCode(desc, export) == 2;
        String name = export.getName();
        rule.path = name.equals(".") ? new Path("*") : new Path(String.valueOf(name.replaceAll("\\.", "/")) + "/*");
        return rule;
    }

    protected void addDependencyViaImportPackage(BundleDescription desc, HashSet added, Map map, ArrayList entries) throws CoreException {
        if (desc == null || !added.add(desc)) {
            return;
        }
        this.addPlugin(desc, true, map, entries);
        if (this.hasExtensibleAPI(desc) && desc.getContainingState() != null) {
            BundleDescription[] fragments = desc.getFragments();
            int i = 0;
            while (i < fragments.length) {
                if (fragments[i].isResolved()) {
                    this.addDependencyViaImportPackage(fragments[i], added, map, entries);
                }
                ++i;
            }
        }
    }

    private void addDependency(BundleDescription desc, HashSet added, Map map, ArrayList entries) throws CoreException {
        this.addDependency(desc, added, map, entries, true);
    }

    private void addDependency(BundleDescription desc, HashSet added, Map map, ArrayList entries, boolean useInclusion) throws CoreException {
        if (desc == null || !added.add(desc)) {
            return;
        }
        BundleDescription[] fragments = this.hasExtensibleAPI(desc) ? desc.getFragments() : new BundleDescription[]{};
        int i = 0;
        while (i < fragments.length) {
            if (fragments[i].isResolved() && ClasspathUtilCore.isPatchFragment(fragments[i])) {
                this.addDependency(fragments[i], added, map, entries, useInclusion);
            }
            ++i;
        }
        this.addPlugin(desc, useInclusion, map, entries);
        i = 0;
        while (i < fragments.length) {
            if (fragments[i].isResolved() && !ClasspathUtilCore.isPatchFragment(fragments[i])) {
                this.addDependency(fragments[i], added, map, entries, useInclusion);
            }
            ++i;
        }
        BundleSpecification[] required = desc.getRequiredBundles();
        int i2 = 0;
        while (i2 < required.length) {
            if (required[i2].isExported()) {
                this.addDependency((BundleDescription)required[i2].getSupplier(), added, map, entries, useInclusion);
            }
            ++i2;
        }
    }

    private boolean addPlugin(BundleDescription desc, boolean useInclusions, Map map, ArrayList entries) throws CoreException {
        PDEClasspathContainer.Rule[] rules;
        IPluginModelBase model = PluginRegistry.findModel(desc);
        if (model == null || !model.isEnabled()) {
            return false;
        }
        IResource resource = model.getUnderlyingResource();
        PDEClasspathContainer.Rule[] ruleArray = rules = useInclusions ? this.getInclusions(map, model) : null;
        if (resource != null) {
            this.addProjectEntry(resource.getProject(), rules, entries);
        } else {
            RequiredPluginsClasspathContainer.addExternalPlugin(model, rules, entries);
        }
        return true;
    }

    private PDEClasspathContainer.Rule[] getInclusions(Map map, IPluginModelBase model) {
        BundleDescription desc = model.getBundleDescription();
        if (desc == null || "false".equals(System.getProperty("pde.restriction")) || !(this.fModel instanceof IBundlePluginModelBase) || TargetPlatformHelper.getTargetVersion() < 3.1) {
            return null;
        }
        PDEClasspathContainer.Rule[] rules = desc.getHost() != null ? this.getInclusions(map, (BundleDescription)desc.getHost().getSupplier()) : this.getInclusions(map, desc);
        return rules.length == 0 && !ClasspathUtilCore.hasBundleStructure(model) ? null : rules;
    }

    private PDEClasspathContainer.Rule[] getInclusions(Map map, BundleDescription desc) {
        ArrayList list = (ArrayList)map.get(desc);
        return list != null ? list.toArray(new PDEClasspathContainer.Rule[list.size()]) : new PDEClasspathContainer.Rule[]{};
    }

    private void addHostPlugin(HostSpecification hostSpec, HashSet added, Map map, ArrayList entries) throws CoreException {
        BundleDescription host;
        BaseDescription desc = hostSpec.getSupplier();
        if (desc instanceof BundleDescription && added.add(host = (BundleDescription)desc) && this.addPlugin(host, false, map, entries)) {
            BundleSpecification[] required = host.getRequiredBundles();
            int i = 0;
            while (i < required.length) {
                this.addDependency((BundleDescription)required[i].getSupplier(), added, map, entries);
                ++i;
            }
            ImportPackageSpecification[] imports = host.getImportPackages();
            int i2 = 0;
            while (i2 < imports.length) {
                BaseDescription supplier = imports[i2].getSupplier();
                if (supplier instanceof ExportPackageDescription) {
                    this.addDependencyViaImportPackage(((ExportPackageDescription)supplier).getExporter(), added, map, entries);
                }
                ++i2;
            }
        }
    }

    private boolean hasExtensibleAPI(BundleDescription desc) {
        IPluginModelBase model = PluginRegistry.findModel(desc);
        return model != null ? ClasspathUtilCore.hasExtensibleAPI(model) : false;
    }

    protected void addExtraClasspathEntries(HashSet added, ArrayList entries) {
        IBuildEntry[] buildEntries = this.fBuild.getBuildEntries();
        int i = 0;
        while (i < buildEntries.length) {
            String name = buildEntries[i].getName();
            if (name.equals("jars.extra.classpath") || name.startsWith("extra.")) {
                this.addExtraClasspathEntries(added, entries, buildEntries[i].getTokens());
            }
            ++i;
        }
    }

    protected void addExtraClasspathEntries(HashSet added, ArrayList entries, String[] tokens) {
        int i = 0;
        while (i < tokens.length) {
            block13: {
                IPath path;
                block11: {
                    block12: {
                        IFile resource;
                        path = Path.fromPortableString((String)tokens[i]);
                        if (path.isAbsolute()) break block11;
                        File file = new File(this.fModel.getInstallLocation(), path.toString());
                        if (!file.exists() || (resource = PDECore.getWorkspace().getRoot().getFileForLocation((IPath)new Path(file.getAbsolutePath()))) == null || !resource.getProject().equals((Object)this.fModel.getUnderlyingResource().getProject())) break block12;
                        this.addExtraLibrary(resource.getFullPath(), null, entries);
                        break block13;
                    }
                    if (path.segmentCount() < 3 || !"..".equals(path.segment(0))) break block13;
                    path = path.removeFirstSegments(1);
                    path = Path.fromPortableString((String)"platform:/plugin/").append(path);
                }
                if (!path.toPortableString().startsWith("platform:")) {
                    this.addExtraLibrary(path, null, entries);
                } else {
                    IPluginModelBase model;
                    String pluginID;
                    int count;
                    int n = count = path.getDevice() == null ? 4 : 3;
                    if (path.segmentCount() >= count && !added.contains(pluginID = path.segment(count - 2)) && (model = PluginRegistry.findModel(pluginID)) != null && model.isEnabled()) {
                        path = path.setDevice(null);
                        path = path.removeFirstSegments(count - 1);
                        if (model.getUnderlyingResource() == null) {
                            File file = new File(model.getInstallLocation(), path.toOSString());
                            if (file.exists()) {
                                this.addExtraLibrary((IPath)new Path(file.getAbsolutePath()), model, entries);
                            }
                        } else {
                            IProject project = model.getUnderlyingResource().getProject();
                            IFile file = project.getFile(path);
                            if (file.exists()) {
                                this.addExtraLibrary(file.getFullPath(), model, entries);
                            }
                        }
                    }
                }
            }
            ++i;
        }
    }

    private void addSecondaryDependencies(BundleDescription desc, HashSet added, ArrayList entries) {
        try {
            IBuildEntry entry = this.fBuild.getEntry("additional.bundles");
            if (entry != null) {
                String[] tokens = entry.getTokens();
                int i = 0;
                while (i < tokens.length) {
                    BundleDescription bundleDesc;
                    String pluginId = tokens[i];
                    IPluginModelBase model = PluginRegistry.findModel(pluginId);
                    if (model != null && !added.contains(bundleDesc = model.getBundleDescription())) {
                        HashMap rules = new HashMap();
                        this.findExportedPackages(bundleDesc, desc, rules);
                        if (model != null) {
                            this.addDependency(bundleDesc, added, rules, entries, true);
                        }
                    }
                    ++i;
                }
            }
        }
        catch (CoreException coreException) {
            return;
        }
    }

    protected final void findExportedPackages(BundleDescription desc, BundleDescription projectDesc, Map map) {
        if (desc != null) {
            Stack<Object> stack = new Stack<Object>();
            stack.add(desc);
            while (!stack.isEmpty()) {
                BundleDescription bdesc = (BundleDescription)stack.pop();
                ExportPackageDescription[] expkgs = bdesc.getExportPackages();
                ArrayList<PDEClasspathContainer.Rule> rules = new ArrayList<PDEClasspathContainer.Rule>();
                int i = 0;
                while (i < expkgs.length) {
                    PDEClasspathContainer.Rule rule = new PDEClasspathContainer.Rule();
                    rule.discouraged = this.restrictPackage(projectDesc, expkgs[i]);
                    rule.path = new Path(String.valueOf(expkgs[i].getName().replaceAll("\\.", "/")) + "/*");
                    rules.add(rule);
                    ++i;
                }
                map.put(bdesc, rules);
                BundleSpecification[] requiredBundles = bdesc.getRequiredBundles();
                int i2 = 0;
                while (i2 < requiredBundles.length) {
                    BaseDescription bd;
                    if (requiredBundles[i2].isExported() && (bd = requiredBundles[i2].getSupplier()) != null && bd instanceof BundleDescription) {
                        stack.add(bd);
                    }
                    ++i2;
                }
            }
        }
    }

    private boolean restrictPackage(BundleDescription desc, ExportPackageDescription pkg) {
        String[] friends = (String[])pkg.getDirective("x-friends");
        if (friends != null) {
            String symbolicName = desc.getSymbolicName();
            int i = 0;
            while (i < friends.length) {
                if (symbolicName.equals(friends[i])) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        return (Boolean)pkg.getDirective("x-internal");
    }

    private void addExtraLibrary(IPath path, IPluginModelBase model, ArrayList entries) {
        if (path.segmentCount() > 1) {
            IPath srcPath = null;
            if (model != null) {
                IPath shortPath = path.removeFirstSegments(path.matchingFirstSegments((IPath)new Path(model.getInstallLocation())));
                srcPath = ClasspathUtilCore.getSourceAnnotation(model, shortPath.toString());
            } else {
                String filename = ClasspathUtilCore.getSourceZipName(path.lastSegment());
                IPath candidate = path.removeLastSegments(1).append(filename);
                if (PDECore.getWorkspace().getRoot().getFile(candidate).exists()) {
                    srcPath = candidate;
                }
            }
            IClasspathEntry clsEntry = JavaCore.newLibraryEntry((IPath)path, (IPath)srcPath, null);
            if (!entries.contains(clsEntry)) {
                entries.add(clsEntry);
            }
        }
    }
}

