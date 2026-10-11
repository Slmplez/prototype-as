/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.expression.ExpressionUtil
 *  org.eclipse.equinox.p2.metadata.expression.IExpression
 *  org.eclipse.equinox.p2.metadata.expression.IExpressionFactory
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 *  org.eclipse.equinox.p2.query.ExpressionMatchQuery
 */
package org.eclipse.equinox.p2.engine.query;

import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.query.ExpressionMatchQuery;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IUProfilePropertyQuery
extends ExpressionMatchQuery<IInstallableUnit> {
    public static final String ANY = "*";
    private static final IExpression matchValue = ExpressionUtil.parse((String)"profileProperties[$0] == $1");
    private static final IExpression matchAny = ExpressionUtil.parse((String)"profileProperties[$0] != null");
    static /* synthetic */ Class class$0;

    private static IMatchExpression<IInstallableUnit> createMatch(String propertyName, String propertyValue) {
        IExpressionFactory factory = ExpressionUtil.getFactory();
        return ANY.equals(propertyValue) ? factory.matchExpression(matchAny, new Object[]{propertyName}) : factory.matchExpression(matchValue, new Object[]{propertyName, propertyValue});
    }

    public IUProfilePropertyQuery(String propertyName, String propertyValue) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.metadata.IInstallableUnit");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz, IUProfilePropertyQuery.createMatch(propertyName, propertyValue), new Object[0]);
    }
}

