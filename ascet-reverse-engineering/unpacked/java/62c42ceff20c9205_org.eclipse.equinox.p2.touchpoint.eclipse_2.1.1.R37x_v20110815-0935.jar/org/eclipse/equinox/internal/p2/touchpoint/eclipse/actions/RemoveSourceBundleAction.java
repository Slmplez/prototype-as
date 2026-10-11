/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.spi.ProvisioningAction
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.SourceManipulator;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.AddSourceBundleAction;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.Messages;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RemoveSourceBundleAction
extends ProvisioningAction {
    public static final String ID = "removeSourceBundle";

    public IStatus execute(Map<String, Object> parameters) {
        return RemoveSourceBundleAction.removeSourceBundle(parameters);
    }

    public IStatus undo(Map<String, Object> parameters) {
        return AddSourceBundleAction.addSourceBundle(parameters);
    }

    public static IStatus removeSourceBundle(Map<String, Object> parameters) {
        IProvisioningAgent agent = (IProvisioningAgent)parameters.get("agent");
        IProfile profile = (IProfile)parameters.get("profile");
        IInstallableUnit iu = (IInstallableUnit)parameters.get("iu");
        SourceManipulator manipulator = (SourceManipulator)parameters.get("sourceBundles");
        String bundleId = (String)parameters.get("bundle");
        if (bundleId == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"bundle", (Object)ID));
        }
        Collection artifacts = iu.getArtifacts();
        if (artifacts == null || artifacts.isEmpty()) {
            return Util.createError(NLS.bind((String)Messages.iu_contains_no_arifacts, (Object)iu));
        }
        IArtifactKey artifactKey = null;
        for (IArtifactKey candidate : artifacts) {
            if (!candidate.toString().equals(bundleId)) continue;
            artifactKey = candidate;
            break;
        }
        if (artifactKey == null) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.no_matching_artifact, (Object)bundleId));
        }
        File bundleFile = Util.getArtifactFile(agent, artifactKey, profile);
        try {
            manipulator.removeBundle(bundleFile, artifactKey.getId(), artifactKey.getVersion());
        }
        catch (IOException iOException) {
            return Util.createError(NLS.bind((String)Messages.cannot_configure_source_bundle, (Object)artifactKey));
        }
        return Status.OK_STATUS;
    }
}

