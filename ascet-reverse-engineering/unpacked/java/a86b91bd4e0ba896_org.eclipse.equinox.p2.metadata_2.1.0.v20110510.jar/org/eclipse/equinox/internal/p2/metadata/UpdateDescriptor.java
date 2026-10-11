/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.net.URI;
import java.util.Collection;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IUpdateDescriptor;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class UpdateDescriptor
implements IUpdateDescriptor {
    private Collection<IMatchExpression<IInstallableUnit>> descriptors;
    private String description;
    private int severity;
    private URI location;

    public UpdateDescriptor(Collection<IMatchExpression<IInstallableUnit>> descriptors, int severity, String description, URI location) {
        this.descriptors = descriptors;
        this.severity = severity;
        this.description = description;
        this.location = location;
    }

    @Override
    public String getDescription() {
        return this.description;
    }

    @Override
    public int getSeverity() {
        return this.severity;
    }

    @Override
    public boolean isUpdateOf(IInstallableUnit iu) {
        return this.descriptors.iterator().next().isMatch(iu);
    }

    @Override
    public Collection<IMatchExpression<IInstallableUnit>> getIUsBeingUpdated() {
        return this.descriptors;
    }

    @Override
    public URI getLocation() {
        return this.location;
    }
}

