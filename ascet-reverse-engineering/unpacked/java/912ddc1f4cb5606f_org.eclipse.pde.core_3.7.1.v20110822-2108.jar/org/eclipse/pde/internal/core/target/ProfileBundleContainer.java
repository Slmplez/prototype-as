/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.pde.internal.build.site.PluginPathFinder
 */
package org.eclipse.pde.internal.core.target;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.site.PluginPathFinder;
import org.eclipse.pde.internal.core.P2Utils;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.target.AbstractBundleContainer;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.pde.internal.core.target.TargetDefinition;
import org.eclipse.pde.internal.core.target.provisional.IResolvedBundle;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;

public class ProfileBundleContainer
extends AbstractBundleContainer {
    private static final String CONFIG_INI = "config.ini";
    private static final String PROP_AGENT_DATA_AREA = "eclipse.p2.data.area";
    private static final String PROP_PROFILE = "eclipse.p2.profile";
    private static final String PROP_CONFIG_DIR = "osgi.configuration.area";
    private static final String PROP_USER_DIR = "user.dir";
    private static final String PROP_USER_HOME = "user.home";
    private static final String VAR_CONFIG_DIR = "@config.dir";
    private static final String VAR_USER_DIR = "@user.dir";
    private static final String VAR_USER_HOME = "@user.home";
    public static final String TYPE = "Profile";
    private String fHome;
    private String fConfiguration;

    public ProfileBundleContainer(String home, String configurationLocation) {
        this.fHome = home;
        this.fConfiguration = configurationLocation;
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

    public String getConfigurationLocation() {
        return this.fConfiguration;
    }

    protected IResolvedBundle[] resolveBundles(ITargetDefinition definition, IProgressMonitor monitor) throws CoreException {
        String home = this.resolveHomeLocation().toOSString();
        if (!new File(home).isDirectory()) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.ProfileBundleContainer_0, (Object)home)));
        }
        URL configUrl = this.getConfigurationArea();
        if (configUrl != null && !new File(configUrl.getFile()).isDirectory()) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.ProfileBundleContainer_2, (Object)home)));
        }
        BundleInfo[] infos = P2Utils.readBundles(home, configUrl);
        if (infos == null) {
            IResolvedBundle[] platformXML = this.resolvePlatformXML(definition, home, monitor);
            if (platformXML != null) {
                return platformXML;
            }
            infos = new BundleInfo[]{};
        }
        if (monitor.isCanceled()) {
            return new IResolvedBundle[0];
        }
        BundleInfo[] source = P2Utils.readSourceBundles(home, configUrl);
        if (source == null) {
            source = new BundleInfo[]{};
        }
        IResolvedBundle[] all = new IResolvedBundle[infos.length + source.length];
        SubMonitor localMonitor = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.DirectoryBundleContainer_0, (int)all.length);
        int i = 0;
        while (i < infos.length) {
            if (monitor.isCanceled()) {
                return new IResolvedBundle[0];
            }
            BundleInfo info = infos[i];
            all[i] = this.resolveBundle(info, false);
            localMonitor.worked(1);
            ++i;
        }
        int index = 0;
        int i2 = infos.length;
        while (i2 < all.length) {
            if (monitor.isCanceled()) {
                return new IResolvedBundle[0];
            }
            BundleInfo info = source[index];
            all[i2] = this.resolveBundle(info, true);
            ++index;
            localMonitor.worked(1);
            ++i2;
        }
        localMonitor.done();
        return all;
    }

    protected IFeatureModel[] resolveFeatures(ITargetDefinition definition, IProgressMonitor monitor) throws CoreException {
        if (definition instanceof TargetDefinition) {
            return ((TargetDefinition)definition).getFeatureModels(this.getLocation(false), monitor);
        }
        return new IFeatureModel[0];
    }

    protected IResolvedBundle[] resolvePlatformXML(ITargetDefinition definition, String home, IProgressMonitor monitor) throws CoreException {
        File[] files = PluginPathFinder.getPaths((String)home, (boolean)false, (boolean)false);
        if (files.length > 0) {
            ArrayList<IResolvedBundle> all = new ArrayList<IResolvedBundle>(files.length);
            SubMonitor localMonitor = SubMonitor.convert((IProgressMonitor)monitor, (String)Messages.DirectoryBundleContainer_0, (int)files.length);
            int i = 0;
            while (i < files.length) {
                if (localMonitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                try {
                    IResolvedBundle rb = this.generateBundle(files[i]);
                    if (rb != null) {
                        all.add(rb);
                    }
                }
                catch (CoreException coreException) {}
                localMonitor.worked(1);
                ++i;
            }
            localMonitor.done();
            if (!all.isEmpty()) {
                return all.toArray(new IResolvedBundle[all.size()]);
            }
        }
        return null;
    }

    private IPath resolveHomeLocation() throws CoreException {
        return new Path(this.resolveVariables(this.fHome));
    }

    private URL getConfigurationArea() throws CoreException {
        IPath home = this.resolveHomeLocation();
        Object configuration = null;
        configuration = this.fConfiguration == null ? home.append("configuration") : new Path(this.resolveVariables(this.fConfiguration));
        File file = configuration.toFile();
        if (file.exists()) {
            try {
                return file.toURL();
            }
            catch (MalformedURLException e) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.ProfileBundleContainer_1, (Object)home.toOSString()), (Throwable)e));
            }
        }
        if (this.fConfiguration != null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.ProfileBundleContainer_2, (Object)configuration.toOSString())));
        }
        return null;
    }

    public boolean isContentEqual(AbstractBundleContainer container) {
        if (container instanceof ProfileBundleContainer) {
            ProfileBundleContainer pbc = (ProfileBundleContainer)container;
            return this.fHome.equals(pbc.fHome) && this.isNullOrEqual(pbc.fConfiguration, this.fConfiguration);
        }
        return false;
    }

    public File getProfileFileLocation() throws CoreException {
        String home = this.resolveHomeLocation().toOSString();
        if (!new File(home).isDirectory()) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.ProfileBundleContainer_0, (Object)home)));
        }
        File configArea = null;
        URL configURL = this.getConfigurationArea();
        configArea = configURL != null ? new File(configURL.getFile()) : new File(home);
        if (!configArea.isDirectory()) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.ProfileBundleContainer_2, (Object)configArea)));
        }
        File p2DataArea = null;
        String profileName = null;
        File configIni = new File(configArea, CONFIG_INI);
        if (configIni.isFile()) {
            String p2Area;
            Properties configProps;
            block26: {
                configProps = new Properties();
                FileInputStream fis = null;
                try {
                    try {
                        fis = new FileInputStream(configIni);
                        configProps.load(fis);
                        fis.close();
                    }
                    catch (IOException e) {
                        PDECore.log(e);
                        try {
                            if (fis != null) {
                                fis.close();
                            }
                            break block26;
                        }
                        catch (IOException iOException) {}
                        break block26;
                    }
                }
                catch (Throwable throwable) {
                    try {
                        if (fis != null) {
                            fis.close();
                        }
                    }
                    catch (IOException iOException) {}
                    throw throwable;
                }
                try {
                    if (fis != null) {
                        fis.close();
                    }
                }
                catch (IOException iOException) {}
            }
            if ((p2Area = configProps.getProperty(PROP_AGENT_DATA_AREA)) != null) {
                if (p2Area.startsWith(VAR_USER_HOME)) {
                    String base = this.substituteVar(configProps, p2Area, VAR_USER_HOME, PROP_USER_HOME, configArea);
                    p2Area = new Path(base).toFile().getAbsolutePath();
                } else if (p2Area.startsWith(VAR_USER_DIR)) {
                    String base = this.substituteVar(configProps, p2Area, VAR_USER_DIR, PROP_USER_DIR, configArea);
                    p2Area = new Path(base).toFile().getAbsolutePath();
                } else if (p2Area.startsWith(VAR_CONFIG_DIR)) {
                    String base = this.substituteVar(configProps, p2Area, VAR_CONFIG_DIR, PROP_CONFIG_DIR, configArea);
                    p2Area = new Path(base).toFile().getAbsolutePath();
                }
                p2DataArea = new File(p2Area);
            }
            profileName = configProps.getProperty(PROP_PROFILE);
        }
        if (p2DataArea == null || !p2DataArea.isDirectory()) {
            p2DataArea = new File(configArea, "p2");
        }
        if (profileName == null || profileName.length() == 0) {
            profileName = "SDKProfile";
        }
        Path profilePath = new Path(p2DataArea.getAbsolutePath());
        File profile = (profilePath = profilePath.append("org.eclipse.equinox.p2.engine").append("profileRegistry").append(String.valueOf(profileName) + ".profile")).toFile();
        if (profile.exists()) {
            return profile;
        }
        return null;
    }

    private String substituteVar(Properties props, String source, String var, String prop, File defaultValue) {
        String value = props.getProperty(prop);
        if (value == null) {
            value = defaultValue.getAbsolutePath();
        }
        return String.valueOf(value) + source.substring(var.length());
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
        return "Installation " + this.fHome + ' ' + (this.fConfiguration == null ? "Default Configuration" : this.fConfiguration);
    }
}

