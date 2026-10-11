/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.query.QueryUtil
 */
package org.eclipse.equinox.internal.p2.engine.phases;

import java.util.ArrayList;
import java.util.Collection;
import java.util.EventObject;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitEvent;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitOperand;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitPhase;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.internal.p2.engine.Profile;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.PhaseSetFactory;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.engine.spi.Touchpoint;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.query.QueryUtil;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Uninstall
extends InstallableUnitPhase {
    public Uninstall(int weight, boolean forced) {
        super(PhaseSetFactory.PHASE_UNINSTALL, weight, forced);
    }

    public Uninstall(int weight) {
        this(weight, false);
    }

    @Override
    protected boolean isApplicable(InstallableUnitOperand op) {
        return op.first() != null && !op.first().equals((Object)op.second());
    }

    @Override
    protected List<ProvisioningAction> getActions(InstallableUnitOperand currentOperand) {
        BeforeUninstallEventAction beforeAction = new BeforeUninstallEventAction();
        AfterUninstallEventAction afterAction = new AfterUninstallEventAction();
        IInstallableUnit unit = currentOperand.first();
        Touchpoint touchpoint = this.getActionManager().getTouchpointPoint(unit.getTouchpointType());
        if (touchpoint != null) {
            beforeAction.setTouchpoint(touchpoint);
            afterAction.setTouchpoint(touchpoint);
        }
        ArrayList<ProvisioningAction> actions = new ArrayList<ProvisioningAction>();
        actions.add(beforeAction);
        if (QueryUtil.isFragment((IInstallableUnit)unit)) {
            actions.add(afterAction);
            return actions;
        }
        List<ProvisioningAction> parsedActions = this.getActions(unit, this.phaseId);
        if (parsedActions != null) {
            actions.addAll(parsedActions);
        }
        actions.add(afterAction);
        return actions;
    }

    @Override
    protected String getProblemMessage() {
        return Messages.Phase_Uninstall_Error;
    }

    @Override
    protected IStatus initializeOperand(IProfile profile, InstallableUnitOperand operand, Map<String, Object> parameters, IProgressMonitor monitor) {
        IInstallableUnit iu = operand.first();
        parameters.put("iu", iu);
        Collection artifacts = iu.getArtifacts();
        if (artifacts != null && artifacts.size() > 0) {
            parameters.put("artifact", artifacts.iterator().next());
        }
        return Status.OK_STATUS;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static final class AfterUninstallEventAction
    extends ProvisioningAction {
        AfterUninstallEventAction() {
        }

        @Override
        public IStatus execute(Map<String, Object> parameters) {
            Profile profile = (Profile)parameters.get("profile");
            String phaseId = (String)parameters.get("phaseId");
            IInstallableUnit iu = (IInstallableUnit)parameters.get("iu");
            profile.removeInstallableUnit(iu);
            IProvisioningAgent agent = (IProvisioningAgent)parameters.get("agent");
            ((IProvisioningEventBus)agent.getService(IProvisioningEventBus.SERVICE_NAME)).publishEvent((EventObject)new InstallableUnitEvent(phaseId, false, profile, iu, 0, this.getTouchpoint()));
            return null;
        }

        @Override
        public IStatus undo(Map<String, Object> parameters) {
            IProfile profile = (IProfile)parameters.get("profile");
            String phaseId = (String)parameters.get("phaseId");
            IInstallableUnit iu = (IInstallableUnit)parameters.get("iu");
            IProvisioningAgent agent = (IProvisioningAgent)parameters.get("agent");
            ((IProvisioningEventBus)agent.getService(IProvisioningEventBus.SERVICE_NAME)).publishEvent((EventObject)new InstallableUnitEvent(phaseId, true, profile, iu, 1, this.getTouchpoint()));
            return null;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static final class BeforeUninstallEventAction
    extends ProvisioningAction {
        BeforeUninstallEventAction() {
        }

        @Override
        public IStatus execute(Map<String, Object> parameters) {
            IProfile profile = (IProfile)parameters.get("profile");
            String phaseId = (String)parameters.get("phaseId");
            IInstallableUnit iu = (IInstallableUnit)parameters.get("iu");
            IProvisioningAgent agent = (IProvisioningAgent)parameters.get("agent");
            ((IProvisioningEventBus)agent.getService(IProvisioningEventBus.SERVICE_NAME)).publishEvent((EventObject)new InstallableUnitEvent(phaseId, true, profile, iu, 0, this.getTouchpoint()));
            return null;
        }

        @Override
        public IStatus undo(Map<String, Object> parameters) {
            Profile profile = (Profile)parameters.get("profile");
            String phaseId = (String)parameters.get("phaseId");
            IInstallableUnit iu = (IInstallableUnit)parameters.get("iu");
            profile.addInstallableUnit(iu);
            IProvisioningAgent agent = (IProvisioningAgent)parameters.get("agent");
            ((IProvisioningEventBus)agent.getService(IProvisioningEventBus.SERVICE_NAME)).publishEvent((EventObject)new InstallableUnitEvent(phaseId, false, profile, iu, 1, this.getTouchpoint()));
            return null;
        }
    }
}

