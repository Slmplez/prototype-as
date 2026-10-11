/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.team.core.variants;

import org.eclipse.core.resources.IResource;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.variants.IResourceVariant;
import org.eclipse.team.core.variants.IResourceVariantComparator;
import org.eclipse.team.core.variants.ThreeWaySynchronizer;
import org.eclipse.team.internal.core.TeamPlugin;

public class ThreeWayResourceComparator
implements IResourceVariantComparator {
    private ThreeWaySynchronizer synchronizer;

    public ThreeWayResourceComparator(ThreeWaySynchronizer synchronizer) {
        this.synchronizer = synchronizer;
    }

    public boolean compare(IResource local, IResourceVariant remote) {
        block6: {
            block5: {
                if (local.getType() == 1 == remote.isContainer()) {
                    return false;
                }
                try {
                    if (local.getType() != 1 || !this.getSynchronizer().isLocallyModified(local)) break block5;
                    return false;
                }
                catch (TeamException e) {
                    TeamPlugin.log(e);
                    return false;
                }
            }
            if (this.getSynchronizer().getBaseBytes(local) != null) break block6;
            return false;
        }
        return this.equals(this.getSynchronizer().getBaseBytes(local), this.getBytes(remote));
    }

    public boolean compare(IResourceVariant base, IResourceVariant remote) {
        byte[] bytes1 = this.getBytes(base);
        byte[] bytes2 = this.getBytes(remote);
        return this.equals(bytes1, bytes2);
    }

    public boolean isThreeWay() {
        return true;
    }

    private ThreeWaySynchronizer getSynchronizer() {
        return this.synchronizer;
    }

    private byte[] getBytes(IResourceVariant remote) {
        return remote.asBytes();
    }

    private boolean equals(byte[] syncBytes, byte[] oldBytes) {
        if (syncBytes.length != oldBytes.length) {
            return false;
        }
        int i = 0;
        while (i < oldBytes.length) {
            if (oldBytes[i] != syncBytes[i]) {
                return false;
            }
            ++i;
        }
        return true;
    }
}

