/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.spi.ProvisioningAction
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions;

import java.io.File;
import java.util.Collection;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.Util;
import org.eclipse.equinox.internal.p2.touchpoint.eclipse.actions.Messages;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MarkStartedAction
extends ProvisioningAction {
    public static final String ID = "markStarted";

    public IStatus execute(Map<String, Object> parameters) {
        IProvisioningAgent agent = (IProvisioningAgent)parameters.get("agent");
        IProfile profile = (IProfile)parameters.get("profile");
        Manipulator manipulator = (Manipulator)parameters.get("manipulator");
        IInstallableUnit iu = (IInstallableUnit)parameters.get("iu");
        String started = (String)parameters.get("started");
        if (started == null) {
            return Util.createError(NLS.bind((String)Messages.parameter_not_set, (Object)"started", (Object)ID));
        }
        Collection artifacts = iu.getArtifacts();
        if (artifacts == null || artifacts.isEmpty()) {
            return Util.createError(NLS.bind((String)Messages.iu_contains_no_arifacts, (Object)iu));
        }
        IArtifactKey artifactKey = (IArtifactKey)artifacts.iterator().next();
        File bundleFile = Util.getArtifactFile(agent, artifactKey, profile);
        BundleInfo bundleInfo = Util.createBundleInfo(bundleFile, iu);
        if (bundleInfo == null) {
            return Util.createError(NLS.bind((String)Messages.failed_bundleinfo, (Object)iu));
        }
        if (bundleInfo.getFragmentHost() != null) {
            return Status.OK_STATUS;
        }
        BundleInfo[] bundles = manipulator.getConfigData().getBundles();
        int i = 0;
        while (i < bundles.length) {
            if (bundles[i].equals((Object)bundleInfo)) {
                this.getMemento().put("previousStarted", (Object)new Boolean(bundles[i].isMarkedAsStarted()));
                bundles[i].setMarkedAsStarted(Boolean.valueOf(started).booleanValue());
                break;
            }
            ++i;
        }
        return Status.OK_STATUS;
    }

    public IStatus undo(Map<String, Object> parameters) {
        IProvisioningAgent agent = (IProvisioningAgent)parameters.get("agent");
        Boolean previousStarted = (Boolean)this.getMemento().get("previousStarted");
        if (previousStarted == null) {
            return Status.OK_STATUS;
        }
        IProfile profile = (IProfile)parameters.get("profile");
        Manipulator manipulator = (Manipulator)parameters.get("manipulator");
        IInstallableUnit iu = (IInstallableUnit)parameters.get("iu");
        Collection artifacts = iu.getArtifacts();
        if (artifacts == null || artifacts.isEmpty()) {
            return Util.createError(NLS.bind((String)Messages.iu_contains_no_arifacts, (Object)iu));
        }
        IArtifactKey artifactKey = (IArtifactKey)artifacts.iterator().next();
        File bundleFile = Util.getArtifactFile(agent, artifactKey, profile);
        BundleInfo bundleInfo = Util.createBundleInfo(bundleFile, iu);
        if (bundleInfo == null) {
            return Util.createError(NLS.bind((String)Messages.failed_bundleinfo, (Object)iu));
        }
        BundleInfo[] bundles = manipulator.getConfigData().getBundles();
        int i = 0;
        while (i < bundles.length) {
            if (bundles[i].equals((Object)bundleInfo)) {
                bundles[i].setMarkedAsStarted(previousStarted.booleanValue());
                break;
            }
            ++i;
        }
        return Status.OK_STATUS;
    }
}

