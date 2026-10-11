/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.IProvisioningAgentProvider
 *  org.eclipse.equinox.p2.engine.IEngine
 *  org.eclipse.equinox.p2.engine.IPhaseSet
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.IProfileRegistry
 *  org.eclipse.equinox.p2.engine.IProvisioningPlan
 *  org.eclipse.equinox.p2.engine.PhaseSetFactory
 *  org.eclipse.equinox.p2.engine.ProvisioningContext
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.ITouchpointType
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.planner.ProfileInclusionRules
 *  org.eclipse.equinox.simpleconfigurator.manipulator.SimpleConfiguratorManipulator
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.BundleSpecification
 *  org.eclipse.osgi.service.resolver.ExportPackageDescription
 *  org.eclipse.osgi.service.resolver.ImportPackageSpecification
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.eclipse.pde.internal.build.BundleHelper
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.IProvisioningAgentProvider;
import org.eclipse.equinox.p2.engine.IEngine;
import org.eclipse.equinox.p2.engine.IPhaseSet;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProfileRegistry;
import org.eclipse.equinox.p2.engine.IProvisioningPlan;
import org.eclipse.equinox.p2.engine.PhaseSetFactory;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.ITouchpointType;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.planner.ProfileInclusionRules;
import org.eclipse.equinox.simpleconfigurator.manipulator.SimpleConfiguratorManipulator;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.TargetPlatform;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.plugin.PluginBase;

public class P2Utils {
    public static final String P2_FLAVOR_DEFAULT = "tooling";
    public static final ITouchpointType TOUCHPOINT_OSGI = MetadataFactory.createTouchpointType((String)"org.eclipse.equinox.p2.osgi", (Version)Version.createOSGi((int)1, (int)0, (int)0));
    private static final String CAPABILITY_NS_OSGI_BUNDLE = "osgi.bundle";
    private static final String CAPABILITY_NS_OSGI_FRAGMENT = "osgi.fragment";
    public static final String TYPE_ECLIPSE_BUNDLE = "bundle";
    public static final String NAMESPACE_ECLIPSE_TYPE = "org.eclipse.equinox.p2.eclipse.type";
    public static final IProvidedCapability BUNDLE_CAPABILITY = MetadataFactory.createProvidedCapability((String)"org.eclipse.equinox.p2.eclipse.type", (String)"bundle", (Version)Version.createOSGi((int)1, (int)0, (int)0));
    public static final String CAPABILITY_NS_JAVA_PACKAGE = "java.package";
    static /* synthetic */ Class class$0;

    public static URL[] readBundlesTxt(String platformHome, URL configurationArea) {
        BundleInfo[] bundles;
        block6: {
            if (configurationArea == null) {
                return null;
            }
            try {
                bundles = P2Utils.readBundles(platformHome, configurationArea);
                if (bundles != null) break block6;
                return null;
            }
            catch (MalformedURLException e) {
                PDECore.log(e);
                return null;
            }
        }
        int length = bundles.length;
        BundleInfo[] srcBundles = P2Utils.readSourceBundles(platformHome, configurationArea);
        if (srcBundles != null) {
            length += srcBundles.length;
        }
        URL[] urls = new URL[length];
        P2Utils.copyURLs(urls, 0, bundles);
        if (srcBundles != null && srcBundles.length > 0) {
            P2Utils.copyURLs(urls, bundles.length, srcBundles);
        }
        return urls;
    }

    public static BundleInfo[] readBundles(String platformHome, URL configurationArea) {
        BundleInfo[] bundles;
        block5: {
            Path basePath = new Path(platformHome);
            if (configurationArea == null) {
                return null;
            }
            URL bundlesTxt = new URL(configurationArea.getProtocol(), configurationArea.getHost(), new File(configurationArea.getFile(), "org.eclipse.equinox.simpleconfigurator/bundles.info").getAbsolutePath());
            File home = basePath.toFile();
            bundles = P2Utils.getBundlesFromFile(bundlesTxt, home);
            if (bundles != null && bundles.length != 0) break block5;
            return null;
        }
        try {
            return bundles;
        }
        catch (MalformedURLException e) {
            PDECore.log(e);
            return null;
        }
        catch (IOException e) {
            PDECore.log(e);
            return null;
        }
    }

