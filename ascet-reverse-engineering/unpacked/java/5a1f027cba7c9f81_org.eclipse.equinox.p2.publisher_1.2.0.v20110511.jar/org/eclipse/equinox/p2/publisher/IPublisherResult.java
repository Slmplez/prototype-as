/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.query.IQueryable
 */
package org.eclipse.equinox.p2.publisher;

import java.util.Collection;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.query.IQueryable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IPublisherResult
extends IQueryable<IInstallableUnit> {
    public static final int MERGE_MATCHING = 0;
    public static final int MERGE_ALL_ROOT = 1;
    public static final int MERGE_ALL_NON_ROOT = 2;
    public static final String ROOT = "root";
    public static final String NON_ROOT = "non_root";

    public void addIU(IInstallableUnit var1, String var2);

    public void addIUs(Collection<IInstallableUnit> var1, String var2);

    public Collection<IInstallableUnit> getIUs(String var1, String var2);

    public IInstallableUnit getIU(String var1, String var2);

    public IInstallableUnit getIU(String var1, Version var2, String var3);

    public void merge(IPublisherResult var1, int var2);
}

