/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.ITouchpointType
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRequest
 */
package org.eclipse.equinox.internal.p2.engine.phases;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.internal.p2.engine.DownloadManager;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitOperand;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitPhase;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.PhaseSetFactory;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.ITouchpointType;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRequest;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Collect
extends InstallableUnitPhase {
    public static final String PARM_ARTIFACT_REQUESTS = "artifactRequests";
    public static final String NO_ARTIFACT_REPOSITORIES_AVAILABLE = "noArtifactRepositoriesAvailable";

    public Collect(int weight) {
        super(PhaseSetFactory.PHASE_COLLECT, weight);
        this.prePerformWork = 0;
        this.mainPerformWork = 100;
        this.postPerformWork = 1000;
    }

    @Override
    protected boolean isApplicable(InstallableUnitOperand op) {
        return op.second() != null && !op.second().equals((Object)op.first());
    }

    @Override
    protected List<ProvisioningAction> getActions(InstallableUnitOperand operand) {
        IInstallableUnit unit = operand.second();
        List<ProvisioningAction> parsedActions = this.getActions(unit, this.phaseId);
        if (parsedActions != null) {
            return parsedActions;
        }
        ITouchpointType type = unit.getTouchpointType();
        if (type == null || type == ITouchpointType.NONE) {
            return null;
        }
        String actionId = this.getActionManager().getTouchpointQualifiedActionId(this.phaseId, type);
        ProvisioningAction action = this.getActionManager().getAction(actionId, null);
        if (action == null) {
            return null;
        }
        return Collections.singletonList(action);
    }

    @Override
    protected String getProblemMessage() {
        return Messages.Phase_Collect_Error;
    }

    @Override
    protected IStatus completePhase(IProgressMonitor monitor, IProfile profile, Map<String, Object> parameters) {
        List artifactRequests = (List)parameters.get(PARM_ARTIFACT_REQUESTS);
        ProvisioningContext context = (ProvisioningContext)parameters.get("context");
        IProvisioningAgent agent = (IProvisioningAgent)parameters.get("agent");
        DownloadManager dm = new DownloadManager(context, agent);
        for (IArtifactRequest[] requests : artifactRequests) {
            dm.add(requests);
        }
        return dm.start(monitor);
    }

    @Override
    protected IStatus initializePhase(IProgressMonitor monitor, IProfile profile, Map<String, Object> parameters) {
        parameters.put(PARM_ARTIFACT_REQUESTS, new ArrayList());
        return null;
    }

    @Override
    protected IStatus initializeOperand(IProfile profile, InstallableUnitOperand operand, Map<String, Object> parameters, IProgressMonitor monitor) {
        IStatus status = super.initializeOperand(profile, operand, parameters, monitor);
        IInstallableUnit iu = operand.second();
        parameters.put("iu", iu);
        return status;
    }
}

