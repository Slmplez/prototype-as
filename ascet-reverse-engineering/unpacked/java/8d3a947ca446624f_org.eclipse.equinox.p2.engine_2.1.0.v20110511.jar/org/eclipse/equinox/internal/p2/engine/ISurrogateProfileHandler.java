/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 */
package org.eclipse.equinox.internal.p2.engine;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ISurrogateProfileHandler {
    public IProfile createProfile(String var1);

    public boolean isSurrogate(IProfile var1);

    public IQueryResult<IInstallableUnit> queryProfile(IProfile var1, IQuery<IInstallableUnit> var2, IProgressMonitor var3);

    public boolean updateProfile(IProfile var1);
}

