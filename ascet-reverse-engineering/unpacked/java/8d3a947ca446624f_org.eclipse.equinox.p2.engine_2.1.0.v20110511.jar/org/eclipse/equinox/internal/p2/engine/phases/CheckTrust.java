/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.ITouchpointType
 */
package org.eclipse.equinox.internal.p2.engine.phases;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitOperand;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitPhase;
import org.eclipse.equinox.internal.p2.engine.phases.CertificateChecker;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.PhaseSetFactory;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.ITouchpointType;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CheckTrust
extends InstallableUnitPhase {
    public static final String PARM_ARTIFACT_FILES = "artifactFiles";

    public CheckTrust(int weight) {
        super(PhaseSetFactory.PHASE_CHECK_TRUST, weight);
    }

    @Override
    protected boolean isApplicable(InstallableUnitOperand op) {
        return op.second() != null;
    }

    @Override
    protected IStatus completePhase(IProgressMonitor monitor, IProfile profile, Map<String, Object> parameters) {
        Collection artifactRequests = (Collection)parameters.get(PARM_ARTIFACT_FILES);
        IProvisioningAgent agent = (IProvisioningAgent)parameters.get("agent");
        CertificateChecker certificateChecker = new CertificateChecker(agent);
        certificateChecker.add(artifactRequests.toArray());
        IStatus status = certificateChecker.start();
        return status;
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
    protected IStatus initializeOperand(IProfile profile, InstallableUnitOperand operand, Map<String, Object> parameters, IProgressMonitor monitor) {
        IInstallableUnit iu = operand.second();
        parameters.put("iu", iu);
        return super.initializeOperand(profile, operand, parameters, monitor);
    }

    @Override
    protected IStatus initializePhase(IProgressMonitor monitor, IProfile profile, Map<String, Object> parameters) {
        parameters.put(PARM_ARTIFACT_FILES, new ArrayList());
        return super.initializePhase(monitor, profile, parameters);
    }
}

