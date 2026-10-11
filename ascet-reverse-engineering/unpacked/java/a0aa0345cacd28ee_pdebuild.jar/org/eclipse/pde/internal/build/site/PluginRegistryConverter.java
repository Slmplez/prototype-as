/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.model.Factory
 *  org.eclipse.core.runtime.model.LibraryModel
 *  org.eclipse.core.runtime.model.PluginDescriptorModel
 *  org.eclipse.core.runtime.model.PluginFragmentModel
 *  org.eclipse.core.runtime.model.PluginPrerequisiteModel
 *  org.eclipse.core.runtime.model.PluginRegistryModel
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.BundleSpecification
 *  org.eclipse.osgi.service.resolver.HostSpecification
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build.site;

import java.io.File;
import java.net.URL;
import java.util.Collection;
import java.util.Iterator;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.model.Factory;
import org.eclipse.core.runtime.model.LibraryModel;
import org.eclipse.core.runtime.model.PluginDescriptorModel;
import org.eclipse.core.runtime.model.PluginFragmentModel;
import org.eclipse.core.runtime.model.PluginPrerequisiteModel;
import org.eclipse.core.runtime.model.PluginRegistryModel;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.site.PDEState;
import org.osgi.framework.Version;

public class PluginRegistryConverter
extends PDEState {
    private PluginRegistryModel registry;

    private URL[] removeInvalidURLs(URL[] files) {
        URL[] validURLs = new URL[files.length];
        int validURL = 0;
        int i = 0;
        while (i < files.length) {
            if (!files[i].toExternalForm().endsWith("feature.xml") && !files[i].toExternalForm().endsWith("MANIFEST.MF")) {
                validURLs[validURL++] = files[i];
            }
            ++i;
        }
        if (files.length == validURL) {
            return validURLs;
        }
        URL[] result = new URL[validURL];
        System.arraycopy(validURLs, 0, result, 0, validURL);
        return result;
    }

    private PluginRegistryModel getPluginRegistry(URL[] files) throws CoreException {
        if (this.registry == null) {
            files = this.removeInvalidURLs(files);
            MultiStatus problems = new MultiStatus("org.eclipse.pde.build", 4, Messages.exception_pluginParse, null);
            Factory factory = new Factory(problems);
            this.registry = PluginRegistryModel.parsePlugins((URL[])files, (Factory)factory);
            this.registry.resolve(true, false);
            MultiStatus status = factory.getStatus();
            if (!status.isOK()) {
                throw new CoreException((IStatus)status);
            }
        }
        return this.registry;
    }

    public void addRegistryToState() {
        PluginDescriptorModel[] plugins = this.registry.getPlugins();
        PluginFragmentModel[] fragments = this.registry.getFragments();
        int i = 0;
        while (i < plugins.length) {
            BundleDescription bd = this.state.getFactory().createBundleDescription(this.getNextId(), plugins[i].getPluginId(), Version.parseVersion((String)plugins[i].getVersion()), plugins[i].getLocation(), this.createBundleSpecification(plugins[i].getRequires()), null, null, null, null, true);
            String libs = this.createClasspath(plugins[i].getRuntime());
            Properties manifest = new Properties();
            if (libs != null) {
                manifest.put("Bundle-ClassPath", libs);
            }
            this.loadPropertyFileIn(manifest, new File(fragments[i].getLocation()));
            bd.setUserObject((Object)manifest);
            this.addBundleDescription(bd);
            ++i;
        }
        i = 0;
        while (i < fragments.length) {
            HostSpecification host = this.state.getFactory().createHostSpecification(fragments[i].getPluginId(), new VersionRange(fragments[i].getPluginVersion()));
            BundleDescription bd = this.state.getFactory().createBundleDescription(this.getNextId(), fragments[i].getId(), Version.parseVersion((String)fragments[i].getVersion()), fragments[i].getLocation(), this.createBundleSpecification(fragments[i].getRequires()), host, null, null, null, true);
            String libs = this.createClasspath(fragments[i].getRuntime());
            Properties manifest = new Properties();
            if (libs != null) {
                manifest.put("Bundle-ClassPath", libs);
            }
            this.loadPropertyFileIn(manifest, new File(fragments[i].getLocation()));
            bd.setUserObject((Object)manifest);
            this.addBundleDescription(bd);
            ++i;
        }
    }

    protected BundleSpecification[] createBundleSpecification(PluginPrerequisiteModel[] prereqs) {
        if (prereqs == null) {
            return new BundleSpecification[0];
        }
        BundleSpecification[] specs = new BundleSpecification[prereqs.length];
        int i = 0;
        while (i < prereqs.length) {
            specs[i] = this.state.getFactory().createBundleSpecification(prereqs[i].getPlugin(), new VersionRange(prereqs[i].getVersion()), prereqs[i].getExport(), prereqs[i].getOptional());
            ++i;
        }
        return specs;
    }

    private String createClasspath(LibraryModel[] libs) {
        if (libs == null || libs.length == 0) {
            return null;
        }
        String result = "";
        int i = 0;
        while (i < libs.length) {
            result = String.valueOf(result) + libs[i].getName() + (i == libs.length - 1 ? "" : ",");
            ++i;
        }
        return result;
    }

    public void addBundles(Collection bundles) {
        try {
            this.getPluginRegistry(Utils.asURL(bundles));
        }
        catch (CoreException e) {
            Status status = new Status(4, "org.eclipse.pde.build", 15, Messages.exception_registryResolution, (Throwable)e);
            BundleHelper.getDefault().getLog().log((IStatus)status);
        }
        Iterator iter = bundles.iterator();
        while (iter.hasNext()) {
            File bundle = (File)iter.next();
            this.addBundle(bundle);
        }
    }
}

