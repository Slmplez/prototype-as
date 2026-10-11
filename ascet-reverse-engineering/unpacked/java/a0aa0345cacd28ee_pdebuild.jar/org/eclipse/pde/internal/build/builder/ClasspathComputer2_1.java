/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.HostSpecification
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build.builder;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.IBuildPropertiesConstants;
import org.eclipse.pde.internal.build.IPDEBuildConstants;
import org.eclipse.pde.internal.build.IXMLConstants;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.builder.IClasspathComputer;
import org.eclipse.pde.internal.build.builder.ModelBuildScriptGenerator;
import org.eclipse.pde.internal.build.site.PDEState;

public class ClasspathComputer2_1
implements IClasspathComputer,
IPDEBuildConstants,
IXMLConstants,
IBuildPropertiesConstants {
    private final ModelBuildScriptGenerator generator;

    public ClasspathComputer2_1(ModelBuildScriptGenerator modelGenerator) {
        this.generator = modelGenerator;
    }

    public List getClasspath(BundleDescription model, ModelBuildScriptGenerator.CompiledEntry jar) throws CoreException {
        ArrayList classpath = new ArrayList(20);
        ArrayList pluginChain = new ArrayList(10);
        HashSet addedPlugins = new HashSet(20);
        String location = this.generator.getLocation(model);
        this.addPlugin(this.getPlugin("org.eclipse.core.boot", null), classpath, location);
        this.addSelf(model, jar, classpath, location, pluginChain, addedPlugins);
        this.addPrerequisites(model, classpath, location, pluginChain, addedPlugins);
        return classpath;
    }

    private void addPlugin(BundleDescription plugin, List classpath, String location) throws CoreException {
        this.addRuntimeLibraries(plugin, classpath, location);
        this.addFragmentsLibraries(plugin, classpath, location);
    }

    private void addRuntimeLibraries(BundleDescription model, List classpath, String baseLocation) throws CoreException {
        String[] libraries = this.getClasspathEntries(model);
        String root = this.generator.getLocation(model);
        IPath base = Utils.makeRelative((IPath)new Path(root), (IPath)new Path(baseLocation));
        Properties modelProps = this.getBuildPropertiesFor(model);
        int i = 0;
        while (i < libraries.length) {
            this.addDevEntries(model, baseLocation, classpath, Utils.getArrayFromString(this.generator.getBuildProperties().getProperty("output." + libraries[i])));
            this.addPathAndCheck(model, base, libraries[i], modelProps, classpath);
            ++i;
        }
    }

    private BundleDescription getPlugin(String id, String version) throws CoreException {
        return this.generator.getSite(false).getRegistry().getResolvedBundle(id, version);
    }

    private void addFragmentsLibraries(BundleDescription plugin, List classpath, String baseLocation) throws CoreException {
        BundleDescription[] fragments = plugin.getFragments();
        if (fragments == null) {
            return;
        }
        int i = 0;
        while (i < fragments.length) {
            if (fragments[i] != this.generator.getModel()) {
                this.addPluginLibrariesToFragmentLocations(plugin, fragments[i], classpath, baseLocation);
                this.addRuntimeLibraries(fragments[i], classpath, baseLocation);
            }
            ++i;
        }
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
            return AbstractScriptGenerator.readProperties(this.generator.getLocation(bundle), "build.properties", 0);
        }
        catch (CoreException coreException) {
            return null;
        }
    }

    private void addPathAndCheck(BundleDescription model, IPath basePath, String libraryName, Properties modelProperties, List classpath) {
        String pluginKey = model != null ? String.valueOf(model.getSymbolicName()) + "_" + model.getVersion() : null;
        String path = basePath.append(libraryName).toString();
        path = ModelBuildScriptGenerator.replaceVariables(path, pluginKey == null ? false : this.generator.getCompiledElements().contains(pluginKey));
        if (this.generator.getCompiledElements().contains(pluginKey) && (modelProperties == null || modelProperties.getProperty("source." + libraryName) != null)) {
            path = String.valueOf(Utils.getPropertyFormat("build.result.folder")) + '/' + path;
        }
        if (!classpath.contains(path)) {
            classpath.add(path);
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
                            this.addDevEntries(model, location, classpath, Utils.getArrayFromString(modelProperties.getProperty("output." + libraryName)));
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
                this.addDevEntries(model, location, classpath, Utils.getArrayFromString((String)modelProperties.get("output." + order[i])));
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
                this.addPathAndCheck(null, (IPath)new Path(this.computeExtraPath(extra[i], location)), "", modelProperties, classpath);
                ++i;
            }
        }
        String[] jarSpecificExtraClasspath = jar.getExtraClasspath();
        int i = 0;
        while (i < jarSpecificExtraClasspath.length) {
            this.addPathAndCheck(null, (IPath)new Path(this.computeExtraPath(jarSpecificExtraClasspath[i], location)), "", modelProperties, classpath);
            ++i;
        }
    }

    private String computeExtraPath(String url, String location) throws CoreException {
        String relativePath = null;
        String[] urlfragments = Utils.getArrayFromString(url, "/");
        if (urlfragments.length > 2 && urlfragments[0].equals("platform:")) {
            String modelLocation = null;
            if (urlfragments[1].equalsIgnoreCase("plugin")) {
                modelLocation = this.generator.getLocation(this.generator.getSite(false).getRegistry().getResolvedBundle(urlfragments[2]));
            }
            if (urlfragments[1].equalsIgnoreCase("fragment")) {
                modelLocation = this.generator.getLocation(this.generator.getSite(false).getRegistry().getResolvedBundle(urlfragments[2]));
            }
            if (urlfragments[1].equalsIgnoreCase("resource")) {
                String message = NLS.bind((String)Messages.exception_url, (Object)(String.valueOf(this.generator.getPropertiesFileName()) + "::" + url));
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 3, message, null));
            }
            if (modelLocation != null) {
                int i = 3;
                while (i < urlfragments.length) {
                    modelLocation = i == 3 ? String.valueOf(modelLocation) + urlfragments[i] : String.valueOf(modelLocation) + '/' + urlfragments[i];
                    ++i;
                }
                return Utils.makeRelative((IPath)new Path(modelLocation), (IPath)new Path(location)).toOSString();
            }
        }
        try {
            URL extraURL = new URL(url);
            try {
                relativePath = Utils.makeRelative((IPath)new Path(FileLocator.resolve((URL)extraURL).getFile()), (IPath)new Path(location)).toOSString();
            }
            catch (IOException e) {
                String message = NLS.bind((String)Messages.exception_url, (Object)(String.valueOf(this.generator.getPropertiesFileName()) + "::" + url));
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 3, message, (Throwable)e));
            }
        }
        catch (MalformedURLException e) {
            String message = NLS.bind((String)Messages.exception_url, (Object)("build.properties::" + url));
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 3, message, (Throwable)e));
        }
        return relativePath;
    }

    private void addPrerequisites(BundleDescription target, List classpath, String baseLocation, List pluginChain, Set addedPlugins) throws CoreException {
        BundleDescription[] requires;
        if (pluginChain.contains(target)) {
            if (target == this.getPlugin("org.eclipse.core.runtime", null)) {
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
        if (target != this.getPlugin("org.eclipse.core.runtime", null)) {
            this.addPluginAndPrerequisites(this.getPlugin("org.eclipse.core.runtime", null), classpath, baseLocation, pluginChain, addedPlugins);
        }
        if ((requires = PDEState.getDependentBundles(target)) != null) {
            pluginChain.add(target);
            int i = 0;
            while (i < requires.length) {
                BundleDescription plugin = this.getPlugin(requires[i].getSymbolicName(), requires[i].getVersion().toString());
                if (plugin != null) {
                    this.addPluginAndPrerequisites(plugin, classpath, baseLocation, pluginChain, addedPlugins);
                }
                ++i;
            }
            pluginChain.remove(target);
            addedPlugins.add(target);
        }
    }

    private void addPluginAndPrerequisites(BundleDescription target, List classpath, String baseLocation, List pluginChain, Set addedPlugins) throws CoreException {
        this.addPlugin(target, classpath, baseLocation);
        this.addPrerequisites(target, classpath, baseLocation, pluginChain, addedPlugins);
    }

    private void addDevEntries(BundleDescription model, String baseLocation, List classpath, String[] jarSpecificEntries) {
        if (this.generator.devEntries == null && (jarSpecificEntries == null || jarSpecificEntries.length == 0)) {
            return;
        }
        String[] entries = jarSpecificEntries != null && jarSpecificEntries.length > 0 ? jarSpecificEntries : this.generator.devEntries.getDevClassPath(model.getSymbolicName());
        IPath root = Utils.makeRelative((IPath)new Path(this.generator.getLocation(model)), (IPath)new Path(baseLocation));
        int i = 0;
        while (i < entries.length) {
            this.addPathAndCheck(model, root, entries[i], null, classpath);
            ++i;
        }
    }

    private String[] getClasspathEntries(BundleDescription bundle) throws CoreException {
        return this.generator.getClasspathEntries(bundle);
    }
}

