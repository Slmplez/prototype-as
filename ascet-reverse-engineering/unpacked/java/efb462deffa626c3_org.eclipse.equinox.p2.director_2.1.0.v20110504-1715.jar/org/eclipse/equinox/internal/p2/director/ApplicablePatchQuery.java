/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.expression.ExpressionUtil
 *  org.eclipse.equinox.p2.metadata.expression.IExpression
 *  org.eclipse.equinox.p2.query.ExpressionMatchQuery
 */
package org.eclipse.equinox.internal.p2.director;

import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.query.ExpressionMatchQuery;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ApplicablePatchQuery
extends ExpressionMatchQuery<IInstallableUnit> {
    private static final IExpression applicablePatches = ExpressionUtil.parse((String)"applicabilityScope.empty || applicabilityScope.exists(rqArr | rqArr.all(rq | $0 ~= rq))");
    static /* synthetic */ Class class$0;

    public ApplicablePatchQuery(IInstallableUnit iu) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnitPatch");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz, applicablePatches, new Object[]{iu});
    }
}

