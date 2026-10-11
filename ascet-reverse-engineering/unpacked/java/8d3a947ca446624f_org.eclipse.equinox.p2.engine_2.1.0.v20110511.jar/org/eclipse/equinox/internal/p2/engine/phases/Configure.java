/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.engine.phases;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitOperand;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitPhase;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.PhaseSetFactory;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Configure
extends InstallableUnitPhase {
    public Configure(int weight) {
        super(PhaseSetFactory.PHASE_CONFIGURE, weight);
    }

    @Override
    protected boolean isApplicable(InstallableUnitOperand op) {
        return op.second() != null;
    }

    @Override
    protected List<ProvisioningAction> getActions(InstallableUnitOperand currentOperand) {
        IInstallableUnit unit = currentOperand.second();
        if (QueryUtil.isFragment((IInstallableUnit)unit)) {
            return null;
        }
        return this.getActions(unit, this.phaseId);
    }

    @Override
    protected String getProblemMessage() {
        return Messages.Phase_Configure_Error;
    }

    @Override
    protected IStatus initializeOperand(IProfile profile, InstallableUnitOperand operand, Map<String, Object> parameters, IProgressMonitor monitor) {
        IInstallableUnit iu = operand.second();
        monitor.subTask(NLS.bind((String)Messages.Phase_Configure_Task, (Object)iu.getId()));
        parameters.put("iu", iu);
        Collection artifacts = iu.getArtifacts();
        if (artifacts != null && artifacts.size() > 0) {
            parameters.put("artifact", artifacts.iterator().next());
        }
        return Status.OK_STATUS;
    }
}

