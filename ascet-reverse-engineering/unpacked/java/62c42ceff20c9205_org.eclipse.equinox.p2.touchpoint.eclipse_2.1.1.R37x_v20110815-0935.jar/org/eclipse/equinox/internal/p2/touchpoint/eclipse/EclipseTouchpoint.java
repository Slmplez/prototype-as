/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.spi.Touchpoint
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.DirectorUtil;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.LazyManipulator;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Messages;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.PlatformConfigurationWrapper;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.PublisherUtil;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.SourceManipulator;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.spi.Touchpoint;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EclipseTouchpoint
extends Touchpoint {
    public static final String PROFILE_PROP_LAUNCHER_NAME = "eclipse.touchpoint.launcherName";
    public static final String PARM_MANIPULATOR = "manipulator";
    public static final String PARM_PLATFORM_CONFIGURATION = "platformConfiguration";
    public static final String PARM_SOURCE_BUNDLES = "sourceBundles";
    public static final String PARM_IU = "iu";
    public static final String PARM_ARTIFACT = "artifact";
    public static final String PARM_ARTIFACT_LOCATION = "artifact.location";
    private static final Object PARM_AGENT = "agent";
    private static final String NATIVE_TOUCHPOINT_ID = "org.eclipse.equinox.p2.touchpoint.natives";
    private static List<String> NATIVE_ACTIONS = Arrays.asList("mkdir", "rmdir");
    private static final String VALIDATE_PROFILE = "org.eclipse.equinox.internal.p2.touchpoint.eclipse.validateProfile";
    private static Map<IProfile, LazyManipulator> manipulators = new WeakHashMap<IProfile, LazyManipulator>();
    private static Map<IProfile, PlatformConfigurationWrapper> wrappers = new WeakHashMap<IProfile, PlatformConfigurationWrapper>();
    private static Map<IProfile, SourceManipulator> sourceManipulators = new WeakHashMap<IProfile, SourceManipulator>();
    private static Map<IProfile, Map<IInstallableUnit, IInstallableUnit>> preparedIUs = new WeakHashMap<IProfile, Map<IInstallableUnit, IInstallableUnit>>();

    private static synchronized LazyManipulator getManipulator(IProvisioningAgent agent, IProfile profile) {
        LazyManipulator manipulator = manipulators.get(profile);
        if (manipulator == null) {
            manipulator = new LazyManipulator(agent, profile);
            manipulators.put(profile, manipulator);
        }
        return manipulator;
    }

    private static synchronized void saveManipulator(IProfile profile) throws FrameworkAdminRuntimeException, IOException {
        LazyManipulator manipulator = manipulators.remove(profile);
        if (manipulator != null) {
            manipulator.save(false);
        }
    }

    private static synchronized PlatformConfigurationWrapper getPlatformConfigurationWrapper(IProvisioningAgent agent, IProfile profile, LazyManipulator manipulator) {
        PlatformConfigurationWrapper wrapper = wrappers.get(profile);
        if (wrapper == null) {
            File configLocation = Util.getConfigurationFolder(profile);
            URI poolURI = Util.getBundlePoolLocation(agent, profile);
            wrapper = new PlatformConfigurationWrapper(configLocation, poolURI, manipulator);
            wrappers.put(profile, wrapper);
        }
        return wrapper;
    }

    private static synchronized void savePlatformConfigurationWrapper(IProfile profile) throws ProvisionException {
        PlatformConfigurationWrapper wrapper = wrappers.remove(profile);
        if (wrapper != null) {
            wrapper.save();
        }
    }

    private static synchronized SourceManipulator getSourceManipulator(IProfile profile) {
        SourceManipulator sourceManipulator = sourceManipulators.get(profile);
        if (sourceManipulator == null) {
            sourceManipulator = new SourceManipulator(profile);
            sourceManipulators.put(profile, sourceManipulator);
        }
        return sourceManipulator;
    }

    private static synchronized void saveSourceManipulator(IProfile profile) throws IOException {
        SourceManipulator sourceManipulator = sourceManipulators.remove(profile);
        if (sourceManipulator != null) {
            sourceManipulator.save();
        }
    }

    private static synchronized IInstallableUnit getPreparedIU(IProfile profile, IInstallableUnit iu) {
        Map<IInstallableUnit, IInstallableUnit> preparedProfileIUs = preparedIUs.get(profile);
        if (preparedProfileIUs == null) {
            return null;
        }
        return preparedProfileIUs.get(iu);
    }

    private static synchronized void savePreparedIU(IProfile profile, IInstallableUnit iu) {
        Map<IInstallableUnit, IInstallableUnit> preparedProfileIUs = preparedIUs.get(profile);
        if (preparedProfileIUs == null) {
            preparedProfileIUs = new HashMap<IInstallableUnit, IInstallableUnit>();
            preparedIUs.put(profile, preparedProfileIUs);
        }
        preparedProfileIUs.put(iu, iu);
    }

    private static synchronized boolean hasPreparedIUs(IProfile profile) {
        return preparedIUs.get(profile) != null;
    }

    private static synchronized void clearProfileState(IProfile profile) {
        manipulators.remove(profile);
        wrappers.remove(profile);
        sourceManipulators.remove(profile);
        preparedIUs.remove(profile);
    }

    public IStatus prepare(IProfile profile) {
        try {
            if (EclipseTouchpoint.hasPreparedIUs(profile)) {
                return this.validateProfile(profile);
            }
        }
        catch (RuntimeException e) {
            return Util.createError(NLS.bind((String)Messages.error_validating_profile, (Object)profile.getProfileId()), e);
        }
        return Status.OK_STATUS;
    }

    public IStatus commit(IProfile profile) {
        MultiStatus status = new MultiStatus("org.eclipse.equinox.p2.touchpoint.eclipse", 0, null, null);
        try {
            EclipseTouchpoint.saveManipulator(profile);
        }
        catch (RuntimeException e) {
            status.add(Util.createError(Messages.error_saving_manipulator, e));
        }
        catch (IOException e) {
            status.add(Util.createError(Messages.error_saving_manipulator, e));
        }
        try {
            EclipseTouchpoint.savePlatformConfigurationWrapper(profile);
        }
        catch (RuntimeException e) {
            status.add(Util.createError(Messages.error_saving_platform_configuration, e));
        }
        catch (ProvisionException pe) {
            status.add(Util.createError(Messages.error_saving_platform_configuration, (Exception)((Object)pe)));
        }
        try {
            EclipseTouchpoint.saveSourceManipulator(profile);
        }
        catch (RuntimeException e) {
            status.add(Util.createError(Messages.error_saving_source_bundles_list, e));
        }
        catch (IOException e) {
            status.add(Util.createError(Messages.error_saving_source_bundles_list, e));
        }
        return status;
    }

    public IStatus rollback(IProfile profile) {
        EclipseTouchpoint.clearProfileState(profile);
        return Status.OK_STATUS;
    }

    public String qualifyAction(String actionId) {
        String touchpointQualifier = NATIVE_ACTIONS.contains(actionId) ? NATIVE_TOUCHPOINT_ID : "org.eclipse.equinox.p2.touchpoint.eclipse";
        return new StringBuffer(String.valueOf(touchpointQualifier)).append(".").append(actionId).toString();
    }

    public IStatus initializePhase(IProgressMonitor monitor, IProfile profile, String phaseId, Map<String, Object> touchpointParameters) {
        IProvisioningAgent agent = (IProvisioningAgent)touchpointParameters.get(PARM_AGENT);
        LazyManipulator manipulator = EclipseTouchpoint.getManipulator(agent, profile);
        touchpointParameters.put(PARM_MANIPULATOR, manipulator);
        touchpointParameters.put(PARM_SOURCE_BUNDLES, EclipseTouchpoint.getSourceManipulator(profile));
        touchpointParameters.put(PARM_PLATFORM_CONFIGURATION, EclipseTouchpoint.getPlatformConfigurationWrapper(agent, profile, manipulator));
        return null;
    }

    public IStatus initializeOperand(IProfile profile, Map<String, Object> parameters) {
        File fileLocation;
        IInstallableUnit iu = (IInstallableUnit)parameters.get(PARM_IU);
        IArtifactKey artifactKey = (IArtifactKey)parameters.get(PARM_ARTIFACT);
        IProvisioningAgent agent = (IProvisioningAgent)parameters.get(PARM_AGENT);
        if (iu != null && Boolean.valueOf(iu.getProperty("org.eclipse.equinox.p2.partial.iu")).booleanValue()) {
            IInstallableUnit preparedIU = this.prepareIU(agent, profile, iu, artifactKey);
            if (preparedIU == null) {
                return Util.createError(NLS.bind((String)Messages.failed_prepareIU, (Object)iu));
            }
            parameters.put(PARM_IU, preparedIU);
        }
        if (!parameters.containsKey(PARM_ARTIFACT_LOCATION) && artifactKey != null && (fileLocation = Util.getArtifactFile(agent, artifactKey, profile)) != null && fileLocation.exists()) {
            parameters.put(PARM_ARTIFACT_LOCATION, fileLocation.getAbsolutePath());
        }
        return Status.OK_STATUS;
    }

    public IInstallableUnit prepareIU(IProvisioningAgent agent, IProfile profile, IInstallableUnit iu, IArtifactKey artifactKey) {
        IInstallableUnit preparedIU = EclipseTouchpoint.getPreparedIU(profile, iu);
        if (preparedIU != null) {
            return preparedIU;
        }
        Class<?> c = null;
        try {
            c = Class.forName("org.eclipse.equinox.p2.publisher.eclipse.BundlesAction");
            if (c != null) {
                c = Class.forName("org.eclipse.osgi.service.resolver.PlatformAdmin");
            }
        }
        catch (ClassNotFoundException e) {
            LogHelper.log((IStatus)Util.createError(NLS.bind((String)Messages.publisher_not_available, (Object)e.getMessage())));
            return null;
        }
        if (c != null) {
            if (artifactKey == null) {
                return iu;
            }
            File bundleFile = Util.getArtifactFile(agent, artifactKey, profile);
            if (bundleFile == null) {
                LogHelper.log((IStatus)Util.createError(NLS.bind((String)Messages.artifact_file_not_found, (Object)artifactKey.toString())));
                return null;
            }
            preparedIU = PublisherUtil.createBundleIU(artifactKey, bundleFile);
            if (preparedIU == null) {
                LogHelper.log((IStatus)Util.createError(new StringBuffer("The bundle manifest could not be read: ").append(bundleFile.toString()).toString()));
                return null;
            }
            EclipseTouchpoint.savePreparedIU(profile, preparedIU);
            return preparedIU;
        }
        throw new IllegalStateException(Messages.unexpected_prepareiu_error);
    }

    private IStatus validateProfile(IProfile profile) {
        if (Boolean.FALSE.toString().equals(profile.getProperty(VALIDATE_PROFILE))) {
            return Status.OK_STATUS;
        }
        Class<?> c = null;
        try {
            c = Class.forName("org.eclipse.equinox.p2.planner.IPlanner");
        }
        catch (ClassNotFoundException classNotFoundException) {
            return null;
        }
        if (c != null) {
            return DirectorUtil.validateProfile(profile);
        }
        return null;
    }
}

