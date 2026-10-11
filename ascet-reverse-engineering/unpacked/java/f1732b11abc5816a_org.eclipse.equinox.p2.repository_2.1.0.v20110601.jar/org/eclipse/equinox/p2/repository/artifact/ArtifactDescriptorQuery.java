/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.equinox.p2.metadata.expression.ExpressionUtil
 *  org.eclipse.equinox.p2.metadata.expression.IExpression
 *  org.eclipse.equinox.p2.metadata.expression.IExpressionFactory
 *  org.eclipse.equinox.p2.metadata.expression.IMatchExpression
 *  org.eclipse.equinox.p2.query.ExpressionMatchQuery
 */
package org.eclipse.equinox.p2.repository.artifact;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.metadata.expression.ExpressionUtil;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.eclipse.equinox.p2.metadata.expression.IExpressionFactory;
import org.eclipse.equinox.p2.metadata.expression.IMatchExpression;
import org.eclipse.equinox.p2.query.ExpressionMatchQuery;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class ArtifactDescriptorQuery
extends ExpressionMatchQuery<IArtifactDescriptor> {
    private static final IExpression descriptorMatch = ExpressionUtil.parse((String)"artifactKey.id == $0 && artifactKey.version ~= $1 && ($2.empty || $2.all(x | properties[x.key] == x.value))");
    public static final ArtifactDescriptorQuery ALL_DESCRIPTORS = new ArtifactDescriptorQuery();
    static /* synthetic */ Class class$0;

    private static IMatchExpression<IArtifactDescriptor> createExpression(String id, VersionRange range, String format, Map<String, String> properties) {
        if (range == null) {
            range = VersionRange.emptyRange;
        }
        if (format != null) {
            if (properties == null || properties.isEmpty()) {
                properties = Collections.singletonMap("format", format);
            } else {
                properties = new HashMap<String, String>(properties);
                properties.put("format", format);
            }
        } else if (properties == null) {
            properties = CollectionUtils.emptyMap();
        }
        IExpressionFactory factory = ExpressionUtil.getFactory();
        return factory.matchExpression(descriptorMatch, new Object[]{id, range, properties});
    }

    private ArtifactDescriptorQuery() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super((Class)clazz, ExpressionUtil.TRUE_EXPRESSION, new Object[0]);
    }

    public ArtifactDescriptorQuery(String id, VersionRange versionRange, String format) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz, ArtifactDescriptorQuery.createExpression(id, versionRange, format, null), new Object[0]);
    }

    public ArtifactDescriptorQuery(IArtifactKey key) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz, ArtifactDescriptorQuery.createExpression(key.getId(), new VersionRange(key.getVersion(), true, key.getVersion(), true), null, null), new Object[0]);
    }

    public ArtifactDescriptorQuery(String id, VersionRange versionRange, String format, Map<String, String> properties) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz, ArtifactDescriptorQuery.createExpression(id, versionRange, format, properties), new Object[0]);
    }
}

