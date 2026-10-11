/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata;

import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IRequirement {
    public int getMin();

    public int getMax();

    public IMatchExpression<IInstallableUnit> getFilter();

    public IMatchExpression<IInstallableUnit> getMatches();

    public boolean isMatch(IInstallableUnit var1);

    public boolean isGreedy();

    public String getDescription();
}

