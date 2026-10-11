/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.query.IQueryable
 */
package org.eclipse.equinox.p2.repository;

import java.net.URI;
import java.util.Map;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.query.IQueryable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IRepository<T>
extends IAdaptable,
IQueryable<T> {
    public static final String PROP_SYSTEM = "p2.system";
    public static final String PROP_COMPRESSED = "p2.compressed";
    public static final String PROP_NAME = "name";
    public static final String PROP_NICKNAME = "p2.nickname";
    public static final String PROP_DESCRIPTION = "description";
    public static final String PROP_MIRRORS_BASE_URL = "p2.mirrorsBaseURL";
    public static final String PROP_MIRRORS_URL = "p2.mirrorsURL";
    public static final String PROP_TIMESTAMP = "p2.timestamp";
    public static final String PROP_USERNAME = "username";
    public static final String PROP_PASSWORD = "password";
    public static final String PREFERENCE_NODE = "org.eclipse.equinox.p2.repository";
    public static final int TYPE_METADATA = 0;
    public static final int TYPE_ARTIFACT = 1;
    public static final int NONE = 0;
    public static final int ENABLED = 1;

    public URI getLocation();

    public String getName();

    public String getType();

    public String getVersion();

    public String getDescription();

    public String getProvider();

    public Map<String, String> getProperties();

    public String getProperty(String var1);

    public IProvisioningAgent getProvisioningAgent();

    public boolean isModifiable();

    public String setProperty(String var1, String var2);

    public String setProperty(String var1, String var2, IProgressMonitor var3);
}

