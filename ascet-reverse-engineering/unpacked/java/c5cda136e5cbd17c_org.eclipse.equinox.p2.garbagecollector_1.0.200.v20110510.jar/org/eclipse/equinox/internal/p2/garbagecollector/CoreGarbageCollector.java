/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.equinox.internal.p2.core.helpers.Tracing
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.QueryUtil
 *  org.eclipse.equinox.p2.repository.IRunnableWithProgress
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 */
package org.eclipse.equinox.internal.p2.garbagecollector;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.equinox.internal.p2.core.helpers.Tracing;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.repository.IRunnableWithProgress;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;

public class CoreGarbageCollector {
    static boolean debugMode = false;
    static /* synthetic */ Class class$0;

    public synchronized void clean(IArtifactKey[] markSet, final IArtifactRepository aRepository) {
        HashSet<IArtifactKey> set = new HashSet<IArtifactKey>(Arrays.asList(markSet));
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.metadata.IArtifactKey");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IQuery query = QueryUtil.createQuery(clazz, (String)"unique($0)", (Object[])new Object[]{set});
        final IQueryResult inactive = aRepository.query(query, null);
        aRepository.executeBatch(new IRunnableWithProgress(){

            public void run(IProgressMonitor monitor) {
                Iterator iterator = inactive.iterator();
                while (iterator.hasNext()) {
                    IArtifactKey key = (IArtifactKey)iterator.next();
                    aRepository.removeDescriptor(key);
                    if (!debugMode) continue;
                    Tracing.debug((String)("Key removed:" + key));
                }
            }
        }, (IProgressMonitor)new NullProgressMonitor());
    }

    public static void setDebugMode(boolean inDebugMode) {
        debugMode = inDebugMode;
    }
}

