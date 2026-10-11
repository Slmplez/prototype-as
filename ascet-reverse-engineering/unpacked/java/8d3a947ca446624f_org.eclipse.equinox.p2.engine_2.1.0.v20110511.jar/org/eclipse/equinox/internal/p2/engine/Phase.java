/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.engine;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.engine.ActionManager;
import org.eclipse.equinox.internal.p2.engine.EngineSession;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.internal.p2.engine.Operand;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.engine.spi.Touchpoint;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class Phase {
    protected static final String PARM_OPERAND = "operand";
    protected static final String PARM_PHASE_ID = "phaseId";
    protected static final String PARM_PROFILE = "profile";
    protected static final String PARM_PROFILE_DATA_DIRECTORY = "profileDataDirectory";
    protected static final String PARM_CONTEXT = "context";
    protected static final String PARM_AGENT = "agent";
    protected static final String PARM_FORCED = "forced";
    protected static final String PARM_TOUCHPOINT = "touchpoint";
    protected final String phaseId;
    protected final int weight;
    protected final boolean forced;
    protected int prePerformWork = 1000;
    protected int mainPerformWork = 10000;
    protected int postPerformWork = 1000;
    private Map<String, Object> operandParameters = null;
    private Map<String, Object> phaseParameters = new HashMap<String, Object>();
    private Map<Touchpoint, Map<String, Object>> touchpointToTouchpointPhaseParameters = new HashMap<Touchpoint, Map<String, Object>>();
    private Map<Touchpoint, Map<String, Object>> touchpointToTouchpointOperandParameters = new HashMap<Touchpoint, Map<String, Object>>();
    ActionManager actionManager;

    protected Phase(String phaseId, int weight, boolean forced) {
        if (phaseId == null || phaseId.length() == 0) {
            throw new IllegalArgumentException(Messages.phaseid_not_set);
        }
        if (weight <= 0) {
            throw new IllegalArgumentException(Messages.phaseid_not_positive);
        }
        this.weight = weight;
        this.phaseId = phaseId;
        this.forced = forced;
    }

    protected Phase(String phaseId, int weight) {
        this(phaseId, weight, false);
    }

    protected final ActionManager getActionManager() {
        return this.actionManager;
    }

    public String toString() {
        return new StringBuffer(String.valueOf(this.getClass().getName())).append(" - ").append(this.weight).toString();
    }

    void perform(MultiStatus status, EngineSession session, Operand[] operands, IProgressMonitor monitor) {
        SubMonitor subMonitor = SubMonitor.convert((IProgressMonitor)monitor, (int)(this.prePerformWork + this.mainPerformWork + this.postPerformWork));
        session.recordPhaseEnter(this);
        this.prePerform(status, session, (IProgressMonitor)subMonitor.newChild(this.prePerformWork));
        if (status.matches(12)) {
            return;
        }
        session.recordPhaseStart(this);
        subMonitor.setWorkRemaining(this.mainPerformWork + this.postPerformWork);
        this.mainPerform(status, session, operands, subMonitor.newChild(this.mainPerformWork));
        if (status.matches(12)) {
            return;
        }
        session.recordPhaseEnd(this);
        subMonitor.setWorkRemaining(this.postPerformWork);
        this.postPerform(status, session, (IProgressMonitor)subMonitor.newChild(this.postPerformWork));
        this.phaseParameters.clear();
        if (status.matches(12)) {
            return;
        }
        session.recordPhaseExit(this);
        subMonitor.done();
    }

    void prePerform(MultiStatus status, EngineSession session, IProgressMonitor monitor) {
        IProfile profile = session.getProfile();
        this.phaseParameters.put(PARM_PROFILE, profile);
        this.phaseParameters.put(PARM_PROFILE_DATA_DIRECTORY, session.getProfileDataDirectory());
        this.phaseParameters.put(PARM_CONTEXT, session.getProvisioningContext());
        this.phaseParameters.put(PARM_PHASE_ID, this.phaseId);
        this.phaseParameters.put(PARM_FORCED, Boolean.toString(this.forced));
        this.phaseParameters.put(PARM_AGENT, session.getAgent());
        Phase.mergeStatus(status, this.initializePhase(monitor, profile, this.phaseParameters));
    }

    private void mainPerform(MultiStatus status, EngineSession session, Operand[] operands, SubMonitor subMonitor) {
        IProfile profile = session.getProfile();
        subMonitor.beginTask(null, operands.length);
        int i = 0;
        while (i < operands.length) {
            subMonitor.setWorkRemaining(operands.length - i);
            if (subMonitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            Operand operand = operands[i];
            if (this.isApplicable(operand)) {
                session.recordOperandStart(operand);
                List<ProvisioningAction> actions = this.getActions(operand);
                this.operandParameters = new HashMap<String, Object>(this.phaseParameters);
                this.operandParameters.put(PARM_OPERAND, operand);
                Phase.mergeStatus(status, this.initializeOperand(profile, operand, this.operandParameters, (IProgressMonitor)subMonitor));
                if (status.matches(12)) {
                    this.operandParameters = null;
                    return;
                }
                Touchpoint operandTouchpoint = (Touchpoint)this.operandParameters.get(PARM_TOUCHPOINT);
                if (operandTouchpoint != null) {
                    Phase.mergeStatus(status, this.initializeTouchpointParameters(profile, operand, operandTouchpoint, (IProgressMonitor)subMonitor));
                    if (status.matches(12)) {
                        return;
                    }
                    this.operandParameters = this.touchpointToTouchpointOperandParameters.get(operandTouchpoint);
                }
                this.operandParameters = Collections.unmodifiableMap(this.operandParameters);
                if (actions != null) {
                    int j = 0;
                    while (j < actions.size()) {
                        ProvisioningAction action = actions.get(j);
                        Map<String, Object> parameters = this.operandParameters;
                        Touchpoint touchpoint = action.getTouchpoint();
                        if (touchpoint != null) {
                            Phase.mergeStatus(status, this.initializeTouchpointParameters(profile, operand, touchpoint, (IProgressMonitor)subMonitor));
                            if (status.matches(12)) {
                                return;
                            }
                            parameters = this.touchpointToTouchpointOperandParameters.get(touchpoint);
                        }
                        IStatus actionStatus = null;
                        try {
                            session.recordActionExecute(action, parameters);
                            actionStatus = action.execute(parameters);
                        }
                        catch (RuntimeException e) {
                            if (!this.forced) {
                                throw e;
                            }
                            actionStatus = new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.forced_action_execute_error, (Object)action.getClass().getName()), (Throwable)e);
                        }
                        catch (LinkageError e) {
                            if (!this.forced) {
                                throw e;
                            }
                            actionStatus = new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.forced_action_execute_error, (Object)action.getClass().getName()), (Throwable)e);
                        }
                        if (this.forced && actionStatus != null && actionStatus.matches(4)) {
                            MultiStatus result = new MultiStatus("org.eclipse.equinox.p2.engine", 4, this.getProblemMessage(), null);
                            result.add((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", session.getContextString(this, operand, action), null));
                            LogHelper.log((IStatus)result);
                            actionStatus = Status.OK_STATUS;
                        }
                        Phase.mergeStatus(status, actionStatus);
                        if (status.matches(12)) {
                            return;
                        }
                        ++j;
                    }
                }
                Phase.mergeStatus(status, this.touchpointCompleteOperand(profile, operand, this.operandParameters, (IProgressMonitor)subMonitor));
                Phase.mergeStatus(status, this.completeOperand(profile, operand, this.operandParameters, (IProgressMonitor)subMonitor));
                if (status.matches(12)) {
                    return;
                }
                this.operandParameters = null;
                session.recordOperandEnd(operand);
                subMonitor.worked(1);
            }
            ++i;
        }
    }

    private IStatus initializeTouchpointParameters(IProfile profile, Operand operand, Touchpoint touchpoint, IProgressMonitor monitor) {
        if (this.touchpointToTouchpointOperandParameters.containsKey(touchpoint)) {
            return Status.OK_STATUS;
        }
        Map<String, Object> touchpointPhaseParameters = this.touchpointToTouchpointPhaseParameters.get(touchpoint);
        if (touchpointPhaseParameters == null) {
            touchpointPhaseParameters = new HashMap<String, Object>(this.phaseParameters);
            IStatus status = touchpoint.initializePhase(monitor, profile, this.phaseId, touchpointPhaseParameters);
            if (status != null && status.matches(12)) {
                return status;
            }
            this.touchpointToTouchpointPhaseParameters.put(touchpoint, touchpointPhaseParameters);
        }
        HashMap<String, Object> touchpointOperandParameters = new HashMap<String, Object>(touchpointPhaseParameters);
        touchpointOperandParameters.putAll(this.operandParameters);
        IStatus status = touchpoint.initializeOperand(profile, touchpointOperandParameters);
        if (status != null && status.matches(12)) {
            return status;
        }
        this.touchpointToTouchpointOperandParameters.put(touchpoint, touchpointOperandParameters);
        return Status.OK_STATUS;
    }

    protected static void mergeStatus(MultiStatus multi, IStatus status) {
        if (status != null && !status.isOK()) {
            multi.merge(status);
        }
    }

    void postPerform(MultiStatus status, EngineSession session, IProgressMonitor monitor) {
        IProfile profile = session.getProfile();
        Phase.mergeStatus(status, this.touchpointCompletePhase(monitor, profile, this.phaseParameters));
        Phase.mergeStatus(status, this.completePhase(monitor, profile, this.phaseParameters));
    }

    void undo(MultiStatus status, EngineSession session, IProfile profile, Operand operand, ProvisioningAction[] actions, ProvisioningContext context) {
        if (this.operandParameters == null) {
            this.operandParameters = new HashMap<String, Object>(this.phaseParameters);
            this.operandParameters.put(PARM_OPERAND, operand);
            Phase.mergeStatus(status, this.initializeOperand(profile, operand, this.operandParameters, (IProgressMonitor)new NullProgressMonitor()));
            Touchpoint operandTouchpoint = (Touchpoint)this.operandParameters.get(PARM_TOUCHPOINT);
            if (operandTouchpoint != null) {
                Phase.mergeStatus(status, this.initializeTouchpointParameters(profile, operand, operandTouchpoint, (IProgressMonitor)new NullProgressMonitor()));
                if (status.matches(12)) {
                    return;
                }
                this.operandParameters = this.touchpointToTouchpointOperandParameters.get(operandTouchpoint);
            }
            this.operandParameters = Collections.unmodifiableMap(this.operandParameters);
        }
        int j = 0;
        while (j < actions.length) {
            ProvisioningAction action = actions[j];
            Map<String, Object> parameters = this.operandParameters;
            Touchpoint touchpoint = action.getTouchpoint();
            if (touchpoint != null) {
                Phase.mergeStatus(status, this.initializeTouchpointParameters(profile, operand, touchpoint, (IProgressMonitor)new NullProgressMonitor()));
                if (status.matches(4)) {
                    return;
                }
                parameters = this.touchpointToTouchpointOperandParameters.get(touchpoint);
            }
            IStatus actionStatus = null;
            try {
                session.recordActionUndo(action, parameters);
                actionStatus = action.undo(parameters);
            }
            catch (RuntimeException e) {
                actionStatus = new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.action_undo_error, (Object)action.getClass().getName()), (Throwable)e);
            }
            catch (LinkageError e) {
                actionStatus = new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.action_undo_error, (Object)action.getClass().getName()), (Throwable)e);
            }
            if (actionStatus != null && actionStatus.matches(4)) {
                MultiStatus result = new MultiStatus("org.eclipse.equinox.p2.engine", 4, this.getProblemMessage(), null);
                result.add((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", session.getContextString(this, operand, action), null));
                result.merge(actionStatus);
            }
            ++j;
        }
        Phase.mergeStatus(status, this.touchpointCompleteOperand(profile, operand, this.operandParameters, (IProgressMonitor)new NullProgressMonitor()));
        Phase.mergeStatus(status, this.completeOperand(profile, operand, this.operandParameters, (IProgressMonitor)new NullProgressMonitor()));
        this.operandParameters = null;
    }

    public boolean isApplicable(Operand operand) {
        return true;
    }

    protected IStatus initializePhase(IProgressMonitor monitor, IProfile profile, Map<String, Object> parameters) {
        return Status.OK_STATUS;
    }

    protected IStatus completePhase(IProgressMonitor monitor, IProfile profile, Map<String, Object> parameters) {
        return Status.OK_STATUS;
    }

    IStatus touchpointCompletePhase(IProgressMonitor monitor, IProfile profile, Map<String, Object> parameters) {
        if (this.touchpointToTouchpointPhaseParameters.isEmpty()) {
            return Status.OK_STATUS;
        }
        MultiStatus status = new MultiStatus("org.eclipse.equinox.p2.engine", 0, null, null);
        for (Map.Entry<Touchpoint, Map<String, Object>> entry : this.touchpointToTouchpointPhaseParameters.entrySet()) {
            Touchpoint touchpoint = entry.getKey();
            Map<String, Object> touchpointParameters = entry.getValue();
            Phase.mergeStatus(status, touchpoint.completePhase(monitor, profile, this.phaseId, touchpointParameters));
        }
        this.touchpointToTouchpointPhaseParameters.clear();
        return status;
    }

    protected IStatus completeOperand(IProfile profile, Operand operand, Map<String, Object> parameters, IProgressMonitor monitor) {
        return Status.OK_STATUS;
    }

    IStatus touchpointCompleteOperand(IProfile profile, Operand operand, Map<String, Object> parameters, IProgressMonitor monitor) {
        if (this.touchpointToTouchpointOperandParameters.isEmpty()) {
            return Status.OK_STATUS;
        }
        MultiStatus status = new MultiStatus("org.eclipse.equinox.p2.engine", 0, null, null);
        for (Map.Entry<Touchpoint, Map<String, Object>> entry : this.touchpointToTouchpointOperandParameters.entrySet()) {
            Touchpoint touchpoint = entry.getKey();
            Map<String, Object> touchpointParameters = entry.getValue();
            Phase.mergeStatus(status, touchpoint.completeOperand(profile, touchpointParameters));
        }
        this.touchpointToTouchpointOperandParameters.clear();
        return status;
    }

    protected IStatus initializeOperand(IProfile profile, Operand operand, Map<String, Object> parameters, IProgressMonitor monitor) {
        return Status.OK_STATUS;
    }

    protected abstract List<ProvisioningAction> getActions(Operand var1);

    protected String getProblemMessage() {
        return NLS.bind((String)Messages.phase_error, (Object)this.getClass().getName());
    }
}

