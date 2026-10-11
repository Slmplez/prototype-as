/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.expression.ExpressionUtil
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 *  org.eclipse.equinox.p2.query.ExpressionMatchQuery
 */
package org.eclipse.equinox.p2.touchpoint.eclipse.query;

import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.query.ExpressionMatchQuery;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class OSGiBundleQuery
extends ExpressionMatchQuery<IInstallableUnit> {
    private static final IMatchExpression<IInstallableUnit> bundleTest = ExpressionUtil.getFactory().matchExpression(ExpressionUtil.parse((String)"providedCapabilities.exists(p | p.namespace == 'osgi.bundle')"), new Object[0]);
    static /* synthetic */ Class class$0;

    public OSGiBundleQuery() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnit");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super((Class)clazz, bundleTest, new Object[0]);
    }

    public static boolean isOSGiBundle(IInstallableUnit iu) {
        return bundleTest.isMatch((Object)iu);
    }
}

