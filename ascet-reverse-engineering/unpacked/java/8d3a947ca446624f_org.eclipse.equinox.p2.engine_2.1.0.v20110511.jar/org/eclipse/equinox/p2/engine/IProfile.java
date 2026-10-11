/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.query.IQuery
 *  org.eclipse.equinox.p2.query.IQueryResult
 *  org.eclipse.equinox.p2.query.IQueryable
 */
package org.eclipse.equinox.p2.engine;

import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.query.IQuery;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.IQueryable;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IProfile
extends IQueryable<IInstallableUnit> {
    public static final int LOCK_NONE = 0;
    public static final int LOCK_UNINSTALL = 1;
    public static final int LOCK_UPDATE = 2;
    public static final String PROP_PROFILE_LOCKED_IU = "org.eclipse.equinox.p2.type.lock";
    public static final String PROP_PROFILE_ROOT_IU = "org.eclipse.equinox.p2.type.root";
    public static final String PROP_INSTALL_FOLDER = "org.eclipse.equinox.p2.installFolder";
    public static final String PROP_CONFIGURATION_FOLDER = "org.eclipse.equinox.p2.configurationFolder";
    public static final String PROP_LAUNCHER_CONFIGURATION = "org.eclipse.equinox.p2.launcherConfiguration";
    public static final String PROP_NL = "org.eclipse.equinox.p2.nl";
    public static final String PROP_DESCRIPTION = "org.eclipse.equinox.p2.description";
    public static final String PROP_NAME = "org.eclipse.equinox.p2.name";
    public static final String PROP_ENVIRONMENTS = "org.eclipse.equinox.p2.environments";
    public static final String PROP_ROAMING = "org.eclipse.equinox.p2.roaming";
    public static final String PROP_CACHE = "org.eclipse.equinox.p2.cache";
    public static final String PROP_SHARED_CACHE = "org.eclipse.equinox.p2.cache.shared";
    public static final String PROP_INSTALL_FEATURES = "org.eclipse.update.install.features";
    public static final String STATE_PROP_HIDDEN = "org.eclipse.equinox.p2.state.hidden";
    public static final String STATE_PROP_TAG = "org.eclipse.equinox.p2.state.tag";

    public IProvisioningAgent getProvisioningAgent();

    public String getProfileId();

    public String getProperty(String var1);

    public String getInstallableUnitProperty(IInstallableUnit var1, String var2);

    public Map<String, String> getProperties();

    public Map<String, String> getInstallableUnitProperties(IInstallableUnit var1);

    public long getTimestamp();

    public IQueryResult<IInstallableUnit> available(IQuery<IInstallableUnit> var1, IProgressMonitor var2);
}

