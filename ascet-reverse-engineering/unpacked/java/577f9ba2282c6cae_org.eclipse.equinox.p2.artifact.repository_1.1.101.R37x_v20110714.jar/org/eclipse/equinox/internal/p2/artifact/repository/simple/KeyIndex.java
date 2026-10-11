/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.eclipse.equinox.internal.p2.metadata.index.Index
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.expression.IEvaluationContext
 *  org.eclipse.equinox.p2.metadata.expression.IExpression
 */
package org.eclipse.equinox.internal.p2.artifact.repository.simple;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.internal.p2.metadata.index.Index;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.expression.IEvaluationContext;
import org.eclipse.equinox.p2.metadata.expression.IExpression;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class KeyIndex
extends Index<IArtifactKey> {
    private final Map<String, Object> artifactMap;

    public KeyIndex(Collection<IArtifactKey> artifactKeys) {
        this.artifactMap = new HashMap<String, Object>(artifactKeys.size());
        for (IArtifactKey ak : artifactKeys) {
            Object prev = this.artifactMap.put(ak.getId(), ak);
            if (prev == null) continue;
            if (prev instanceof IArtifactKey) {
                this.artifactMap.put(ak.getId(), new IArtifactKey[]{(IArtifactKey)prev, ak});
                continue;
            }
            IArtifactKey[] prevArr = (IArtifactKey[])prev;
            IArtifactKey[] nxtArr = new IArtifactKey[prevArr.length + 1];
            System.arraycopy(prevArr, 0, nxtArr, 0, prevArr.length);
            nxtArr[prevArr.length] = ak;
            this.artifactMap.put(ak.getId(), nxtArr);
        }
    }

    public Iterator<IArtifactKey> getCandidates(IEvaluationContext ctx, IExpression variable, IExpression booleanExpr) {
        Object queriedKeys = this.getQueriedIDs(ctx, variable, "id", booleanExpr, null);
        if (queriedKeys == null) {
            return null;
        }
        Collection<Object> collector = null;
        if (queriedKeys.getClass().isArray()) {
            Object[] keyArr = (Object[])queriedKeys;
            int idx = keyArr.length;
            while (--idx >= 0) {
                IArtifactKey[] akArr;
                Object v = this.artifactMap.get(keyArr[idx]);
                if (v == null) continue;
                if (collector == null) {
                    collector = new ArrayList();
                }
                if (v instanceof IArtifactKey) {
                    collector.add((IArtifactKey)v);
                    continue;
                }
                IArtifactKey[] iArtifactKeyArray = akArr = (IArtifactKey[])v;
                int n = akArr.length;
                int n2 = 0;
                while (n2 < n) {
                    IArtifactKey ak = iArtifactKeyArray[n2];
                    collector.add(ak);
                    ++n2;
                }
            }
            if (collector == null) {
                collector = CollectionUtils.emptySet();
            }
        } else {
            Object v = this.artifactMap.get(queriedKeys);
            collector = v == null ? CollectionUtils.emptySet() : (v instanceof IArtifactKey ? Collections.singleton((IArtifactKey)v) : CollectionUtils.unmodifiableList((Object[])((IArtifactKey[])v)));
        }
        return collector.iterator();
    }
}

