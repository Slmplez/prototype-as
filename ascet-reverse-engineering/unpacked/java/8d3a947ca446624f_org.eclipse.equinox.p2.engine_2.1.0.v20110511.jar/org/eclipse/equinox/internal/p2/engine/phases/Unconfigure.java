/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.query.QueryUtil
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

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Unconfigure
extends InstallableUnitPhase {
    public Unconfigure(int weight, boolean forced) {
        super(PhaseSetFactory.PHASE_UNCONFIGURE, weight, forced);
    }

    public Unconfigure(int weight) {
        this(weight, false);
    }

    @Override
    protected boolean isApplicable(InstallableUnitOperand op) {
        return op.first() != null;
    }

    @Override
    protected List<ProvisioningAction> getActions(InstallableUnitOperand currentOperand) {
        IInstallableUnit unit = currentOperand.first();
        if (QueryUtil.isFragment((IInstallableUnit)unit)) {
            return null;
        }
        return this.getActions(unit, this.phaseId);
    }

    @Override
    protected String getProblemMessage() {
        return Messages.Phase_Unconfigure_Error;
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
}

