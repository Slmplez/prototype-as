/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata.query;

import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.IInstallableUnitPatch;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionParser;
import org.eclipse.equinox.p2.query.ExpressionMatchQuery;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class UpdateQuery
extends ExpressionMatchQuery<IInstallableUnit> {
    private static final IExpression expr1;
    private static final IExpression expr2;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        IExpressionParser parser = ExpressionUtil.getParser();
        expr1 = parser.parse("$0 ~= updateDescriptor && ($0.id != id || $0.version < version)");
        expr2 = parser.parse("this ~= class('org.eclipse.equinox.p2.metadata.IInstallableUnitPatch')? $0 ~= lifeCycle: $0 ~= updateDescriptor && ($0.id != id || $0.version < version)");
    }

    public UpdateQuery(IInstallableUnit updateFrom) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnit");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IExpression iExpression = updateFrom instanceof IInstallableUnitPatch ? expr1 : expr2;
        Object[] objectArray = new Object[2];
        objectArray[0] = updateFrom;
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnitPatch");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        objectArray[1] = clazz2;
        super(clazz, iExpression, objectArray);
    }
}

