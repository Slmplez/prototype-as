/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.p2.engine.spi.ProvisioningAction
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import java.util.Collection;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.PlatformConfigurationWrapper;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.InstallFeatureAction;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.Messages;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class UninstallFeatureAction
extends ProvisioningAction {
    public static final String ID = "uninstallFeature";

    public IStatus execute(Map<String, Object> parameters) {
        return UninstallFeatureAction.uninstallFeature(parameters);
    }

    public IStatus undo(Map<String, Object> parameters) {
        return InstallFeatureAction.installFeature(parameters);
    }

    public static IStatus uninstallFeature(Map<String, Object> parameters) {
        IInstallableUnit iu = (IInstallableUnit)parameters.get("iu");
        PlatformConfigurationWrapper configuration = (PlatformConfigurationWrapper)parameters.get("platformConfiguration");
        String feature = (String)parameters.get("feature");
        String featureId = (String)parameters.get("featureId");
        String featureVersion = (String)parameters.get("featureVersion");
        Collection artifacts = iu.getArtifacts();
        if (artifacts == null || artifacts.isEmpty()) {
            return Util.createError(NLS.bind((String)Messages.iu_contains_no_arifacts, (Object)iu));
        }
        IArtifactKey artifactKey = null;
        for (IArtifactKey candidate : artifacts) {
            if (!candidate.toString().equals(feature)) continue;
            artifactKey = candidate;
            break;
        }
        if (featureId == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"featureId", (Object)ID));
        }
        if ("default".equals(featureId)) {
            featureId = artifactKey.getId();
        }
        if (featureVersion == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"featureVersion", (Object)ID));
        }
        if ("default".equals(featureVersion)) {
            featureVersion = artifactKey.getVersion().toString();
        }
        return configuration.removeFeatureEntry(featureId, featureVersion);
    }
}

