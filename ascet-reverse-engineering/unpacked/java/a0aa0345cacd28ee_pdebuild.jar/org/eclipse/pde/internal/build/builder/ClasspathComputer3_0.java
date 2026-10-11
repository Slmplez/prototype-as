/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.ExportPackageDescription
 *  org.eclipse.osgi.service.resolver.HostSpecification
 *  org.eclipse.osgi.service.resolver.StateHelper
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Filter
 */
package org.eclipse.pde.internal.build.builder;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.StateHelper;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.CatchAllValue;
import org.eclipse.pde.internal.build.IBuildPropertiesConstants;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.IXMLConstants;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.builder.IClasspathComputer;
import org.eclipse.pde.internal.build.builder.ModelBuildScriptGenerator;
import org.eclipse.pde.internal.build.site.PDEState;
import org.osgi.framework.Filter;

public class ClasspathComputer3_0
implements IClasspathComputer,
IPDEBuildConstants,
IXMLConstants,
IBuildPropertiesConstants {
    private static final String EXCLUDE_ALL_RULE = "?**/*";
    private final ModelBuildScriptGenerator generator;
    private Map visiblePackages = null;
    private Map pathElements = null;
    private boolean allowBinaryCycles = false;
    private Set requiredIds = null;
    protected String modelLocation = null;

    private static String normalize(String path) {
        if (path == null) {
            return null;
        }
        return path.replaceAll("\\\\", "/");
    }

    public ClasspathComputer3_0(ModelBuildScriptGenerator modelGenerator) {
        this.generator = modelGenerator;
    }

    public List getClasspath(BundleDescription model, ModelBuildScriptGenerator.CompiledEntry jar) throws CoreException {
        ArrayList classpath = new ArrayList(20);
        ArrayList pluginChain = new ArrayList(10);
        this.modelLocation = this.generator.getLocation(model);
        HashSet addedPlugins = new HashSet(10);
        this.pathElements = new HashMap();
        this.visiblePackages = this.getVisiblePackages(model);
        this.requiredIds = new HashSet();
        this.allowBinaryCycles = AbstractScriptGenerator.getPropertyAsBoolean("allowBinaryCycles");
        this.addPrerequisites(model, classpath, this.modelLocation, pluginChain, addedPlugins);
        this.addSelf(model, jar, classpath, this.modelLocation, pluginChain, addedPlugins);
        this.recordRequiredIds(model);
        return classpath;
    }

    private void recordRequiredIds(BundleDescription model) {
        Properties bundleProperties = null;
        bundleProperties = (Properties)model.getUserObject();
        if (bundleProperties == null) {
            bundleProperties = new Properties();
            model.setUserObject((Object)bundleProperties);
        }
        StringBuffer buffer = new StringBuffer();
        Iterator iterator = this.requiredIds.iterator();
        while (iterator.hasNext()) {
            buffer.append(iterator.next().toString());
            buffer.append(':');
        }
        bundleProperties.setProperty("requiredBundleIds", buffer.toString());
    }

    private Map getVisiblePackages(BundleDescription model) {
        HashMap packages = new HashMap(20);
        StateHelper helper = Platform.getPlatformAdmin().getStateHelper();
        this.addVisiblePackagesFromState(helper, model, packages);
        if (model.getHost() != null) {
            this.addVisiblePackagesFromState(helper, (BundleDescription)model.getHost().getSupplier(), packages);
        }
        return packages;
    }

    private void addVisiblePackagesFromState(StateHelper helper, BundleDescription model, Map packages) {
        ExportPackageDescription[] exports = helper.getVisiblePackages(model);
        int i = 0;
        while (i < exports.length) {
            BundleDescription exporter = exports[i].getExporter();
            if (exporter != null) {
                boolean discouraged = helper.getAccessCode(model, exports[i]) == 2;
                String pattern = String.valueOf(exports[i].getName().replaceAll("\\.", "/")) + "/*";
                String rule = String.valueOf(discouraged ? (char)'~' : '+') + pattern;
                String packagesKey = String.valueOf(exporter.getSymbolicName()) + "_" + exporter.getVersion();
                String rules = (String)packages.get(packagesKey);
                if (rules != null) {
                    if (rules.indexOf(rule) == -1) {
                        rules = String.valueOf(rules) + File.pathSeparator + rule;
                    }
                } else {
                    rules = rule;
                }
                packages.put(packagesKey, rules);
            }
            ++i;
        }
    }

    private void addPlugin(BundleDescription plugin, List classpath, String location) throws CoreException {
        boolean allFragments = true;
        String patchInfo = (String)this.generator.getSite(false).getRegistry().getPatchData().get(new Long(plugin.getBundleId()));
        if (patchInfo != null && plugin != this.generator.getModel()) {
            this.addFragmentsLibraries(plugin, classpath, location, false, false);
            allFragments = false;
        }
        this.requiredIds.add(new Long(plugin.getBundleId()));
        this.addRuntimeLibraries(plugin, classpath, location);
        this.addFragmentsLibraries(plugin, classpath, location, true, allFragments);
    }

    private void addRuntimeLibraries(BundleDescription model, List classpath, String baseLocation) throws CoreException {
        String[] libraries = this.getClasspathEntries(model);
        String root = this.generator.getLocation(model);
        IPath base = Utils.makeRelative((IPath)new Path(root), (IPath)new Path(baseLocation));
        Properties modelProps = this.getBuildPropertiesFor(model);
        if (modelProps != AbstractScriptGenerator.MissingProperties.getInstance()) {
            ModelBuildScriptGenerator.specialDotProcessing(modelProps, libraries);
        }
        int i = 0;
        while (i < libraries.length) {
            this.addDevEntries(model, baseLocation, classpath, Utils.getArrayFromString(modelProps.getProperty("output." + libraries[i])), modelProps);
            this.addPathAndCheck(model, base, libraries[i], modelProps, classpath);
            ++i;
        }
    }

    private void addFragmentsLibraries(BundleDescription plugin, List classpath, String baseLocation, boolean afterPlugin, boolean all) throws CoreException {
        BundleDescription[] fragments = plugin.getFragments();
        if (fragments == null) {
            return;
        }
        int i = 0;
        while (i < fragments.length) {
            if (fragments[i] != this.generator.getModel() && this.matchFilter(fragments[i])) {
                this.requiredIds.add(new Long(fragments[i].getBundleId()));
                if (!afterPlugin && this.isPatchFragment(fragments[i])) {
                    this.addPluginLibrariesToFragmentLocations(plugin, fragments[i], classpath, baseLocation);
                    this.addRuntimeLibraries(fragments[i], classpath, baseLocation);
                } else if (afterPlugin && !this.isPatchFragment(fragments[i]) || all) {
                    this.addRuntimeLibraries(fragments[i], classpath, baseLocation);
                    this.addPluginLibrariesToFragmentLocations(plugin, fragments[i], classpath, baseLocation);
                }
            }
            ++i;
        }
    }

    private boolean isPatchFragment(BundleDescription fragment) throws CoreException {
        return this.generator.getSite(false).getRegistry().getPatchData().get(new Long(fragment.getBundleId())) != null;
    }

    private void addPluginLibrariesToFragmentLocations(BundleDescription plugin, BundleDescription fragment, List classpath, String baseLocation) throws CoreException {
        String[] libraries = this.getClasspathEntries(plugin);
        String root = this.generator.getLocation(fragment);
        IPath base = Utils.makeRelative((IPath)new Path(root), (IPath)new Path(baseLocation));
        Properties modelProps = this.getBuildPropertiesFor(fragment);
        int i = 0;
        while (i < libraries.length) {
            this.addPathAndCheck(fragment, base, libraries[i], modelProps, classpath);
            ++i;
        }
    }

    private Properties getBuildPropertiesFor(BundleDescription bundle) {
        try {
            Properties bundleProperties = AbstractScriptGenerator.readProperties(this.generator.getLocation(bundle), "build.properties", 0);
            if (Utils.isStringIn(this.generator.getClasspathEntries(bundle), ".") != -1) {
                String outputValue;
                String sourceFolder = bundleProperties.getProperty("source..");
                if (sourceFolder != null) {
                    bundleProperties.setProperty("source.@dot", sourceFolder);
                    bundleProperties.remove("source..");
                }
                if ((outputValue = bundleProperties.getProperty("output..")) != null) {
                    bundleProperties.setProperty("output.@dot", outputValue);
                    bundleProperties.remove("output..");
                }
            }
            return bundleProperties;
        }
        catch (CoreException coreException) {
            return null;
        }
    }

    private void addPathAndCheck(BundleDescription model, IPath basePath, String libraryName, Properties modelProperties, List classpath) {
        String pluginKey = model != null ? String.valueOf(model.getSymbolicName()) + "_" + model.getVersion() : null;
        String rules = "";
        BundleDescription currentBundle = this.generator.getModel();
        if (model != null && model != currentBundle && (currentBundle.getHost() == null || currentBundle.getHost().getSupplier() != model)) {
            String packageKey = pluginKey;
            if (model.isResolved() && model.getHost() != null) {
                BundleDescription host = (BundleDescription)model.getHost().getSupplier();
                packageKey = String.valueOf(host.getSymbolicName()) + "_" + host.getVersion();
            }
            rules = this.visiblePackages.containsKey(packageKey) ? "[" + (String)this.visiblePackages.get(packageKey) + File.pathSeparator + EXCLUDE_ALL_RULE + "]" : "[?**/*]";
        }
        String path = null;
        String subPath = null;
        Path libraryPath = new Path(libraryName);
        if (libraryPath.isAbsolute()) {
            path = libraryPath.toOSString();
        } else if ("jar".equalsIgnoreCase(basePath.getFileExtension())) {
            if ("jar".equalsIgnoreCase(libraryPath.getFileExtension())) {
                subPath = libraryPath.toOSString();
            }
            path = basePath.toOSString();
        } else {
            path = basePath.append((IPath)libraryPath).toOSString();
        }
        path = ModelBuildScriptGenerator.replaceVariables(path, pluginKey == null ? false : this.generator.getCompiledElements().contains(pluginKey));
        String secondaryPath = null;
        if (this.generator.getCompiledElements().contains(pluginKey)) {
            if (modelProperties == null || modelProperties.getProperty("source." + libraryName) != null) {
                path = String.valueOf(Utils.getPropertyFormat("build.result.folder")) + '/' + path;
            }
            secondaryPath = String.valueOf(Utils.getPropertyFormat("build.result.folder")) + "/../" + model.getSymbolicName() + '_' + model.getVersion() + '/' + libraryName;
        }
        this.addClasspathElementWithRule(classpath, path, subPath, rules);
        if (secondaryPath != null) {
            this.addClasspathElementWithRule(classpath, secondaryPath, null, rules);
        }
    }

    private void addClasspathElementWithRule(List classpath, String path, String subPath, String rules) {
        path = ClasspathComputer3_0.normalize(path);
        String elementsKey = (subPath = ClasspathComputer3_0.normalize(subPath)) != null ? String.valueOf(path) + '/' + subPath : path;
        ClasspathElement existing = (ClasspathElement)this.pathElements.get(elementsKey);
        if (existing != null) {
            existing.addRules(rules);
        } else {
            ClasspathElement element = new ClasspathElement(path, subPath, rules);
            classpath.add(element);
            this.pathElements.put(elementsKey, element);
        }
    }

    private void addSelf(BundleDescription model, ModelBuildScriptGenerator.CompiledEntry jar, List classpath, String location, List pluginChain, Set addedPlugins) throws CoreException {
        String extraClasspath;
        Properties modelProperties;
        String jarOrder;
        HostSpecification host = model.getHost();
        if (host != null) {
            BundleDescription[] hosts = host.getHosts();
            int i = 0;
            while (i < hosts.length) {
                this.addPluginAndPrerequisites(hosts[i], classpath, location, pluginChain, addedPlugins);
                ++i;
            }
        }
        if ((jarOrder = (String)(modelProperties = this.generator.getBuildProperties()).get("jars.compile.order")) == null) {
            String[] libraries = this.getClasspathEntries(model);
            if (libraries != null) {
                int i = 0;
                while (i < libraries.length) {
                    String libraryName = libraries[i];
                    if (!jar.getName(false).equals(libraryName)) {
                        boolean isSource;
                        boolean bl = isSource = modelProperties.getProperty("source." + libraryName) != null;
                        if (isSource) {
                            this.addDevEntries(model, location, classpath, Utils.getArrayFromString(modelProperties.getProperty("output." + libraryName)), modelProperties);
                        }
                        this.addPathAndCheck(model, (IPath)Path.EMPTY, libraryName, modelProperties, classpath);
                    }
                    ++i;
                }
            }
        } else {
            String[] order = Utils.getArrayFromString(jarOrder);
            int i = 0;
            while (i < order.length) {
                if (order[i].equals(jar.getName(false))) break;
                this.addDevEntries(model, location, classpath, Utils.getArrayFromString((String)modelProperties.get("output." + order[i])), modelProperties);
                this.addPathAndCheck(model, (IPath)Path.EMPTY, order[i], modelProperties, classpath);
                ++i;
            }
            String[] libraries = this.getClasspathEntries(model);
            int i2 = 0;
            while (i2 < libraries.length) {
                String libraryName = libraries[i2];
                if (modelProperties.get("source." + libraryName) == null) {
                    this.addPathAndCheck(model, (IPath)Path.EMPTY, libraryName, modelProperties, classpath);
                }
                ++i2;
            }
        }
        if ((extraClasspath = (String)modelProperties.get("jars.extra.classpath")) != null) {
            String[] extra = Utils.getArrayFromString(extraClasspath, ";,");
            int i = 0;
            while (i < extra.length) {
                String[] toAdd = this.computeExtraPath(extra[i], classpath, location);
                if (toAdd != null && toAdd.length == 2) {
                    this.addPathAndCheck(null, (IPath)new Path(toAdd[0]), toAdd[1], modelProperties, classpath);
                }
                ++i;
            }
        }
        String[] jarSpecificExtraClasspath = jar.getExtraClasspath();
        int i = 0;
        while (i < jarSpecificExtraClasspath.length) {
            String[] toAdd = this.computeExtraPath(jarSpecificExtraClasspath[i], classpath, location);
            if (toAdd != null && toAdd.length == 2) {
                this.addPathAndCheck(null, (IPath)new Path(toAdd[0]), toAdd[1], modelProperties, classpath);
            }
            ++i;
        }
    }

    private String[] computeExtraPath(String url, List classpath, String location) throws CoreException {
        String relativePath = null;
        String[] urlfragments = Utils.getArrayFromString(url, "/");
        if (urlfragments.length > 2 && urlfragments[0].equals("platform:")) {
            String bundleLocation = null;
            BundleDescription bundle = null;
            if (urlfragments[1].equalsIgnoreCase("plugin") || urlfragments[1].equalsIgnoreCase("fragment")) {
                bundle = this.generator.getSite(false).getRegistry().getResolvedBundle(urlfragments[2]);
                if (bundle == null) {
                    String message = NLS.bind((String)Messages.exception_url, (Object)(String.valueOf(this.generator.getModel().getSymbolicName()) + '/' + this.generator.getPropertiesFileName() + ": " + url));
                    MultiStatus status = new MultiStatus("org.eclipse.pde.build", 3, message, null);
                    message = NLS.bind((String)Messages.exception_missingElement, (Object)urlfragments[2]);
                    status.add((IStatus)new Status(4, "org.eclipse.pde.build", 5, message, null));
                    throw new CoreException((IStatus)status);
                }
                if (urlfragments.length == 3) {
                    this.addPlugin(bundle, classpath, location);
                    return null;
                }
                bundleLocation = this.generator.getLocation(bundle);
                if (bundleLocation != null) {
                    String entry = urlfragments[3];
                    int i = 4;
                    while (i < urlfragments.length) {
                        entry = String.valueOf(entry) + '/' + urlfragments[i];
                        ++i;
                    }
                    return new String[]{Utils.makeRelative((IPath)new Path(bundleLocation), (IPath)new Path(location)).toOSString(), entry};
                }
            } else if (urlfragments[1].equalsIgnoreCase("resource")) {
                String message = NLS.bind((String)Messages.exception_url, (Object)(String.valueOf(this.generator.getModel().getSymbolicName()) + '/' + this.generator.getPropertiesFileName() + ": " + url));
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 3, message, null));
            }
        }
        try {
            URL extraURL = new URL(url);
            try {
                relativePath = Utils.makeRelative((IPath)new Path(FileLocator.resolve((URL)extraURL).getFile()), (IPath)new Path(location)).toOSString();
            }
            catch (IOException e) {
                String message = NLS.bind((String)Messages.exception_url, (Object)(String.valueOf(this.generator.getModel().getSymbolicName()) + '/' + this.generator.getPropertiesFileName() + ": " + url));
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 3, message, (Throwable)e));
            }
        }
        catch (MalformedURLException malformedURLException) {
            relativePath = url;
        }
        return new String[]{relativePath, ""};
    }

    private void addPrerequisites(BundleDescription target, List classpath, String baseLocation, List pluginChain, Set addedPlugins) throws CoreException {
        if (pluginChain.contains(target)) {
            if (this.allowBinaryCycles && this.isAllowableCycle(target, pluginChain)) {
                return;
            }
            String cycleString = "";
            Iterator iter = pluginChain.iterator();
            while (iter.hasNext()) {
                cycleString = String.valueOf(cycleString) + iter.next().toString() + ", ";
            }
            cycleString = String.valueOf(cycleString) + target.toString();
            String message = NLS.bind((String)Messages.error_pluginCycle, (Object)cycleString);
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 14, message, null));
        }
        if (addedPlugins.contains(target)) {
            return;
        }
        BundleDescription[] requires = PDEState.getDependentBundles(target);
        pluginChain.add(target);
        int i = 0;
        while (i < requires.length) {
            this.addPluginAndPrerequisites(requires[i], classpath, baseLocation, pluginChain, addedPlugins);
            ++i;
        }
        pluginChain.remove(target);
        addedPlugins.add(target);
    }

    private boolean isAllowableCycle(BundleDescription target, List pluginChain) {
        boolean haveNonBinary = false;
        boolean inCycle = false;
        Iterator iterator = pluginChain.iterator();
        while (iterator.hasNext()) {
            BundleDescription bundle = (BundleDescription)iterator.next();
            if (bundle == target) {
                inCycle = true;
                haveNonBinary = !Utils.isBinary(bundle);
                continue;
            }
            if (!inCycle || Utils.isBinary(bundle)) continue;
            if (haveNonBinary) {
                return false;
            }
            haveNonBinary = true;
        }
        return true;
    }

    private void addPluginAndPrerequisites(BundleDescription target, List classpath, String baseLocation, List pluginChain, Set addedPlugins) throws CoreException {
        if (!this.matchFilter(target)) {
            return;
        }
        this.addPlugin(target, classpath, baseLocation);
        this.addPrerequisites(target, classpath, baseLocation, pluginChain, addedPlugins);
    }

    private boolean matchFilter(BundleDescription target) {
        String[] value;
        Filter filter = BundleHelper.getDefault().getFilter(target);
        if (filter == null) {
            return true;
        }
        FeatureEntry associatedEntry = this.generator.getAssociatedEntry();
        if (associatedEntry == null) {
            return true;
        }
        String[] os = associatedEntry.getOS();
        String[] ws = associatedEntry.getWS();
        String[] arch = associatedEntry.getArch();
        String[] nl = associatedEntry.getNL();
        if (os == null && ws == null && arch == null && nl == null) {
            return true;
        }
        Hashtable<String, Object> properties = new Hashtable<String, Object>(3);
        if (os != null) {
            value = os.indexOf(44) > -1 ? Utils.getArrayFromString((String)os, ",") : os;
            ((Dictionary)properties).put("osgi.os", value);
        } else {
            ((Dictionary)properties).put("osgi.os", CatchAllValue.singleton);
        }
        if (ws != null) {
            value = ws.indexOf(44) > -1 ? Utils.getArrayFromString((String)ws, ",") : ws;
            ((Dictionary)properties).put("osgi.ws", value);
        } else {
            ((Dictionary)properties).put("osgi.ws", CatchAllValue.singleton);
        }
        if (arch != null) {
            value = arch.indexOf(44) > -1 ? Utils.getArrayFromString((String)arch, ",") : arch;
            ((Dictionary)properties).put("osgi.arch", value);
        } else {
            ((Dictionary)properties).put("osgi.arch", CatchAllValue.singleton);
        }
        if (nl != null) {
            value = nl.indexOf(44) > -1 ? Utils.getArrayFromString((String)nl, ",") : nl;
            ((Dictionary)properties).put("osgi.nl", value);
        } else {
            ((Dictionary)properties).put("osgi.nl", CatchAllValue.singleton);
        }
        return filter.match(properties);
    }

    private void addDevEntries(BundleDescription model, String baseLocation, List classpath, String[] jarSpecificEntries, Properties modelProperties) {
        if (this.generator.devEntries == null && (jarSpecificEntries == null || jarSpecificEntries.length == 0)) {
            return;
        }
        String[] entries = jarSpecificEntries != null && jarSpecificEntries.length > 0 ? jarSpecificEntries : this.generator.devEntries.getDevClassPath(model.getSymbolicName());
        IPath root = Utils.makeRelative((IPath)new Path(this.generator.getLocation(model)), (IPath)new Path(baseLocation));
        int i = 0;
        while (i < entries.length) {
            this.addPathAndCheck(model, root, entries[i], modelProperties, classpath);
            ++i;
        }
    }

    private String[] getClasspathEntries(BundleDescription bundle) throws CoreException {
        return this.generator.getClasspathEntries(bundle);
    }

    public class ClasspathElement {
        private final String path;
        private final String subPath;
        private String accessRules;

        protected ClasspathElement(String path, String subPath, String accessRules) {
            if (path == null) {
                throw new NullPointerException();
            }
            this.path = path;
            this.subPath = subPath;
            this.accessRules = accessRules;
        }

        public String toString() {
            return this.path;
        }

        public String getPath() {
            return this.path;
        }

        public String getSubPath() {
            return this.subPath;
        }

        public String getAccessRules() {
            return this.accessRules;
        }

        public String getAbsolutePath() {
            File f = new File(this.path);
            if (f.isAbsolute()) {
                try {
                    return f.getCanonicalPath();
                }
                catch (IOException iOException) {
                    return this.path;
                }
            }
            f = new File(ClasspathComputer3_0.this.modelLocation, this.path);
            try {
                return f.getCanonicalPath();
            }
            catch (IOException iOException) {
                return f.getPath();
            }
        }

        public void addRules(String newRule) {
            if (this.accessRules.equals("") || this.accessRules.equals(newRule)) {
                return;
            }
            if (!newRule.equals("")) {
                String join = this.accessRules.substring(0, this.accessRules.length() - ClasspathComputer3_0.EXCLUDE_ALL_RULE.length() - 1);
                newRule = String.valueOf(join) + newRule.substring(1);
            }
            this.accessRules = newRule;
        }

        public boolean equals(Object obj) {
            if (obj instanceof ClasspathElement) {
                ClasspathElement element = (ClasspathElement)obj;
                if (!this.path.equals(element.getPath())) {
                    return false;
                }
                return this.subPath == null || !this.subPath.equals(element.getSubPath());
            }
            return false;
        }

        public int hashCode() {
            int result = this.path.hashCode();
            return 13 * result + (this.subPath == null ? 0 : this.subPath.hashCode());
        }
    }
}

