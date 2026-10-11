/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.spi.ProvisioningAction
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.ITouchpointData
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRequest
 *  org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.Messages;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.ITouchpointData;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepositoryManager;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRequest;
import org.eclipse.equinox.p2.repository.artifact.IFileArtifactRepository;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CollectAction
extends ProvisioningAction {
    public static final String ID = "collect";
    public static final String ARTIFACT_FOLDER = "artifact.folder";

    public IStatus execute(Map<String, Object> parameters) {
        IArtifactRequest[] requests;
        IProvisioningAgent agent = (IProvisioningAgent)parameters.get("agent");
        IProfile profile = (IProfile)parameters.get("profile");
        IInstallableUnit iu = (IInstallableUnit)parameters.get("iu");
        try {
            requests = CollectAction.collect(agent, profile, iu);
        }
        catch (ProvisionException e) {
            return e.getStatus();
        }
        Collection artifactRequests = (Collection)parameters.get("artifactRequests");
        artifactRequests.add(requests);
        return Status.OK_STATUS;
    }

    public IStatus undo(Map<String, Object> parameters) {
        return Status.OK_STATUS;
    }

    public static boolean isZipped(Collection<ITouchpointData> data) {
        if (data == null || data.size() == 0) {
            return false;
        }
        for (ITouchpointData td : data) {
            if (td.getInstruction("zipped") == null) continue;
            return true;
        }
        return false;
    }

    public static Map<String, String> createArtifactDescriptorProperties(IInstallableUnit installableUnit) {
        HashMap<String, String> descriptorProperties = null;
        if (CollectAction.isZipped(installableUnit.getTouchpointData())) {
            descriptorProperties = new HashMap<String, String>();
            descriptorProperties.put(ARTIFACT_FOLDER, Boolean.TRUE.toString());
        }
        return descriptorProperties;
    }

    static IArtifactRequest[] collect(IProvisioningAgent agent, IProfile profile, IInstallableUnit installableUnit) throws ProvisionException {
        Collection toDownload = installableUnit.getArtifacts();
        if (toDownload == null || toDownload.size() == 0) {
            return IArtifactRepositoryManager.NO_ARTIFACT_REQUEST;
        }
        IFileArtifactRepository aggregatedRepositoryView = Util.getAggregatedBundleRepository(agent, profile);
        IFileArtifactRepository bundlePool = Util.getBundlePoolRepository(agent, profile);
        if (bundlePool == null) {
            throw new ProvisionException(Util.createError(NLS.bind((String)Messages.no_bundle_pool, (Object)profile.getProfileId())));
        }
        ArrayList<IArtifactRequest> requests = new ArrayList<IArtifactRequest>();
        for (IArtifactKey key : toDownload) {
            if (aggregatedRepositoryView.contains(key)) continue;
            Map<String, String> repositoryProperties = CollectAction.createArtifactDescriptorProperties(installableUnit);
            requests.add(Util.getArtifactRepositoryManager(agent).createMirrorRequest(key, (IArtifactRepository)bundlePool, null, repositoryProperties));
        }
        if (requests.isEmpty()) {
            return IArtifactRepositoryManager.NO_ARTIFACT_REQUEST;
        }
        IArtifactRequest[] result = requests.toArray(new IArtifactRequest[requests.size()]);
        return result;
    }
}

