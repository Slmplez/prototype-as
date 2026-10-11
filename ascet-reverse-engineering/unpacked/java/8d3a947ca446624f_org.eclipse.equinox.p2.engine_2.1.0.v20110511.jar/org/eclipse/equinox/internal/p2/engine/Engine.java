/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 */
package org.eclipse.equinox.internal.p2.engine;

import java.util.EventObject;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.engine.ActionManager;
import org.eclipse.equinox.internal.p2.engine.BeginOperationEvent;
import org.eclipse.equinox.internal.p2.engine.CommitOperationEvent;
import org.eclipse.equinox.internal.p2.engine.DebugHelper;
import org.eclipse.equinox.internal.p2.engine.EngineSession;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.internal.p2.engine.Operand;
import org.eclipse.equinox.internal.p2.engine.PhaseSet;
import org.eclipse.equinox.internal.p2.engine.Profile;
import org.eclipse.equinox.internal.p2.engine.ProvisioningPlan;
import org.eclipse.equinox.internal.p2.engine.RollbackOperationEvent;
import org.eclipse.equinox.internal.p2.engine.SimpleProfileRegistry;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IEngine;
import org.eclipse.equinox.p2.engine.IPhaseSet;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProfileRegistry;
import org.eclipse.equinox.p2.engine.IProvisioningPlan;
import org.eclipse.equinox.p2.engine.PhaseSetFactory;
import org.eclipse.equinox.p2.engine.ProvisioningContext;

public class Engine
implements IEngine {
    private static final String ENGINE = "engine";
    private IProvisioningAgent agent;

    public Engine(IProvisioningAgent agent) {
        this.agent = agent;
        agent.registerService(ActionManager.SERVICE_NAME, (Object)new ActionManager());
    }

    private void checkArguments(IProfile iprofile, PhaseSet phaseSet, Operand[] operands, ProvisioningContext context, IProgressMonitor monitor) {
        if (iprofile == null) {
            throw new IllegalArgumentException(Messages.null_profile);
        }
        if (phaseSet == null) {
            throw new IllegalArgumentException(Messages.null_phaseset);
        }
        if (operands == null) {
            throw new IllegalArgumentException(Messages.null_operands);
        }
    }

    public IStatus perform(IProvisioningPlan plan, IPhaseSet phaseSet, IProgressMonitor monitor) {
        return this.perform(plan.getProfile(), phaseSet, ((ProvisioningPlan)plan).getOperands(), plan.getContext(), monitor);
    }

    public IStatus perform(IProvisioningPlan plan, IProgressMonitor monitor) {
        return this.perform(plan, PhaseSetFactory.createDefaultPhaseSet(), monitor);
    }

    public IStatus perform(IProfile iprofile, IPhaseSet phases, Operand[] operands, ProvisioningContext context, IProgressMonitor monitor) {
        PhaseSet phaseSet = (PhaseSet)phases;
        this.checkArguments(iprofile, phaseSet, operands, context, monitor);
        if (operands.length == 0) {
            return Status.OK_STATUS;
        }
        SimpleProfileRegistry profileRegistry = (SimpleProfileRegistry)this.agent.getService(IProfileRegistry.SERVICE_NAME);
        IProvisioningEventBus eventBus = (IProvisioningEventBus)this.agent.getService(IProvisioningEventBus.SERVICE_NAME);
        if (context == null) {
            context = new ProvisioningContext(this.agent);
        }
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        Profile profile = profileRegistry.validate(iprofile);
        profileRegistry.lockProfile(profile);
        try {
            IStatus status;
            EngineSession session;
            MultiStatus result;
            eventBus.publishEvent((EventObject)new BeginOperationEvent(profile, phaseSet, operands, this));
            if (DebugHelper.DEBUG_ENGINE) {
                DebugHelper.debug(ENGINE, "Beginning engine operation for profile=" + profile.getProfileId() + " [" + profile.getTimestamp() + "]:" + DebugHelper.LINE_SEPARATOR + DebugHelper.formatOperation(phaseSet, operands, context));
            }
            if ((result = phaseSet.perform(session = new EngineSession(this.agent, profile, context), operands, monitor)).isOK() || result.matches(3)) {
                if (DebugHelper.DEBUG_ENGINE) {
                    DebugHelper.debug(ENGINE, "Preparing to commit engine operation for profile=" + profile.getProfileId());
                }
                result.merge(session.prepare(monitor));
            }
            if (result.matches(12)) {
                if (DebugHelper.DEBUG_ENGINE) {
                    DebugHelper.debug(ENGINE, "Rolling back engine operation for profile=" + profile.getProfileId() + ". Reason was: " + result.toString());
                }
                if ((status = session.rollback(monitor, result.getSeverity())).matches(4)) {
                    LogHelper.log((IStatus)status);
                }
                eventBus.publishEvent((EventObject)new RollbackOperationEvent(profile, phaseSet, operands, this, (IStatus)result));
            } else {
                if (DebugHelper.DEBUG_ENGINE) {
                    DebugHelper.debug(ENGINE, "Committing engine operation for profile=" + profile.getProfileId());
                }
                if (profile.isChanged()) {
                    profileRegistry.updateProfile(profile);
                }
                if ((status = session.commit(monitor)).matches(4)) {
                    LogHelper.log((IStatus)status);
                }
                eventBus.publishEvent((EventObject)new CommitOperationEvent(profile, phaseSet, operands, this));
            }
            IStatus[] children = result.getChildren();
            MultiStatus multiStatus = children.length == 1 ? children[0] : result;
            return multiStatus;
        }
        finally {
            profileRegistry.unlockProfile(profile);
            profile.setChanged(false);
        }
    }

    protected IStatus validate(IProfile iprofile, PhaseSet phaseSet, Operand[] operands, ProvisioningContext context, IProgressMonitor monitor) {
        this.checkArguments(iprofile, phaseSet, operands, context, monitor);
        if (context == null) {
            context = new ProvisioningContext(this.agent);
        }
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        ActionManager actionManager = (ActionManager)this.agent.getService(ActionManager.SERVICE_NAME);
        return phaseSet.validate(actionManager, iprofile, operands, context, monitor);
    }

    public IProvisioningPlan createPlan(IProfile profile, ProvisioningContext context) {
        return new ProvisioningPlan(profile, null, context);
    }
}

