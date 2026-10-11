/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 */
package org.eclipse.equinox.p2.publisher.actions;

import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IFilterAdvice
extends IPublisherAdvice {
    public IMatchExpression<IInstallableUnit> getFilter(String var1, Version var2, boolean var3);
}

