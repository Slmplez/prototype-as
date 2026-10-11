/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.util.Collection;
import org.eclipse.equinox.internal.p2.metadata.InstallableUnit;
import org.eclipse.equinox.p2.metadata.IInstallableUnitFragment;
import org.eclipse.equinox.p2.metadata.IRequirement;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstallableUnitFragment
extends InstallableUnit
implements IInstallableUnitFragment {
    private Collection<IRequirement> hostRequirements;

    public void setHost(Collection<IRequirement> hostRequirements) {
        if (hostRequirements == null) {
            return;
        }
        this.hostRequirements = hostRequirements;
    }

    @Override
    public Collection<IRequirement> getHost() {
        return this.hostRequirements;
    }

    @Override
    public Object getMember(String memberName) {
        return "host".equals(memberName) ? this.hostRequirements : super.getMember(memberName);
    }
}

