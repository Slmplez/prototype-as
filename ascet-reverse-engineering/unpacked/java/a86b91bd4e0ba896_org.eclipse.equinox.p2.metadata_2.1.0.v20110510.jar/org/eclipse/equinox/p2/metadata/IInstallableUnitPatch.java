/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata;

import java.util.List;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.IRequirementChange;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IInstallableUnitPatch
extends IInstallableUnit {
    public IRequirement[][] getApplicabilityScope();

    public List<IRequirementChange> getRequirementsChange();

    public IRequirement getLifeCycle();
}

