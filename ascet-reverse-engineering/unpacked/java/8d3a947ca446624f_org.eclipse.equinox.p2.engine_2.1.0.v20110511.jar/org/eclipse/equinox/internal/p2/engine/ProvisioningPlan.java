/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.query.Collector
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 */
package org.eclipse.equinox.internal.p2.engine;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitOperand;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitPropertyOperand;
import org.eclipse.equinox.internal.p2.engine.Operand;
import org.eclipse.equinox.internal.p2.engine.PropertyOperand;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProvisioningPlan;
import org.eclipse.equinox.p2.engine.ProvisioningContext;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.query.Collector;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProvisioningPlan
implements IProvisioningPlan {
    final IProfile profile;
    final List<Operand> operands = new ArrayList<Operand>();
    final ProvisioningContext context;
    IStatus status;
    private IProvisioningPlan installerPlan;

    public ProvisioningPlan(IProfile profile, Operand[] operands, ProvisioningContext context) {
        this(Status.OK_STATUS, profile, operands, context, null);
    }

    public ProvisioningPlan(IStatus status, IProfile profile, ProvisioningContext context, IProvisioningPlan installerPlan) {
        this(status, profile, null, context, installerPlan);
    }

    public ProvisioningPlan(IStatus status, IProfile profile, Operand[] operands, ProvisioningContext context, IProvisioningPlan installerPlan) {
        Assert.isNotNull((Object)profile);
        this.status = status;
        this.profile = profile;
        if (operands != null) {
            this.operands.addAll(Arrays.asList(operands));
        }
        this.context = context == null ? new ProvisioningContext(profile.getProvisioningAgent()) : context;
        this.installerPlan = installerPlan;
    }

    @Override
    public IStatus getStatus() {
        return this.status;
    }

    @Override
    public void setStatus(IStatus status) {
        this.status = status;
    }

    @Override
    public IProfile getProfile() {
        return this.profile;
    }

    public Operand[] getOperands() {
        return this.operands.toArray(new Operand[this.operands.size()]);
    }

    @Override
    public IQueryable<IInstallableUnit> getRemovals() {
        return new QueryablePlan(false);
    }

    @Override
    public IQueryable<IInstallableUnit> getAdditions() {
        return new QueryablePlan(true);
    }

    @Override
    public IProvisioningPlan getInstallerPlan() {
        return this.installerPlan;
    }

    @Override
    public ProvisioningContext getContext() {
        return this.context;
    }

    @Override
    public void setInstallerPlan(IProvisioningPlan p) {
        this.installerPlan = p;
    }

    @Override
    public void addInstallableUnit(IInstallableUnit iu) {
        this.operands.add(new InstallableUnitOperand(null, iu));
    }

    @Override
    public void removeInstallableUnit(IInstallableUnit iu) {
        this.operands.add(new InstallableUnitOperand(iu, null));
    }

    @Override
    public void updateInstallableUnit(IInstallableUnit iu1, IInstallableUnit iu2) {
        this.operands.add(new InstallableUnitOperand(iu1, iu2));
    }

    @Override
    public void setProfileProperty(String name, String value) {
        String currentValue = this.profile.getProperty(name);
        if (value == null && currentValue == null) {
            return;
        }
        this.operands.add(new PropertyOperand(name, currentValue, value));
    }

    @Override
    public void setInstallableUnitProfileProperty(IInstallableUnit iu, String name, String value) {
        String currentValue = this.profile.getInstallableUnitProperty(iu, name);
        if (value == null && currentValue == null) {
            return;
        }
        this.operands.add(new InstallableUnitPropertyOperand(iu, name, currentValue, value));
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class QueryablePlan
    implements IQueryable<IInstallableUnit> {
        private boolean addition;

        public QueryablePlan(boolean add) {
            this.addition = add;
        }

        public IQueryResult<IInstallableUnit> query(IQuery<IInstallableUnit> query, IProgressMonitor monitor) {
            if (ProvisioningPlan.this.operands == null || ProvisioningPlan.this.status.getSeverity() == 4) {
                return Collector.emptyCollector();
            }
            ArrayList<IInstallableUnit> list = new ArrayList<IInstallableUnit>();
            for (Operand operand : ProvisioningPlan.this.operands) {
                IInstallableUnit iu;
                if (!(operand instanceof InstallableUnitOperand)) continue;
                InstallableUnitOperand op = (InstallableUnitOperand)operand;
                IInstallableUnit iInstallableUnit = iu = this.addition ? op.second() : op.first();
                if (iu == null) continue;
                list.add(iu);
            }
            return query.perform(list.iterator());
        }
    }
}

