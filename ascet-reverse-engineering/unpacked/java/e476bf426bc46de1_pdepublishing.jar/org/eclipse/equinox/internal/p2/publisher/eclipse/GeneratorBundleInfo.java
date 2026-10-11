/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 */
package org.eclipse.equinox.internal.p2.publisher.eclipse;

import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;

public class GeneratorBundleInfo
extends BundleInfo {
    private IInstallableUnit iu = null;
    private String specialConfigCommands;
    private String specialUnconfigCommands;

    public GeneratorBundleInfo(BundleInfo bInfo) {
        super.setBundleId(bInfo.getBundleId());
        super.setLocation(bInfo.getLocation());
        super.setManifest(bInfo.getManifest());
        super.setMarkedAsStarted(bInfo.isMarkedAsStarted());
        super.setResolved(bInfo.isResolved());
        super.setStartLevel(bInfo.getStartLevel());
        super.setSymbolicName(bInfo.getSymbolicName());
        super.setVersion(bInfo.getVersion());
    }

    public GeneratorBundleInfo() {
    }

    public String getSpecialConfigCommands() {
        return this.specialConfigCommands;
    }

    public void setSpecialConfigCommands(String specialConfigCommands) {
        this.specialConfigCommands = specialConfigCommands;
    }

    public void setIU(IInstallableUnit iu) {
        this.iu = iu;
    }

    public IInstallableUnit getIU() {
        return this.iu;
    }

    public String getSpecialUnconfigCommands() {
        return this.specialUnconfigCommands;
    }

    public void setSpecialUnconfigCommands(String specialUnconfigCommands) {
        this.specialUnconfigCommands = specialUnconfigCommands;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        String superSt = super.toString();
        if (superSt.length() > 0) {
            buffer.append(superSt.substring(0, superSt.length() - 1));
        }
        buffer.append(", this.specialConfigCommands=");
        buffer.append(this.specialConfigCommands);
        buffer.append(')');
        return buffer.toString();
    }
}

