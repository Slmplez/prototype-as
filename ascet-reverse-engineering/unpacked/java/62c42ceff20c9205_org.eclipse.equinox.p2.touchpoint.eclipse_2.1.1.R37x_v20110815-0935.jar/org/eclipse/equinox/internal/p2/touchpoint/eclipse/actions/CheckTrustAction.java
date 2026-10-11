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
 *  org.eclipse.equinox.p2.metadata.IVersionedId
 *  org.eclipse.equinox.p2.query.QueryUtil
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import java.io.File;
import java.util.Collection;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.query.QueryUtil;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CheckTrustAction
extends ProvisioningAction {
    public static final String ID = "checkTrust";

    public IStatus execute(Map<String, Object> parameters) {
        IInstallableUnit iu = (IInstallableUnit)parameters.get("iu");
        if (iu == null) {
            return null;
        }
        IProvisioningAgent agent = (IProvisioningAgent)parameters.get("agent");
        IProfile profile = (IProfile)parameters.get("profile");
        if (!profile.available(QueryUtil.createIUQuery((IVersionedId)iu), null).isEmpty()) {
            return null;
        }
        Collection bundleFiles = (Collection)parameters.get("artifactFiles");
        Collection artifacts = iu.getArtifacts();
        if (artifacts == null) {
            return null;
        }
        for (IArtifactKey key : artifacts) {
            File bundleFile = Util.getArtifactFile(agent, key, profile);
            if (bundleFiles.contains(bundleFile)) continue;
            bundleFiles.add(bundleFile);
        }
        return null;
    }

    public IStatus undo(Map<String, Object> parameters) {
        return Status.OK_STATUS;
    }
}

