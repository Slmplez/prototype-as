/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.engine;

import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MissingAction
extends ProvisioningAction {
    private String actionId;
    private VersionRange versionRange;

    public MissingAction(String actionId, VersionRange versionRange) {
        this.actionId = actionId;
        this.versionRange = versionRange;
    }

    public String getActionId() {
        return this.actionId;
    }

    public VersionRange getVersionRange() {
        return this.versionRange;
    }

    @Override
    public IStatus execute(Map<String, Object> parameters) {
        throw new IllegalArgumentException(NLS.bind((String)Messages.action_not_found, (Object)new StringBuffer(String.valueOf(this.actionId)).append(this.versionRange == null ? "" : new StringBuffer("/").append(this.versionRange.toString()).toString()).toString()));
    }

    @Override
    public IStatus undo(Map<String, Object> parameters) {
        return Status.OK_STATUS;
    }
}

