/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.p2.metadata.TouchpointInstruction
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IVersionedId
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.IPublisherResult
 *  org.eclipse.equinox.p2.publisher.PublisherResult
 *  org.eclipse.equinox.spi.p2.publisher.PublisherHelper
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.p2.metadata.TouchpointInstruction;
import org.eclipse.equinox.internal.p2.publisher.eclipse.GeneratorBundleInfo;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.PublisherResult;
import org.eclipse.equinox.p2.publisher.eclipse.BundlesAction;
import org.eclipse.equinox.p2.publisher.eclipse.IConfigAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.IExecutableAdvice;
import org.eclipse.equinox.spi.p2.publisher.PublisherHelper;
import org.eclipse.osgi.util.ManifestElement;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ConfigCUsAction
extends AbstractPublisherAction {
    protected static final String ORG_ECLIPSE_UPDATE_CONFIGURATOR = "org.eclipse.update.configurator";
    protected static final String DEFAULT_START_LEVEL = "osgi.bundles.defaultStartLevel";
    private static Collection<String> PROPERTIES_TO_SKIP = new HashSet<String>();
    private static HashSet<String> PROGRAM_ARGS_TO_SKIP;
    protected Version version;
    protected String id;
    protected String flavor;
    IPublisherResult outerResults = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        PROPERTIES_TO_SKIP.add("osgi.frameworkClassPath");
        PROPERTIES_TO_SKIP.add("osgi.framework");
        PROPERTIES_TO_SKIP.add("osgi.bundles");
        PROPERTIES_TO_SKIP.add("eof");
        PROPERTIES_TO_SKIP.add("eclipse.p2.profile");
        PROPERTIES_TO_SKIP.add("eclipse.p2.data.area");
        PROPERTIES_TO_SKIP.add("org.eclipse.update.reconcile");
        PROPERTIES_TO_SKIP.add("org.eclipse.equinox.simpleconfigurator.configUrl");
        PROGRAM_ARGS_TO_SKIP = new HashSet();
        PROGRAM_ARGS_TO_SKIP.add("--launcher.library");
        PROGRAM_ARGS_TO_SKIP.add("-startup");
        PROGRAM_ARGS_TO_SKIP.add("-configuration");
    }

    public static String getAbstractCUCapabilityNamespace(String id, String type, String flavor, String configSpec) {
        return new StringBuffer(String.valueOf(flavor)).append(id).toString();
    }

    public static String getAbstractCUCapabilityId(String id, String type, String flavor, String configSpec) {
        return new StringBuffer(String.valueOf(id)).append(".").append(type).toString();
    }

    public static String computeIUId(String id, String flavor) {
        return new StringBuffer(String.valueOf(flavor)).append(id).append(".configuration").toString();
    }

    public ConfigCUsAction(IPublisherInfo info, String flavor, String id, Version version) {
        this.flavor = flavor;
        this.id = id;
        this.version = version;
    }

    public IStatus perform(IPublisherInfo publisherInfo, IPublisherResult results, IProgressMonitor monitor) {
        PublisherResult innerResult = new PublisherResult();
        this.outerResults = results;
        this.info = publisherInfo;
        String[] configSpecs = publisherInfo.getConfigurations();
        int i = 0;
        while (i < configSpecs.length) {
            if (monitor.isCanceled()) {
                return Status.CANCEL_STATUS;
            }
            String configSpec = configSpecs[i];
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = Class.forName("org.eclipse.equinox.p2.publisher.eclipse.IConfigAdvice");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Collection configAdvice = publisherInfo.getAdvice(configSpec, false, this.id, this.version, (Class)clazz);
            BundleInfo[] bundles = this.fillInBundles(configAdvice, results);
            this.publishBundleCUs(publisherInfo, bundles, configSpec, (IPublisherResult)innerResult);
            this.publishConfigIUs(configAdvice, (IPublisherResult)innerResult, configSpec);
            Class<?> clazz2 = class$1;
            if (clazz2 == null) {
                try {
                    clazz2 = Class.forName("org.eclipse.equinox.p2.publisher.eclipse.IExecutableAdvice");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Collection launchingAdvice = publisherInfo.getAdvice(configSpec, false, this.id, this.version, (Class)clazz2);
            this.publishIniIUs(launchingAdvice, (IPublisherResult)innerResult, configSpec);
            ++i;
        }
        results.merge((IPublisherResult)innerResult, 2);
        this.publishTopLevelConfigurationIU(innerResult.getIUs(null, "root"), results);
        return Status.OK_STATUS;
    }

    private void publishTopLevelConfigurationIU(Collection<? extends IVersionedId> children, IPublisherResult result) {
        MetadataFactory.InstallableUnitDescription descriptor = this.createParentIU(children, ConfigCUsAction.computeIUId(this.id, this.flavor), this.version);
        descriptor.setSingleton(true);
        IInstallableUnit rootIU = MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)descriptor);
        if (rootIU == null) {
            return;
        }
        result.addIU(rootIU, "root");
    }

    private BundleInfo[] fillInBundles(Collection<IConfigAdvice> configAdvice, IPublisherResult results) {
        ArrayList<BundleInfo> result = new ArrayList<BundleInfo>();
        for (IConfigAdvice advice : configAdvice) {
            int defaultStart = -1;
            Map<String, String> adviceProperties = advice.getProperties();
            if (adviceProperties.containsKey(DEFAULT_START_LEVEL)) {
                try {
                    defaultStart = Integer.parseInt(adviceProperties.get(DEFAULT_START_LEVEL));
                }
                catch (NumberFormatException numberFormatException) {}
            }
            BundleInfo[] bundles = advice.getBundles();
            int i = 0;
            while (i < bundles.length) {
                BundleInfo bundleInfo = bundles[i];
                if (bundleInfo.getStartLevel() != -1 && bundleInfo.getStartLevel() == defaultStart) {
                    bundleInfo.setStartLevel(-1);
                }
                if (bundleInfo.getSymbolicName() != null && bundleInfo.getVersion() != null || bundleInfo.getLocation() == null) {
                    result.add(bundles[i]);
                } else {
                    try {
                        File location = new File(bundleInfo.getLocation());
                        Dictionary<String, String> manifest = BundlesAction.loadManifest(location);
                        if (manifest != null) {
                            GeneratorBundleInfo newInfo = new GeneratorBundleInfo(bundleInfo);
                            ManifestElement[] element = ManifestElement.parseHeader((String)"dummy-bsn", (String)manifest.get("Bundle-SymbolicName"));
                            newInfo.setSymbolicName(element[0].getValue());
                            newInfo.setVersion(manifest.get("Bundle-Version"));
                            result.add(newInfo);
                        }
                    }
                    catch (BundleException e) {
                        e.printStackTrace();
                    }
                }
                ++i;
            }
        }
        return result.toArray(new BundleInfo[result.size()]);
    }

    private void publishIniIUs(Collection<IExecutableAdvice> launchingAdvice, IPublisherResult results, String configSpec) {
        if (launchingAdvice.isEmpty()) {
            return;
        }
        String configureData = "";
        String unconfigureData = "";
        if (!launchingAdvice.isEmpty()) {
            String[] dataStrings = this.getLauncherConfigStrings(launchingAdvice);
            configureData = new StringBuffer(String.valueOf(configureData)).append(dataStrings[0]).toString();
            unconfigureData = new StringBuffer(String.valueOf(unconfigureData)).append(dataStrings[1]).toString();
        }
        if (configureData.length() == 0 && unconfigureData.length() == 0) {
            return;
        }
        HashMap<String, String> touchpointData = new HashMap<String, String>();
        touchpointData.put("configure", configureData);
        touchpointData.put("unconfigure", unconfigureData);
        IInstallableUnit cu = this.createCU(this.id, this.version, "ini", this.flavor, configSpec, touchpointData);
        results.addIU(cu, "root");
    }

    private void publishConfigIUs(Collection<IConfigAdvice> configAdvice, IPublisherResult results, String configSpec) {
        if (configAdvice.isEmpty()) {
            return;
        }
        String configureData = "";
        String unconfigureData = "";
        if (!configAdvice.isEmpty()) {
            String[] dataStrings = this.getConfigurationStrings(configAdvice);
            configureData = new StringBuffer(String.valueOf(configureData)).append(dataStrings[0]).toString();
            unconfigureData = new StringBuffer(String.valueOf(unconfigureData)).append(dataStrings[1]).toString();
        }
        if (configureData.length() == 0 && unconfigureData.length() == 0) {
            return;
        }
        HashMap<String, String> touchpointData = new HashMap<String, String>();
        touchpointData.put("configure", configureData);
        touchpointData.put("unconfigure", unconfigureData);
        IInstallableUnit cu = this.createCU(this.id, this.version, "config", this.flavor, configSpec, touchpointData);
        results.addIU(cu, "root");
    }

    private IInstallableUnit createCU(String cuId, Version cuVersion, String cuType, String cuFlavor, String configSpec, Map<String, String> touchpointData) {
        MetadataFactory.InstallableUnitDescription cu = new MetadataFactory.InstallableUnitDescription();
        String resultId = this.createCUIdString(cuId, cuType, cuFlavor, configSpec);
        cu.setId(resultId);
        cu.setVersion(cuVersion);
        cu.setFilter(this.createFilterSpec(configSpec));
        IProvidedCapability selfCapability = PublisherHelper.createSelfCapability((String)resultId, (Version)cuVersion);
        String namespace = ConfigCUsAction.getAbstractCUCapabilityNamespace(cuId, cuType, cuFlavor, configSpec);
        String abstractId = ConfigCUsAction.getAbstractCUCapabilityId(cuId, cuType, cuFlavor, configSpec);
        IProvidedCapability abstractCapability = MetadataFactory.createProvidedCapability((String)namespace, (String)abstractId, (Version)cuVersion);
        cu.setCapabilities(new IProvidedCapability[]{selfCapability, abstractCapability});
        cu.addTouchpointData(MetadataFactory.createTouchpointData(touchpointData));
        cu.setTouchpointType(PublisherHelper.TOUCHPOINT_OSGI);
        return MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)cu);
    }

    protected String[] getConfigurationStrings(Collection<IConfigAdvice> configAdvice) {
        String configurationData = "";
        String unconfigurationData = "";
        HashSet<String> properties = new HashSet<String>();
        for (IConfigAdvice advice : configAdvice) {
            for (Map.Entry<String, String> aProperty : advice.getProperties().entrySet()) {
                String key = aProperty.getKey();
                if (!this.shouldPublishProperty(key) || properties.contains(key)) continue;
                properties.add(key);
                LinkedHashMap<String, String> parameters = new LinkedHashMap<String, String>();
                parameters.put("propName", key);
                parameters.put("propValue", aProperty.getValue());
                configurationData = new StringBuffer(String.valueOf(configurationData)).append(TouchpointInstruction.encodeAction((String)"setProgramProperty", parameters)).toString();
                parameters.put("propValue", "");
                unconfigurationData = new StringBuffer(String.valueOf(unconfigurationData)).append(TouchpointInstruction.encodeAction((String)"setProgramProperty", parameters)).toString();
            }
        }
        return new String[]{configurationData, unconfigurationData};
    }

    private boolean shouldPublishProperty(String key) {
        return !PROPERTIES_TO_SKIP.contains(key);
    }

    private boolean shouldPublishJvmArg(String key) {
        return true;
    }

    private boolean shouldPublishProgramArg(String key) {
        return !PROGRAM_ARGS_TO_SKIP.contains(key);
    }

    protected String[] getLauncherConfigStrings(Collection<IExecutableAdvice> launchingAdvice) {
        String configurationData = "";
        String unconfigurationData = "";
        LinkedHashMap<String, String> touchpointParameters = new LinkedHashMap<String, String>();
        HashSet<String> jvmSet = new HashSet<String>();
        HashSet<String> programSet = new HashSet<String>();
        for (IExecutableAdvice advice : launchingAdvice) {
            String[] jvmArgs = advice.getVMArguments();
            int i = 0;
            while (i < jvmArgs.length) {
                if (this.shouldPublishJvmArg(jvmArgs[i]) && !jvmSet.contains(jvmArgs[i])) {
                    jvmSet.add(jvmArgs[i]);
                    touchpointParameters.clear();
                    touchpointParameters.put("jvmArg", jvmArgs[i]);
                    configurationData = new StringBuffer(String.valueOf(configurationData)).append(TouchpointInstruction.encodeAction((String)"addJvmArg", touchpointParameters)).toString();
                    unconfigurationData = new StringBuffer(String.valueOf(unconfigurationData)).append(TouchpointInstruction.encodeAction((String)"removeJvmArg", touchpointParameters)).toString();
                }
                ++i;
            }
            String[] programArgs = advice.getProgramArguments();
            int i2 = 0;
            while (i2 < programArgs.length) {
                if (this.shouldPublishProgramArg(programArgs[i2]) && !programSet.contains(programArgs[i2])) {
                    if (programArgs[i2].startsWith("-")) {
                        programSet.add(programArgs[i2]);
                    }
                    touchpointParameters.clear();
                    touchpointParameters.put("programArg", programArgs[i2]);
                    configurationData = new StringBuffer(String.valueOf(configurationData)).append(TouchpointInstruction.encodeAction((String)"addProgramArg", touchpointParameters)).toString();
                    unconfigurationData = new StringBuffer(String.valueOf(unconfigurationData)).append(TouchpointInstruction.encodeAction((String)"removeProgramArg", touchpointParameters)).toString();
                } else if (i2 + 1 < programArgs.length && !programArgs[i2 + 1].startsWith("-")) {
                    ++i2;
                }
                ++i2;
            }
        }
        return new String[]{configurationData, unconfigurationData};
    }

    protected void publishBundleCUs(IPublisherInfo publisherInfo, BundleInfo[] bundles, String configSpec, IPublisherResult result) {
        if (bundles == null) {
            return;
        }
        String cuIdPrefix = "";
        IMatchExpression filter = null;
        if (configSpec != null) {
            cuIdPrefix = this.createIdString(configSpec);
            filter = this.createFilterSpec(configSpec);
        }
        int i = 0;
        while (i < bundles.length) {
            block7: {
                GeneratorBundleInfo bundle;
                block9: {
                    block8: {
                        IInstallableUnit iu;
                        bundle = this.createGeneratorBundleInfo(bundles[i], result);
                        if (bundle == null || (iu = bundle.getIU()) == null || !this.filterMatches(iu.getFilter(), configSpec)) break block7;
                        if (!bundle.getSymbolicName().equals(ORG_ECLIPSE_UPDATE_CONFIGURATOR)) break block8;
                        bundle.setStartLevel(-1);
                        bundle.setMarkedAsStarted(false);
                        bundle.setSpecialConfigCommands("setProgramProperty(propName:org.eclipse.update.reconcile, propValue:false);");
                        bundle.setSpecialUnconfigCommands("setProgramProperty(propName:org.eclipse.update.reconcile, propValue:);");
                        break block9;
                    }
                    if (bundle.getStartLevel() == -1 && !bundle.isMarkedAsStarted()) break block7;
                }
                IInstallableUnit cu = null;
                cu = this.version != null && !this.version.equals(Version.emptyVersion) ? BundlesAction.createBundleConfigurationUnit(bundle.getSymbolicName(), this.version, false, bundle, new StringBuffer(String.valueOf(this.flavor)).append(cuIdPrefix).toString(), (IMatchExpression<IInstallableUnit>)filter) : BundlesAction.createBundleConfigurationUnit(bundle.getSymbolicName(), Version.parseVersion((String)bundle.getVersion()), false, bundle, new StringBuffer(String.valueOf(this.flavor)).append(cuIdPrefix).toString(), (IMatchExpression<IInstallableUnit>)filter);
                if (cu != null) {
                    result.addIU(cu, "root");
                }
            }
            ++i;
        }
    }

    protected GeneratorBundleInfo createGeneratorBundleInfo(BundleInfo bundleInfo, IPublisherResult result) {
        String name = bundleInfo.getSymbolicName();
        IInstallableUnit iu = this.queryForIU(this.outerResults, name, Version.create((String)bundleInfo.getVersion()));
        if (iu != null) {
            if (iu.getVersion() == null) {
                bundleInfo.setVersion("0.0.0");
            } else {
                bundleInfo.setVersion(iu.getVersion().toString());
            }
            GeneratorBundleInfo newInfo = new GeneratorBundleInfo(bundleInfo);
            newInfo.setIU(iu);
            return newInfo;
        }
        if (bundleInfo.getLocation() != null || bundleInfo.getVersion() != null) {
            return new GeneratorBundleInfo(bundleInfo);
        }
        int i = name.indexOf(95);
        while (i > -1) {
            try {
                Version bundleVersion = Version.parseVersion((String)name.substring(i));
                bundleInfo.setSymbolicName(name.substring(0, i));
                bundleInfo.setVersion(bundleVersion.toString());
                return new GeneratorBundleInfo(bundleInfo);
            }
            catch (IllegalArgumentException illegalArgumentException) {
                i = name.indexOf(95, i);
            }
        }
        return null;
    }
}

