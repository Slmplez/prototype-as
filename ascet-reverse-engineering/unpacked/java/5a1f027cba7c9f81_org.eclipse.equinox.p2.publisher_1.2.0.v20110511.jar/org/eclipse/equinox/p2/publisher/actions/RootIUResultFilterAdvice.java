/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 */
package org.eclipse.equinox.p2.publisher.actions;

import java.util.Arrays;
import java.util.Collection;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.publisher.AbstractAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.actions.IRootIUAdvice;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RootIUResultFilterAdvice
extends AbstractAdvice
implements IRootIUAdvice {
    private IQuery<IInstallableUnit> query;
    static /* synthetic */ Class class$0;

    public RootIUResultFilterAdvice(IQuery<IInstallableUnit> query) {
        this.query = query;
    }

    public Collection<IInstallableUnit> getChildren(IPublisherResult result) {
        Collection<IInstallableUnit> value = result.getIUs(null, "root");
        if (this.query == null) {
            return value;
        }
        IQueryResult iQueryResult = this.query.perform(value.iterator());
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnit");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return Arrays.asList((IInstallableUnit[])iQueryResult.toArray((Class)clazz));
    }
}

