/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.util.Collection;
import java.util.List;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.metadata.InstallableUnit;
import org.eclipse.equinox.p2.metadata.IInstallableUnitPatch;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.IRequirementChange;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstallableUnitPatch
extends InstallableUnit
implements IInstallableUnitPatch {
    public static final String MEMBER_APPLICABILITY_SCOPE = "applicabilityScope";
    public static final String MEMBER_LIFECYCLE = "lifeCycle";
    public static final String MEMBER_REQUIREMENTS_CHANGE = "requirementsChange";
    private IRequirementChange[] changes;
    private IRequirement lifeCycle;
    private IRequirement[][] scope;

    private void addRequiredCapability(IRequirement[] toAdd) {
        Collection current = super.getRequirements();
        int currSize = current.size();
        IRequirement[] result = new IRequirement[currSize + toAdd.length];
        int i = 0;
        while (i < currSize) {
            result[i] = (IRequirement)current.get(i);
            ++i;
        }
        System.arraycopy(toAdd, 0, result, current.size(), toAdd.length);
        this.setRequiredCapabilities(result);
    }

    @Override
    public IRequirement[][] getApplicabilityScope() {
        return this.scope;
    }

    @Override
    public IRequirement getLifeCycle() {
        return this.lifeCycle;
    }

    @Override
    public List<IRequirementChange> getRequirementsChange() {
        return CollectionUtils.unmodifiableList((Object[])this.changes);
    }

    public void setApplicabilityScope(IRequirement[][] applyTo) {
        this.scope = applyTo;
    }

    public void setLifeCycle(IRequirement lifeCycle) {
        if (lifeCycle == null) {
            return;
        }
        this.lifeCycle = lifeCycle;
        this.addRequiredCapability(new IRequirement[]{lifeCycle});
    }

    public void setRequirementsChange(IRequirementChange[] changes) {
        this.changes = changes;
    }

    @Override
    public Object getMember(String memberName) {
        if (MEMBER_APPLICABILITY_SCOPE == memberName) {
            return this.scope;
        }
        if (MEMBER_LIFECYCLE == memberName) {
            return this.lifeCycle;
        }
        if (MEMBER_REQUIREMENTS_CHANGE == memberName) {
            return this.changes;
        }
        return super.getMember(memberName);
    }
}

