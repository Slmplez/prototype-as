/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 */
package org.eclipse.equinox.internal.p2.engine;

import java.util.EventObject;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.spi.Touchpoint;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;

public class InstallableUnitEvent
extends EventObject {
    public static final int UNINSTALL = 0;
    public static final int INSTALL = 1;
    private static final long serialVersionUID = 3318712818811459886L;
    private String phaseId;
    private boolean prePhase;
    private IProfile profile;
    private IInstallableUnit iu;
    private Touchpoint touchpoint;
    private IStatus result;
    private int type;

    public InstallableUnitEvent(String phaseId, boolean prePhase, IProfile profile, IInstallableUnit iu, int type, Touchpoint touchpoint) {
        this(phaseId, prePhase, profile, iu, type, touchpoint, null);
    }

    public InstallableUnitEvent(String phaseId, boolean prePhase, IProfile profile, IInstallableUnit iu, int type, Touchpoint touchpoint, IStatus result) {
        super(profile);
        this.phaseId = phaseId;
        this.prePhase = prePhase;
        this.profile = profile;
        this.iu = iu;
        if (type != 0 && type != 1) {
            throw new IllegalArgumentException(Messages.InstallableUnitEvent_type_not_install_or_uninstall);
        }
        this.type = type;
        this.result = result;
        this.touchpoint = touchpoint;
    }

    public Touchpoint getTouchpoint() {
        return this.touchpoint;
    }

    public IProfile getProfile() {
        return this.profile;
    }

    public IInstallableUnit getInstallableUnit() {
        return this.iu;
    }

    public String getPhase() {
        return this.phaseId;
    }

    public boolean isPre() {
        return this.prePhase;
    }

    public boolean isPost() {
        return !this.prePhase;
    }

    public IStatus getResult() {
        return this.result != null ? this.result : Status.OK_STATUS;
    }

    public boolean isInstall() {
        return this.type == 1;
    }

    public boolean isUninstall() {
        return this.type == 0;
    }
}

