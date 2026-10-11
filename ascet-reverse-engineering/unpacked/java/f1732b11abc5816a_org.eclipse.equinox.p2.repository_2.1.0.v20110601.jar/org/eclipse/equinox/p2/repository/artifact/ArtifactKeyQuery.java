/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.metadata.expression.ExpressionUtil
 *  org.eclipse.equinox.p2.metadata.expression.IExpression
 *  org.eclipse.equinox.p2.query.ExpressionMatchQuery
 */
package org.eclipse.equinox.p2.repository.artifact;

import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.query.ExpressionMatchQuery;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class ArtifactKeyQuery
extends ExpressionMatchQuery<IArtifactKey> {
    private static final IExpression matchKey = ExpressionUtil.parse((String)"this == $0");
    private static final IExpression matchID = ExpressionUtil.parse((String)"id == $0");
    private static final IExpression matchIDClassifierRange = ExpressionUtil.parse((String)"id == $0 && version ~= $2 && (null == $1 || classifier == $1)");
    public static final ArtifactKeyQuery ALL_KEYS = new ArtifactKeyQuery();
    static /* synthetic */ Class class$0;

    private static IExpression createMatchExpression(IArtifactKey key) {
        if (key == null) {
            return ExpressionUtil.TRUE_EXPRESSION;
        }
        return ExpressionUtil.getFactory().matchExpression(matchKey, new Object[]{key});
    }

    private static IExpression createMatchExpression(String classifier, String id, VersionRange range) {
        if (range == null) {
            if (classifier == null) {
                if (id == null) {
                    return ExpressionUtil.TRUE_EXPRESSION;
                }
                return ExpressionUtil.getFactory().matchExpression(matchID, new Object[]{id});
            }
            range = VersionRange.emptyRange;
        }
        return ExpressionUtil.getFactory().matchExpression(matchIDClassifierRange, new Object[]{id, classifier, range});
    }

    public ArtifactKeyQuery(String classifier, String id, VersionRange range) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.metadata.IArtifactKey");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz, ArtifactKeyQuery.createMatchExpression(classifier, id, range), new Object[0]);
    }

    private ArtifactKeyQuery() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.metadata.IArtifactKey");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super((Class)clazz, ExpressionUtil.TRUE_EXPRESSION, new Object[0]);
    }

    public ArtifactKeyQuery(IArtifactKey key) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.metadata.IArtifactKey");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz, ArtifactKeyQuery.createMatchExpression(key), new Object[0]);
    }
}

