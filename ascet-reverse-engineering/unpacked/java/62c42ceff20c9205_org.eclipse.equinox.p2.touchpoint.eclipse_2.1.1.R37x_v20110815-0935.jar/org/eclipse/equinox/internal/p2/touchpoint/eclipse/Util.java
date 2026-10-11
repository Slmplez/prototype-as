/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.URLUtil
 *  org.eclipse.equinox.internal.p2.metadata.IRequiredCapability
 *  org.eclipse.equinox.p2.core.IAgentLocation
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager
 *  org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.service.environment.EnvironmentInfo
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.p2.core.helpers.URLUtil;
import org.eclipse.equinox.internal.p2.metadata.IRequiredCapability;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Activator;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.AggregatedBundleRepository;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Messages;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager;
import org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.service.environment.EnvironmentInfo;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Util {
    private static final String REPOSITORY_TYPE = "org.eclipse.equinox.p2.artifact.repository.simpleRepository";
    private static final String CACHE_EXTENSIONS = "org.eclipse.equinox.p2.cache.extensions";
    private static final String PIPE = "|";
    public static final int AGGREGATE_CACHE = 1;
    public static final int AGGREGATE_SHARED_CACHE = 2;
    public static final int AGGREGATE_CACHE_EXTENSIONS = 4;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public static IAgentLocation getAgentLocation(IProvisioningAgent agent) {
        return (IAgentLocation)agent.getService(IAgentLocation.SERVICE_NAME);
    }

    public static IArtifactRepositoryManager getArtifactRepositoryManager(IProvisioningAgent agent) {
        return (IArtifactRepositoryManager)agent.getService(IArtifactRepositoryManager.SERVICE_NAME);
    }

    public static URI getBundlePoolLocation(IProvisioningAgent agent, IProfile profile) {
        String path = profile.getProperty("org.eclipse.equinox.p2.cache");
        if (path != null) {
            return new File(path).toURI();
        }
        IAgentLocation location = Util.getAgentLocation(agent);
        if (location == null) {
            return null;
        }
        return location.getDataArea("org.eclipse.equinox.p2.touchpoint.eclipse");
    }

    public static synchronized IFileArtifactRepository getBundlePoolRepository(IProvisioningAgent agent, IProfile profile) {
        URI location = Util.getBundlePoolLocation(agent, profile);
        if (location == null) {
            return null;
        }
        IArtifactRepositoryManager manager = Util.getArtifactRepositoryManager(agent);
        try {
            return (IFileArtifactRepository)manager.loadRepository(location, null);
        }
        catch (ProvisionException provisionException) {
            try {
                String repositoryName = Messages.BundlePool;
                HashMap<String, String> properties = new HashMap<String, String>(1);
                properties.put("p2.system", Boolean.TRUE.toString());
                return (IFileArtifactRepository)manager.createRepository(location, repositoryName, REPOSITORY_TYPE, properties);
            }
            catch (ProvisionException e) {
                LogHelper.log((ProvisionException)e);
                throw new IllegalArgumentException(NLS.bind((String)Messages.bundle_pool_not_writeable, (Object)location));
            }
        }
    }

    public static IFileArtifactRepository getAggregatedBundleRepository(IProvisioningAgent agent, IProfile profile) {
        return Util.getAggregatedBundleRepository(agent, profile, 7);
    }

    public static IFileArtifactRepository getAggregatedBundleRepository(IProvisioningAgent agent, IProfile profile, int repoFilter) {
        IFileArtifactRepository bundlePool;
        String sharedCache;
        ArrayList<IFileArtifactRepository> bundleRepositories = new ArrayList<IFileArtifactRepository>();
        IArtifactRepositoryManager manager = Util.getArtifactRepositoryManager(agent);
        if ((repoFilter & 2) != 0 && (sharedCache = profile.getProperty("org.eclipse.equinox.p2.cache.shared")) != null) {
            try {
                URI repoLocation = new File(sharedCache).toURI();
                IArtifactRepository repository = manager.loadRepository(repoLocation, null);
                if (repository != null && repository instanceof IFileArtifactRepository && !bundleRepositories.contains(repository)) {
                    bundleRepositories.add((IFileArtifactRepository)repository);
                }
            }
            catch (ProvisionException provisionException) {}
        }
        if ((repoFilter & 1) != 0 && (bundlePool = Util.getBundlePoolRepository(agent, profile)) != null) {
            bundleRepositories.add(bundlePool);
        }
        if ((repoFilter & 4) != 0) {
            List<String> repos = Util.getListProfileProperty(profile, CACHE_EXTENSIONS);
            for (String repo : repos) {
                try {
                    URI repoLocation;
                    try {
                        repoLocation = new URI(repo);
                    }
                    catch (URISyntaxException uRISyntaxException) {
                        repoLocation = URIUtil.fromString((String)repo);
                    }
                    IArtifactRepository repository = manager.loadRepository(repoLocation, null);
                    if (repository == null || !(repository instanceof IFileArtifactRepository) || bundleRepositories.contains(repository)) continue;
                    bundleRepositories.add((IFileArtifactRepository)repository);
                }
                catch (ProvisionException provisionException) {
                }
                catch (URISyntaxException e) {
                    LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.touchpoint.eclipse", e.getMessage(), (Throwable)e));
                }
            }
        }
        return new AggregatedBundleRepository(agent, bundleRepositories);
    }

    private static List<String> getListProfileProperty(IProfile profile, String key) {
        ArrayList<String> listProperty = new ArrayList<String>();
        String dropinRepositories = profile.getProperty(key);
        if (dropinRepositories != null) {
            StringTokenizer tokenizer = new StringTokenizer(dropinRepositories, PIPE);
            while (tokenizer.hasMoreTokens()) {
                listProperty.add(tokenizer.nextToken());
            }
        }
        return listProperty;
    }

    public static BundleInfo createBundleInfo(File bundleFile, IInstallableUnit unit) {
        BundleInfo bundleInfo = new BundleInfo();
        if (bundleFile != null) {
            bundleInfo.setLocation(bundleFile.toURI());
        }
        Collection capabilities = unit.getProvidedCapabilities();
        for (IProvidedCapability capability : capabilities) {
            String nameSpace = capability.getNamespace();
            if (nameSpace.equals("osgi.bundle")) {
                bundleInfo.setSymbolicName(capability.getName());
                bundleInfo.setVersion(capability.getVersion().toString());
                continue;
            }
            if (!nameSpace.equals("osgi.fragment")) continue;
            String fragmentName = capability.getName();
            String fragmentHost = Util.getFragmentHost(unit, fragmentName);
            if (fragmentHost == null) {
                LogHelper.log((IStatus)Util.createError(new StringBuffer("Unable to find fragment host for IU: ").append(unit).toString()));
            } else {
                bundleInfo.setFragmentHost(fragmentHost);
            }
            bundleInfo.setVersion(capability.getVersion().toString());
        }
        return bundleInfo;
    }

    private static String getFragmentHost(IInstallableUnit unit, String fragmentName) {
        Collection requires = unit.getRequirements();
        for (IRequirement iRequirement : requires) {
            IRequiredCapability requiredCapability;
            if (!(iRequirement instanceof IRequiredCapability) || !fragmentName.equals((requiredCapability = (IRequiredCapability)iRequirement).getName())) continue;
            String fragmentHost = requiredCapability.getName();
            if (!requiredCapability.getRange().toString().equals("0.0.0")) {
                fragmentHost = new StringBuffer(String.valueOf(fragmentHost)).append(";bundle-version=\"").append(requiredCapability.getRange()).append('\"').toString();
            }
            return fragmentHost;
        }
        return null;
    }

    public static File getArtifactFile(IProvisioningAgent agent, IArtifactKey artifactKey, IProfile profile) {
        IFileArtifactRepository aggregatedView = Util.getAggregatedBundleRepository(agent, profile);
        File bundleJar = aggregatedView.getArtifactFile(artifactKey);
        return bundleJar;
    }

    public static File getConfigurationFolder(IProfile profile) {
        String config = profile.getProperty("org.eclipse.equinox.p2.configurationFolder");
        if (config != null) {
            return new File(config);
        }
        return new File(Util.getInstallFolder(profile), "configuration");
    }

    public static URL getOSGiInstallArea() {
        Location location;
        BundleContext bundleContext = Activator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((location = (Location)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName(), (String)Location.INSTALL_FILTER)) == null) {
            return null;
        }
        if (!location.isSet()) {
            return null;
        }
        return location.getURL();
    }

    public static File getEclipseHome() {
        Location eclipseHome;
        BundleContext bundleContext = Activator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.datalocation.Location");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((eclipseHome = (Location)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName(), (String)Location.ECLIPSE_HOME_FILTER)) == null || !eclipseHome.isSet()) {
            return null;
        }
        URL url = eclipseHome.getURL();
        if (url == null) {
            return null;
        }
        return URLUtil.toFile((URL)url);
    }

    public static File getInstallFolder(IProfile profile) {
        String folder = profile.getProperty("org.eclipse.equinox.p2.installFolder");
        return folder == null ? null : new File(folder);
    }

    public static File getLauncherPath(IProfile profile) {
        String launcherName;
        String name = profile.getProperty("eclipse.touchpoint.launcherName");
        if (name == null || name.length() == 0) {
            name = "eclipse";
        }
        return (launcherName = Util.getLauncherName(name, Util.getOSFromProfile(profile), Util.getInstallFolder(profile))) == null ? null : new File(Util.getInstallFolder(profile), launcherName);
    }

    private static String getLauncherName(String name, String os, File installFolder) {
        Path path;
        if (os == null) {
            EnvironmentInfo info;
            BundleContext bundleContext = Activator.getContext();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.osgi.service.environment.EnvironmentInfo");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((info = (EnvironmentInfo)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName())) == null) {
                return null;
            }
            os = info.getOS();
        }
        if (os.equals("win32")) {
            path = new Path(name);
            if ("exe".equals(path.getFileExtension())) {
                return name;
            }
            return new StringBuffer(String.valueOf(name)).append(".exe").toString();
        }
        if (os.equals("macosx")) {
            File appFolder;
            path = new Path(name);
            if (path.segment(0).endsWith(".app")) {
                return name;
            }
            String appName = null;
            if (installFolder != null && (appFolder = new File(installFolder, new StringBuffer(String.valueOf(name)).append(".app").toString())).exists()) {
                try {
                    appName = appFolder.getCanonicalFile().getName();
                }
                catch (IOException iOException) {
                    appName = appFolder.getName();
                }
            }
            StringBuffer buffer = new StringBuffer();
            if (appName != null) {
                buffer.append(appName);
            } else {
                buffer.append(name.substring(0, 1).toUpperCase());
                buffer.append(name.substring(1));
                buffer.append(".app");
            }
            buffer.append("/Contents/MacOS/");
            buffer.append(name);
            return buffer.toString();
        }
        return name;
    }

    public static String getOSFromProfile(IProfile profile) {
        String environments = profile.getProperty("org.eclipse.equinox.p2.environments");
        if (environments == null) {
            return null;
        }
        StringTokenizer tokenizer = new StringTokenizer(environments, ",");
        while (tokenizer.hasMoreElements()) {
            int i;
            String entry = tokenizer.nextToken();
            String key = entry.substring(0, i = entry.indexOf(61)).trim();
            if (!key.equals("osgi.os")) continue;
            return entry.substring(i + 1).trim();
        }
        return null;
    }

    public static IStatus createError(String message) {
        return Util.createError(message, null);
    }

    public static IStatus createError(String message, Exception e) {
        return new Status(4, "org.eclipse.equinox.p2.touchpoint.eclipse", message, (Throwable)e);
    }

    public static File getLauncherConfigLocation(IProfile profile) {
        String launcherConfig = profile.getProperty("org.eclipse.equinox.p2.launcherConfiguration");
        return launcherConfig == null ? null : new File(launcherConfig);
    }

    public static String resolveArtifactParam(Map<String, Object> parameters) throws CoreException {
        String artifactLocation = (String)parameters.get("artifact.location");
        if (artifactLocation != null) {
            return artifactLocation;
        }
        IArtifactKey artifactKey = (IArtifactKey)parameters.get("artifact");
        if (artifactKey == null) {
            IInstallableUnit iu = (IInstallableUnit)parameters.get("iu");
            throw new CoreException(Util.createError(NLS.bind((String)Messages.iu_contains_no_arifacts, (Object)iu)));
        }
        throw new CoreException(Util.createError(NLS.bind((String)Messages.artifact_file_not_found, (Object)artifactKey)));
    }
}

