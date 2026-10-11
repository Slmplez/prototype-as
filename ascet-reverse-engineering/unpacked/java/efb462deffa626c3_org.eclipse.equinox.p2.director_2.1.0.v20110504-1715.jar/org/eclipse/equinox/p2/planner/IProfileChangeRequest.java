/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.IRequirement
 */
package org.eclipse.equinox.p2.planner;

import java.util.Collection;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IRequirement;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IProfileChangeRequest {
    public void add(IInstallableUnit var1);

    public void addAll(Collection<IInstallableUnit> var1);

    public void remove(IInstallableUnit var1);

    public void removeAll(Collection<IInstallableUnit> var1);

    public void addExtraRequirements(Collection<IRequirement> var1);

    public void setInstallableUnitInclusionRules(IInstallableUnit var1, String var2);

    public void removeInstallableUnitInclusionRules(IInstallableUnit var1);

    public void setProfileProperty(String var1, String var2);

    public void removeProfileProperty(String var1);

    public void setInstallableUnitProfileProperty(IInstallableUnit var1, String var2, String var3);

    public void removeInstallableUnitProfileProperty(IInstallableUnit var1, String var2);

    public Collection<IInstallableUnit> getAdditions();

    public Collection<IInstallableUnit> getRemovals();
}

