/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata;

import java.net.URI;
import java.util.Collection;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IUpdateDescriptor {
    public static final int NORMAL = 0;
    public static final int HIGH = 1;

    public Collection<IMatchExpression<IInstallableUnit>> getIUsBeingUpdated();

    public String getDescription();

    public URI getLocation();

    public int getSeverity();

    public boolean isUpdateOf(IInstallableUnit var1);
}

