/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.spi.ProvisioningAction
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import java.io.File;
import java.util.Collection;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.InstallBundleAction;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.Messages;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class UninstallBundleAction
extends ProvisioningAction {
    public static final String ID = "uninstallBundle";

    public IStatus execute(Map<String, Object> parameters) {
        return UninstallBundleAction.uninstallBundle(parameters);
    }

    public IStatus undo(Map<String, Object> parameters) {
        return InstallBundleAction.installBundle(parameters);
    }

    public static IStatus uninstallBundle(Map<String, Object> parameters) {
        IProvisioningAgent agent = (IProvisioningAgent)parameters.get("agent");
        IProfile profile = (IProfile)parameters.get("profile");
        IInstallableUnit iu = (IInstallableUnit)parameters.get("iu");
        Manipulator manipulator = (Manipulator)parameters.get("manipulator");
        String bundleId = (String)parameters.get("bundle");
        if (bundleId == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"bundle", (Object)ID));
        }
        if (QueryUtil.isFragment((IInstallableUnit)iu)) {
            System.out.println(new StringBuffer("What is a fragment doing here!!! -- ").append(iu).toString());
            return Status.OK_STATUS;
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
        BundleInfo bundleInfo = Util.createBundleInfo(bundleFile, iu);
        if (bundleInfo == null) {
            return Util.createError(NLS.bind((String)Messages.failed_bundleinfo, (Object)iu));
        }
        manipulator.getConfigData().removeBundle(bundleInfo);
        return Status.OK_STATUS;
    }
}