    public static BundleInfo[] readSourceBundles(String platformHome, URL configurationArea) {
        BundleInfo[] srcBundles;
        block5: {
            Path basePath = new Path(platformHome);
            if (configurationArea == null) {
                return null;
            }
            File home = basePath.toFile();
            URL srcBundlesTxt = new URL(configurationArea.getProtocol(), configurationArea.getHost(), configurationArea.getFile().concat("org.eclipse.equinox.source/source.info"));
            srcBundles = P2Utils.getBundlesFromFile(srcBundlesTxt, home);
            if (srcBundles != null && srcBundles.length != 0) break block5;
            return null;
        }
        try {
            return srcBundles;
        }
        catch (MalformedURLException e) {
            PDECore.log(e);
            return null;
        }
        catch (IOException e) {
            PDECore.log(e);
            return null;
        }
    }

    private static void copyURLs(URL[] dest, int start, BundleInfo[] infos) throws MalformedURLException {
        int i = 0;
        while (i < infos.length) {
            dest[start++] = new File(infos[i].getLocation()).toURL();
            ++i;
        }
    }

    private static BundleInfo[] getBundlesFromFile(URL fileURL, File home) throws IOException {
        SimpleConfiguratorManipulator manipulator;
        PDECore pDECore = PDECore.getDefault();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.simpleconfigurator.manipulator.SimpleConfiguratorManipulator");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((manipulator = (SimpleConfiguratorManipulator)pDECore.acquireService(clazz.getName())) == null) {
            return null;
        }
        try {
            return manipulator.loadConfiguration(fileURL.openStream(), home.toURI());
        }
        catch (FileNotFoundException fileNotFoundException) {
            return null;
        }
    }

    public static URL writeBundlesTxt(Map bundles, int defaultStartLevel, boolean defaultAutoStart, File directory, String osgiBundleList) {
        if (bundles.size() == 0) {
            return null;
        }
        HashMap<String, String> osgiStartLevels = new HashMap<String, String>();
        if (osgiBundleList != null) {
            StringTokenizer tokenizer = new StringTokenizer(osgiBundleList, ",");
            while (tokenizer.hasMoreTokens()) {
                String auto;
                String token = tokenizer.nextToken();
                int index = token.indexOf(64);
                if (index == -1) continue;
                String modelName = token.substring(0, index);
                String startData = token.substring(index + 1);
                String level = (index = startData.indexOf(58)) > 0 ? startData.substring(0, index) : "default";
                String string = auto = index > 0 && index < startData.length() - 1 ? startData.substring(index + 1) : "default";
                if ("start".equals(auto)) {
                    auto = "true";
                }
                osgiStartLevels.put(modelName, String.valueOf(level) + ':' + auto);
            }
        }
        ArrayList<BundleInfo> bundleInfo = new ArrayList<BundleInfo>(bundles.size());
        ArrayList<BundleInfo> sourceInfo = new ArrayList<BundleInfo>(bundles.size());
        Iterator iterator = bundles.keySet().iterator();
        while (iterator.hasNext()) {
            IPluginModelBase currentModel = (IPluginModelBase)iterator.next();
            IPluginBase base = currentModel.getPluginBase();
            BundleInfo info = new BundleInfo();
            String installLocation = currentModel.getInstallLocation();
            if (installLocation != null) {
                int index;
                info.setLocation(new File(installLocation).toURI());
                if (base instanceof PluginBase && ((PluginBase)base).getBundleSourceEntry() != null) {
                    info.setSymbolicName(base.getId());
                    info.setVersion(base.getVersion());
                    info.setStartLevel(-1);
                    info.setMarkedAsStarted(false);
                    sourceInfo.add(info);
                    continue;
                }
                if (base == null) continue;
                info.setSymbolicName(base.getId());
                info.setVersion(base.getVersion());
                String currentLevel = (String)bundles.get(currentModel);
                if (osgiStartLevels.containsKey(base.getId())) {
                    currentLevel = (String)osgiStartLevels.get(base.getId());
                }
                String levelString = (index = currentLevel.indexOf(58)) > 0 ? currentLevel.substring(0, index) : "default";
                String auto = index > 0 && index < currentLevel.length() - 1 ? currentLevel.substring(index + 1) : "default";
                boolean isAuto = true;
                int level = -1;
                isAuto = "default".equals(auto) ? defaultAutoStart : Boolean.valueOf(auto);
                if ("default".equals(levelString)) {
                    level = defaultStartLevel;
                } else {
                    try {
                        level = Integer.parseInt(levelString);
                    }
                    catch (NumberFormatException numberFormatException) {
                        PDECore.log((IStatus)new Status(4, "org.eclipse.pde.core", "Error writing bundles, could not parse start level for bundle " + currentModel));
                    }
                }
                info.setMarkedAsStarted(isAuto);
                info.setStartLevel(level);
                bundleInfo.add(info);
                continue;
            }
            PDECore.log((IStatus)new Status(4, "org.eclipse.pde.core", "Error writing bundles, could not find the bundle location for bundle " + currentModel));
        }
        File bundlesTxt = new File(directory, "org.eclipse.equinox.simpleconfigurator/bundles.info");
        File srcBundlesTxt = new File(directory, "org.eclipse.equinox.source/source.info");
        BundleInfo[] infos = bundleInfo.toArray(new BundleInfo[bundleInfo.size()]);
        BundleInfo[] sources = sourceInfo.toArray(new BundleInfo[sourceInfo.size()]);
        BundleHelper bundleHelper = BundleHelper.getDefault();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.simpleconfigurator.manipulator.SimpleConfiguratorManipulator");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SimpleConfiguratorManipulator manipulator = (SimpleConfiguratorManipulator)bundleHelper.acquireService(clazz.getName());
        try {
            manipulator.saveConfiguration(infos, bundlesTxt, null);
            manipulator.saveConfiguration(sources, srcBundlesTxt, null);
        }
        catch (IOException e) {
            PDECore.logException(e);
            return null;
        }
        if (!bundlesTxt.exists()) {
            return null;
        }
        try {
            return bundlesTxt.toURL();
        }
        catch (MalformedURLException e) {
            PDECore.logException(e);
            return null;
        }
    }

    public static boolean profileExists(String profileID, File p2DataArea) throws CoreException {
        IProvisioningAgentProvider provider = (IProvisioningAgentProvider)PDECore.getDefault().acquireService(IProvisioningAgentProvider.SERVICE_NAME);
        if (provider == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", PDECoreMessages.P2Utils_UnableToAcquireP2Service));
        }
        IProvisioningAgent agent = provider.createAgent(p2DataArea.toURI());
        if (agent == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", PDECoreMessages.P2Utils_UnableToAcquireP2Service));
        }
        IProfileRegistry registry = (IProfileRegistry)agent.getService(IProfileRegistry.SERVICE_NAME);
        if (registry == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", PDECoreMessages.P2Utils_UnableToAcquireP2Service));
        }
        return registry.containsProfile(profileID);
    }

    public static void createProfile(String profileID, File p2DataArea, Collection bundles) throws CoreException {
        IProvisioningAgentProvider provider = (IProvisioningAgentProvider)PDECore.getDefault().acquireService(IProvisioningAgentProvider.SERVICE_NAME);
        if (provider == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", PDECoreMessages.P2Utils_UnableToAcquireP2Service));
        }
        IProvisioningAgent agent = provider.createAgent(p2DataArea.toURI());
        if (agent == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", PDECoreMessages.P2Utils_UnableToAcquireP2Service));
        }
        IProfileRegistry registry = (IProfileRegistry)agent.getService(IProfileRegistry.SERVICE_NAME);
        if (registry == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", PDECoreMessages.P2Utils_UnableToAcquireP2Service));
        }
        IEngine engine = (IEngine)agent.getService(IEngine.SERVICE_NAME);
        if (engine == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", PDECoreMessages.P2Utils_UnableToAcquireP2Service));
        }
        registry.removeProfile(profileID);
        IProfile profile = null;
        HashMap<String, String> props = new HashMap<String, String>();
        props.put("org.eclipse.update.install.features", Boolean.TRUE.toString());
        props.put("org.eclipse.equinox.p2.environments", P2Utils.generateEnvironmentProperties());
        props.put("org.eclipse.equinox.p2.nl", TargetPlatform.getNL());
        profile = registry.addProfile(profileID, props);
        ArrayList<IInstallableUnit> ius = new ArrayList<IInstallableUnit>(bundles.size());
        Iterator iterator = bundles.iterator();
        while (iterator.hasNext()) {
            IPluginModelBase model = (IPluginModelBase)iterator.next();
            BundleDescription bundle = model.getBundleDescription();
            ius.add(P2Utils.createBundleIU(bundle));
        }
        ProvisioningContext context = new ProvisioningContext(agent);
        IProvisioningPlan plan = engine.createPlan(profile, context);
        Iterator iter = ius.iterator();
        while (iter.hasNext()) {
            IInstallableUnit iu = (IInstallableUnit)iter.next();
            plan.addInstallableUnit(iu);
            plan.setInstallableUnitProfileProperty(iu, "org.eclipse.equinox.p2.internal.inclusion.rules", ProfileInclusionRules.createOptionalInclusionRule((IInstallableUnit)iu));
        }
        IPhaseSet phaseSet = PhaseSetFactory.createDefaultPhaseSetExcluding((String[])new String[]{PhaseSetFactory.PHASE_CHECK_TRUST, PhaseSetFactory.PHASE_COLLECT, PhaseSetFactory.PHASE_CONFIGURE, PhaseSetFactory.PHASE_UNCONFIGURE, PhaseSetFactory.PHASE_UNINSTALL});
        IStatus status = engine.perform(plan, phaseSet, (IProgressMonitor)new NullProgressMonitor());
        if (!status.isOK() && status.getSeverity() != 8) {
            throw new CoreException(status);
        }
    }

    private static String generateEnvironmentProperties() {
        StringBuffer env = new StringBuffer();
        env.append("osgi.ws=");
        env.append(TargetPlatform.getWS());
        env.append(",");
        env.append("osgi.os=");
        env.append(TargetPlatform.getOS());
        env.append(",");
        env.append("osgi.arch=");
        env.append(TargetPlatform.getOSArch());
        return env.toString();
    }

    private static IInstallableUnit createBundleIU(BundleDescription bd) {
        MetadataFactory.InstallableUnitDescription iu = new MetadataFactory.InstallableUnitDescription();
        iu.setSingleton(bd.isSingleton());
        iu.setId(bd.getSymbolicName());
        iu.setVersion(P2Utils.fromOSGiVersion(bd.getVersion()));
        iu.setFilter(bd.getPlatformFilter());
        iu.setTouchpointType(TOUCHPOINT_OSGI);
        boolean isFragment = bd.getHost() != null;
        BundleSpecification[] requiredBundles = bd.getRequiredBundles();
        ArrayList<IRequirement> reqsDeps = new ArrayList<IRequirement>();
        if (isFragment) {
            reqsDeps.add(MetadataFactory.createRequirement((String)CAPABILITY_NS_OSGI_BUNDLE, (String)bd.getHost().getName(), (VersionRange)P2Utils.fromOSGiVersionRange(bd.getHost().getVersionRange()), null, (boolean)false, (boolean)false));
        }
        int j = 0;
        while (j < requiredBundles.length) {
            reqsDeps.add(MetadataFactory.createRequirement((String)CAPABILITY_NS_OSGI_BUNDLE, (String)requiredBundles[j].getName(), (VersionRange)P2Utils.fromOSGiVersionRange(requiredBundles[j].getVersionRange()), null, (boolean)requiredBundles[j].isOptional(), (boolean)false));
            ++j;
        }
        ImportPackageSpecification[] osgiImports = bd.getImportPackages();
        int i = 0;
        while (i < osgiImports.length) {
            ImportPackageSpecification importSpec = osgiImports[i];
            String importPackageName = importSpec.getName();
            if (importPackageName.indexOf(42) == -1) {
                VersionRange versionRange = P2Utils.fromOSGiVersionRange(importSpec.getVersionRange());
                boolean isOptional = importSpec.getDirective("resolution").equals("dynamic") || importSpec.getDirective("resolution").equals("optional");
                reqsDeps.add(MetadataFactory.createRequirement((String)CAPABILITY_NS_JAVA_PACKAGE, (String)importPackageName, (VersionRange)versionRange, null, (boolean)isOptional, (boolean)false));
            }
            ++i;
        }
        iu.setRequirements(reqsDeps.toArray(new IRequirement[reqsDeps.size()]));
        ArrayList<IProvidedCapability> providedCapabilities = new ArrayList<IProvidedCapability>();
        providedCapabilities.add(MetadataFactory.createProvidedCapability((String)"org.eclipse.equinox.p2.iu", (String)bd.getSymbolicName(), (Version)P2Utils.fromOSGiVersion(bd.getVersion())));
        providedCapabilities.add(MetadataFactory.createProvidedCapability((String)CAPABILITY_NS_OSGI_BUNDLE, (String)bd.getSymbolicName(), (Version)P2Utils.fromOSGiVersion(bd.getVersion())));
        ExportPackageDescription[] exports = bd.getExportPackages();
        int i2 = 0;
        while (i2 < exports.length) {
            providedCapabilities.add(MetadataFactory.createProvidedCapability((String)CAPABILITY_NS_JAVA_PACKAGE, (String)exports[i2].getName(), (Version)P2Utils.fromOSGiVersion(exports[i2].getVersion())));
            ++i2;
        }
        providedCapabilities.add(BUNDLE_CAPABILITY);
        if (isFragment) {
            providedCapabilities.add(MetadataFactory.createProvidedCapability((String)CAPABILITY_NS_OSGI_FRAGMENT, (String)bd.getHost().getName(), (Version)P2Utils.fromOSGiVersion(bd.getVersion())));
        }
        iu.setCapabilities(providedCapabilities.toArray(new IProvidedCapability[providedCapabilities.size()]));
        return MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)iu);
    }

    private static Version fromOSGiVersion(org.osgi.framework.Version version) {
        if (version == null) {
            return null;
        }
        if (version.getMajor() == Integer.MAX_VALUE && version.getMicro() == Integer.MAX_VALUE && version.getMicro() == Integer.MAX_VALUE) {
            return Version.MAX_VERSION;
        }
        return Version.createOSGi((int)version.getMajor(), (int)version.getMinor(), (int)version.getMicro(), (String)version.getQualifier());
    }

    private static VersionRange fromOSGiVersionRange(org.eclipse.osgi.service.resolver.VersionRange range) {
        if (range.equals((Object)org.eclipse.osgi.service.resolver.VersionRange.emptyRange)) {
            return VersionRange.emptyRange;
        }
        return new VersionRange(P2Utils.fromOSGiVersion(range.getMinimum()), range.getIncludeMinimum(), P2Utils.fromOSGiVersion(range.getMaximum()), range.getIncludeMaximum());
    }
}

