/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.engine;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.engine.ActionManager;
import org.eclipse.equinox.internal.p2.engine.DebugHelper;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.internal.p2.engine.Operand;
import org.eclipse.equinox.internal.p2.engine.ParameterizedProvisioningAction;
import org.eclipse.equinox.internal.p2.engine.Phase;
import org.eclipse.equinox.internal.p2.engine.SimpleProfileRegistry;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProfileRegistry;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.engine.spi.Touchpoint;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EngineSession {
    private static final String ENGINE_SESSION = "enginesession";
    private static final String EMPTY_STRING = "";
    private List<Object[]> phaseActionRecordsPairs = new ArrayList<Object[]>();
    private Phase currentPhase;
    boolean currentPhaseActive;
    private List<ActionsRecord> currentActionRecords;
    private ActionsRecord currentRecord;
    private IProfile profile;
    private ProvisioningContext context;
    private final HashMap<String, Object> sessionServices = new HashMap();
    private Set<Touchpoint> touchpoints = new HashSet<Touchpoint>();
    private final IProvisioningAgent agent;

    public EngineSession(IProvisioningAgent agent, IProfile profile, ProvisioningContext context) {
        this.agent = agent;
        this.profile = profile;
        this.context = context;
    }

    public IProfile getProfile() {
        return this.profile;
    }

    public IProvisioningAgent getAgent() {
        return this.agent;
    }

    public ProvisioningContext getProvisioningContext() {
        return this.context;
    }

    public File getProfileDataDirectory() {
        SimpleProfileRegistry profileRegistry = (SimpleProfileRegistry)this.agent.getService(IProfileRegistry.SERVICE_NAME);
        return profileRegistry.getProfileDataDirectory(this.profile.getProfileId());
    }

    public Object getxService(String serviceName) {
        Object result = this.sessionServices.get(serviceName);
        if (result != null) {
            return result;
        }
        return this.agent.getService(serviceName);
    }

    IStatus prepare(IProgressMonitor monitor) {
        monitor.subTask(Messages.preparing);
        MultiStatus status = new MultiStatus("org.eclipse.equinox.p2.engine", 0, null, null);
        for (Touchpoint touchpoint : this.touchpoints) {
            try {
                status.add(touchpoint.prepare(this.profile));
            }
            catch (RuntimeException e) {
                status.add((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.touchpoint_prepare_error, (Object)touchpoint.getClass().getName()), (Throwable)e));
            }
            catch (LinkageError e) {
                status.add((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.touchpoint_prepare_error, (Object)touchpoint.getClass().getName()), (Throwable)e));
            }
        }
        if (status.matches(4)) {
            MultiStatus result = new MultiStatus("org.eclipse.equinox.p2.engine", 4, NLS.bind((String)Messages.session_prepare_error, (Object)this.profile.getProfileId()), null);
            result.merge((IStatus)status);
            return result;
        }
        return status;
    }

    IStatus commit(IProgressMonitor monitor) {
        monitor.subTask(Messages.committing);
        MultiStatus status = new MultiStatus("org.eclipse.equinox.p2.engine", 0, null, null);
        this.phaseActionRecordsPairs.clear();
        for (Touchpoint touchpoint : this.touchpoints) {
            try {
                IStatus result = touchpoint.commit(this.profile);
                if (result.isOK()) continue;
                status.add(result);
            }
            catch (RuntimeException e) {
                status.add((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.touchpoint_commit_error, (Object)touchpoint.getClass().getName()), (Throwable)e));
            }
            catch (LinkageError e) {
                status.add((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.touchpoint_commit_error, (Object)touchpoint.getClass().getName()), (Throwable)e));
            }
        }
        if (status.matches(4)) {
            MultiStatus result = new MultiStatus("org.eclipse.equinox.p2.engine", 4, NLS.bind((String)Messages.session_commit_error, (Object)this.profile.getProfileId()), null);
            result.merge((IStatus)status);
            return result;
        }
        return status;
    }

    IStatus rollback(IProgressMonitor monitor, int severity) {
        IStatus result;
        if (severity == 8) {
            monitor.subTask(Messages.rollingback_cancel);
        }
        if (severity == 4) {
            monitor.subTask(Messages.rollingback_error);
        }
        MultiStatus status = new MultiStatus("org.eclipse.equinox.p2.engine", 0, null, null);
        if (this.currentPhaseActive) {
            try {
                result = this.rollBackPhase(this.currentPhase, this.currentActionRecords);
                if (!result.isOK()) {
                    status.add(result);
                }
            }
            catch (RuntimeException e) {
                status.add((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.phase_undo_error, (Object)this.currentPhase.getClass().getName()), (Throwable)e));
            }
            catch (LinkageError e) {
                status.add((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.phase_undo_error, (Object)this.currentPhase.getClass().getName()), (Throwable)e));
            }
            this.currentPhaseActive = false;
            this.currentActionRecords = null;
            this.currentRecord = null;
        }
        this.currentPhase = null;
        ListIterator<Object[]> it = this.phaseActionRecordsPairs.listIterator(this.phaseActionRecordsPairs.size());
        while (it.hasPrevious()) {
            Object[] pair = it.previous();
            Phase phase = (Phase)pair[0];
            List actionRecords = (List)pair[1];
            try {
                IStatus result2 = this.rollBackPhase(phase, actionRecords);
                if (result2.isOK()) continue;
                status.add(result2);
            }
            catch (RuntimeException e) {
                status.add((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.phase_undo_error, (Object)phase.getClass().getName()), (Throwable)e));
            }
            catch (LinkageError e) {
                status.add((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.phase_undo_error, (Object)phase.getClass().getName()), (Throwable)e));
            }
        }
        this.phaseActionRecordsPairs.clear();
        for (Touchpoint touchpoint : this.touchpoints) {
            try {
                IStatus result3 = touchpoint.rollback(this.profile);
                if (result3.isOK()) continue;
                status.add(result3);
            }
            catch (RuntimeException e) {
                status.add((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.touchpoint_rollback_error, (Object)touchpoint.getClass().getName()), (Throwable)e));
            }
            catch (LinkageError e) {
                status.add((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.touchpoint_rollback_error, (Object)touchpoint.getClass().getName()), (Throwable)e));
            }
        }
        if (status.matches(4)) {
            result = new MultiStatus("org.eclipse.equinox.p2.engine", 4, NLS.bind((String)Messages.session_commit_error, (Object)this.profile.getProfileId()), null);
            result.merge((IStatus)status);
            return result;
        }
        return status;
    }

    private IStatus rollBackPhase(Phase phase, List<ActionsRecord> actionRecords) {
        MultiStatus result = new MultiStatus("org.eclipse.equinox.p2.engine", 0, null, null);
        try {
            phase.actionManager = (ActionManager)this.agent.getService(ActionManager.SERVICE_NAME);
            if (!this.currentPhaseActive) {
                phase.prePerform(result, this, (IProgressMonitor)new NullProgressMonitor());
            }
            ListIterator<ActionsRecord> it = actionRecords.listIterator(actionRecords.size());
            while (it.hasPrevious()) {
                ActionsRecord record = it.previous();
                ArrayList<ProvisioningAction> reversedActions = new ArrayList<ProvisioningAction>(record.actions);
                Collections.reverse(reversedActions);
                ProvisioningAction[] actions = reversedActions.toArray(new ProvisioningAction[record.actions.size()]);
                try {
                    phase.undo(result, this, this.profile, record.operand, actions, this.context);
                }
                catch (RuntimeException e) {
                    result.add((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.phase_undo_operand_error, (Object)phase.getClass().getName(), (Object)record.operand), (Throwable)e));
                }
                catch (LinkageError e) {
                    result.add((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.phase_undo_operand_error, (Object)phase.getClass().getName(), (Object)record.operand), (Throwable)e));
                }
            }
            phase.postPerform(result, this, (IProgressMonitor)new NullProgressMonitor());
        }
        finally {
            phase.actionManager = null;
        }
        return result;
    }

    void recordPhaseEnter(Phase phase) {
        if (phase == null) {
            throw new IllegalArgumentException(Messages.null_phase);
        }
        if (this.currentPhase != null) {
            throw new IllegalStateException(Messages.phase_started);
        }
        this.currentPhase = phase;
        if (DebugHelper.DEBUG_ENGINE_SESSION) {
            EngineSession.debugPhaseEnter(phase);
        }
    }

    void recordPhaseStart(Phase phase) {
        if (phase == null) {
            throw new IllegalArgumentException(Messages.null_phase);
        }
        if (this.currentPhase != phase) {
            throw new IllegalArgumentException(Messages.not_current_phase);
        }
        this.currentPhaseActive = true;
        this.currentActionRecords = new ArrayList<ActionsRecord>();
    }

    void recordPhaseEnd(Phase phase) {
        if (this.currentPhase == null) {
            throw new IllegalStateException(Messages.phase_not_started);
        }
        if (this.currentPhase != phase) {
            throw new IllegalArgumentException(Messages.not_current_phase);
        }
        this.phaseActionRecordsPairs.add(new Object[]{this.currentPhase, this.currentActionRecords});
        this.currentActionRecords = null;
        this.currentPhaseActive = false;
    }

    void recordPhaseExit(Phase phase) {
        if (this.currentPhase == null) {
            throw new IllegalStateException(Messages.phase_not_started);
        }
        if (this.currentPhase != phase) {
            throw new IllegalArgumentException(Messages.not_current_phase);
        }
        this.currentPhase = null;
        if (DebugHelper.DEBUG_ENGINE_SESSION) {
            EngineSession.debugPhaseExit(phase);
        }
    }

    void recordOperandStart(Operand operand) {
        if (operand == null) {
            throw new IllegalArgumentException(Messages.null_operand);
        }
        if (this.currentRecord != null) {
            throw new IllegalStateException(Messages.operand_started);
        }
        this.currentRecord = new ActionsRecord(operand);
        this.currentActionRecords.add(this.currentRecord);
        if (DebugHelper.DEBUG_ENGINE_SESSION) {
            EngineSession.debugOperandStart(operand);
        }
    }

    void recordOperandEnd(Operand operand) {
        if (this.currentRecord == null) {
            throw new IllegalStateException(Messages.operand_not_started);
        }
        if (this.currentRecord.operand != operand) {
            throw new IllegalArgumentException(Messages.not_current_operand);
        }
        this.currentRecord = null;
        if (DebugHelper.DEBUG_ENGINE_SESSION) {
            EngineSession.debugOperandEnd(operand);
        }
    }

    void recordActionExecute(ProvisioningAction action, Map<String, Object> parameters) {
        if (action == null) {
            throw new IllegalArgumentException(Messages.null_action);
        }
        this.currentRecord.actions.add(action);
        Touchpoint touchpoint = action.getTouchpoint();
        if (touchpoint != null) {
            this.touchpoints.add(touchpoint);
        }
        if (DebugHelper.DEBUG_ENGINE_SESSION) {
            EngineSession.debugActionExecute(action, parameters);
        }
    }

    public void recordActionUndo(ProvisioningAction action, Map<String, Object> parameters) {
        if (DebugHelper.DEBUG_ENGINE_SESSION) {
            EngineSession.debugActionUndo(action, parameters);
        }
    }

    public String getContextString(Phase phase, Operand operand, ProvisioningAction action) {
        if (action instanceof ParameterizedProvisioningAction) {
            ParameterizedProvisioningAction parameterizedAction = (ParameterizedProvisioningAction)action;
            action = parameterizedAction.getAction();
        }
        String message = NLS.bind((String)Messages.session_context, (Object[])new Object[]{this.profile.getProfileId(), phase.getClass().getName(), operand.toString(), this.getCurrentActionId()});
        return message;
    }

    public String getContextString() {
        String message = NLS.bind((String)Messages.session_context, (Object[])new Object[]{this.profile.getProfileId(), this.getCurrentPhaseId(), this.getCurrentOperandId(), this.getCurrentActionId()});
        return message;
    }

    private Object getCurrentActionId() {
        if (this.currentRecord == null || this.currentRecord.actions.isEmpty()) {
            return EMPTY_STRING;
        }
        ProvisioningAction currentAction = this.currentRecord.actions.get(this.currentRecord.actions.size() - 1);
        if (currentAction instanceof ParameterizedProvisioningAction) {
            ParameterizedProvisioningAction parameterizedAction = (ParameterizedProvisioningAction)currentAction;
            currentAction = parameterizedAction.getAction();
        }
        return currentAction.getClass().getName();
    }

    private String getCurrentPhaseId() {
        if (this.currentPhase == null) {
            return EMPTY_STRING;
        }
        return this.currentPhase.getClass().getName();
    }

    private String getCurrentOperandId() {
        if (this.currentRecord == null) {
            return EMPTY_STRING;
        }
        return this.currentRecord.operand.toString();
    }

    private static void debugPhaseEnter(Phase phase) {
        DebugHelper.debug(ENGINE_SESSION, new StringBuffer("Entering phase: ").append(phase.getClass().getName()).toString());
    }

    private static void debugPhaseExit(Phase phase) {
        DebugHelper.debug(ENGINE_SESSION, new StringBuffer("Exiting phase: ").append(phase.getClass().getName()).toString());
    }

    private static void debugOperandStart(Operand operand) {
        DebugHelper.debug(ENGINE_SESSION, new StringBuffer("Starting processing of operand: ").append(operand.toString()).toString());
    }

    private static void debugOperandEnd(Operand operand) {
        DebugHelper.debug(ENGINE_SESSION, new StringBuffer("Ending processing of operand: ").append(operand.toString()).toString());
    }

    private static void debugActionExecute(ProvisioningAction action, Map<String, Object> parameters) {
        DebugHelper.debug(ENGINE_SESSION, new StringBuffer("Executing action: ").append(DebugHelper.formatAction(action, parameters)).toString());
    }

    private static void debugActionUndo(ProvisioningAction action, Map<String, Object> parameters) {
        DebugHelper.debug(ENGINE_SESSION, new StringBuffer("Undoing action: ").append(DebugHelper.formatAction(action, parameters)).toString());
    }

    private static class ActionsRecord {
        Operand operand;
        List<ProvisioningAction> actions = new ArrayList<ProvisioningAction>();

        ActionsRecord(Operand operand) {
            this.operand = operand;
        }
    }
}

