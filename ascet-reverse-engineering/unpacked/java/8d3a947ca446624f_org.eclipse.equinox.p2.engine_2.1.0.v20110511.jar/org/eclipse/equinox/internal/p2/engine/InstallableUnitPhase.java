/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.ITouchpointData
 *  org.eclipse.equinox.p2.metadata.ITouchpointInstruction
 */
package org.eclipse.equinox.internal.p2.engine;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitOperand;
import org.eclipse.equinox.internal.p2.engine.InstructionParser;
import org.eclipse.equinox.internal.p2.engine.Operand;
import org.eclipse.equinox.internal.p2.engine.Phase;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.engine.spi.Touchpoint;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.ITouchpointData;
import org.eclipse.equinox.p2.metadata.ITouchpointInstruction;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class InstallableUnitPhase
extends Phase {
    public static final String PARM_ARTIFACT = "artifact";
    public static final String PARM_IU = "iu";
    public static final String PARM_INSTALL_FOLDER = "installFolder";

    protected InstallableUnitPhase(String phaseId, int weight, boolean forced) {
        super(phaseId, weight, forced);
    }

    protected InstallableUnitPhase(String phaseId, int weight) {
        this(phaseId, weight, false);
    }

    @Override
    protected IStatus initializePhase(IProgressMonitor monitor, IProfile profile, Map<String, Object> parameters) {
        parameters.put(PARM_INSTALL_FOLDER, profile.getProperty("org.eclipse.equinox.p2.installFolder"));
        return super.initializePhase(monitor, profile, parameters);
    }

    @Override
    protected IStatus initializeOperand(IProfile profile, Operand operand, Map<String, Object> parameters, IProgressMonitor monitor) {
        Touchpoint touchpoint;
        InstallableUnitOperand iuOperand = (InstallableUnitOperand)operand;
        MultiStatus status = new MultiStatus("org.eclipse.equinox.p2.engine", 0, null, null);
        InstallableUnitPhase.mergeStatus(status, this.initializeOperand(profile, iuOperand, parameters, monitor));
        IInstallableUnit unit = (IInstallableUnit)parameters.get(PARM_IU);
        if (unit != null && (touchpoint = this.getActionManager().getTouchpointPoint(unit.getTouchpointType())) != null) {
            parameters.put("touchpoint", touchpoint);
        }
        InstallableUnitPhase.mergeStatus(status, super.initializeOperand(profile, operand, parameters, monitor));
        return status;
    }

    protected IStatus initializeOperand(IProfile profile, InstallableUnitOperand operand, Map<String, Object> parameters, IProgressMonitor monitor) {
        return Status.OK_STATUS;
    }

    @Override
    protected IStatus completeOperand(IProfile profile, Operand operand, Map<String, Object> parameters, IProgressMonitor monitor) {
        InstallableUnitOperand iuOperand = (InstallableUnitOperand)operand;
        MultiStatus status = new MultiStatus("org.eclipse.equinox.p2.engine", 0, null, null);
        InstallableUnitPhase.mergeStatus(status, super.completeOperand(profile, iuOperand, parameters, monitor));
        InstallableUnitPhase.mergeStatus(status, this.completeOperand(profile, iuOperand, parameters, monitor));
        return status;
    }

    protected IStatus completeOperand(IProfile profile, InstallableUnitOperand operand, Map<String, Object> parameters, IProgressMonitor monitor) {
        return Status.OK_STATUS;
    }

    @Override
    protected final List<ProvisioningAction> getActions(Operand operand) {
        if (!(operand instanceof InstallableUnitOperand)) {
            return null;
        }
        InstallableUnitOperand iuOperand = (InstallableUnitOperand)operand;
        return this.getActions(iuOperand);
    }

    protected abstract List<ProvisioningAction> getActions(InstallableUnitOperand var1);

    @Override
    public final boolean isApplicable(Operand operand) {
        if (!(operand instanceof InstallableUnitOperand)) {
            return false;
        }
        InstallableUnitOperand iuOperand = (InstallableUnitOperand)operand;
        return this.isApplicable(iuOperand);
    }

    protected boolean isApplicable(InstallableUnitOperand operand) {
        return true;
    }

    protected final List<ProvisioningAction> getActions(IInstallableUnit unit, String key) {
        List<ITouchpointInstruction> instructions = InstallableUnitPhase.getInstructions(unit, key);
        int instrSize = instructions.size();
        if (instrSize == 0) {
            return null;
        }
        ArrayList<ProvisioningAction> actions = new ArrayList<ProvisioningAction>();
        InstructionParser instructionParser = new InstructionParser(this.getActionManager());
        int i = 0;
        while (i < instrSize) {
            actions.addAll(instructionParser.parseActions(instructions.get(i), unit.getTouchpointType()));
            ++i;
        }
        return actions;
    }

    private static final List<ITouchpointInstruction> getInstructions(IInstallableUnit unit, String key) {
        Collection data = unit.getTouchpointData();
        int dataSize = data.size();
        if (dataSize == 0) {
            return CollectionUtils.emptyList();
        }
        ArrayList<ITouchpointInstruction> matches = new ArrayList<ITouchpointInstruction>(dataSize);
        for (ITouchpointData td : data) {
            ITouchpointInstruction instructions = td.getInstruction(key);
            if (instructions == null) continue;
            matches.add(instructions);
        }
        return matches;
    }
}

