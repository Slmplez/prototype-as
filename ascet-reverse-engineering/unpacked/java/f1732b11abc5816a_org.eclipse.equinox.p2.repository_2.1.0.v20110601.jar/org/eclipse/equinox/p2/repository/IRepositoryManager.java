/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.query.IQueryable
 */
package org.eclipse.equinox.p2.repository;

import java.net.URI;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.query.IQueryable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IRepositoryManager<T>
extends IQueryable<T> {
    public static final int REPOSITORIES_ALL = 0;
    public static final int REPOSITORIES_SYSTEM = 1;
    public static final int REPOSITORIES_NON_SYSTEM = 2;
    public static final int REPOSITORIES_LOCAL = 4;
    public static final int REPOSITORIES_NON_LOCAL = 16;
    public static final int REPOSITORIES_DISABLED = 8;
    public static final int REPOSITORY_HINT_MODIFIABLE = 1;

    public void addRepository(URI var1);

    public boolean contains(URI var1);

    public IProvisioningAgent getAgent();

    public URI[] getKnownRepositories(int var1);

    public String getRepositoryProperty(URI var1, String var2);

    public void setRepositoryProperty(URI var1, String var2, String var3);

    public boolean isEnabled(URI var1);

    public boolean removeRepository(URI var1);

    public void setEnabled(URI var1, boolean var2);
}

