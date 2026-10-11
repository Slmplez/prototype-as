/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.core.diff.provider;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.diff.IThreeWayDiff;
import org.eclipse.team.core.diff.ITwoWayDiff;
import org.eclipse.team.core.diff.provider.Diff;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.mapping.SyncInfoToDiffConverter;

public class ThreeWayDiff
extends Diff
implements IThreeWayDiff {
    private final ITwoWayDiff localChange;
    private final ITwoWayDiff remoteChange;

    public ThreeWayDiff(ITwoWayDiff localChange, ITwoWayDiff remoteChange) {
        super(ThreeWayDiff.calculatePath(localChange, remoteChange), ThreeWayDiff.calculateKind(localChange, remoteChange) | ThreeWayDiff.calculateDirection(localChange, remoteChange));
        this.localChange = localChange;
        this.remoteChange = remoteChange;
    }

    private static IPath calculatePath(ITwoWayDiff localChange, ITwoWayDiff remoteChange) {
        if (localChange != null && remoteChange != null) {
            Assert.isTrue((boolean)localChange.getPath().equals((Object)remoteChange.getPath()));
        }
        if (localChange != null) {
            return localChange.getPath();
        }
        if (remoteChange != null) {
            return remoteChange.getPath();
        }
        Assert.isLegal((boolean)false, (String)"Either or local or remote change must be supplied");
        return null;
    }

    private static int calculateDirection(ITwoWayDiff localChange, ITwoWayDiff remoteChange) {
        int direction = 0;
        if (localChange != null && localChange.getKind() != 0) {
            direction |= 0x100;
        }
        if (remoteChange != null && remoteChange.getKind() != 0) {
            direction |= 0x200;
        }
        return direction;
    }

    private static int calculateKind(ITwoWayDiff localChange, ITwoWayDiff remoteChange) {
        int localKind = 0;
        if (localChange != null) {
            localKind = localChange.getKind();
        }
        int remoteKind = 0;
        if (remoteChange != null) {
            remoteKind = remoteChange.getKind();
        }
        if (localKind == 0 || localKind == remoteKind) {
            return remoteKind;
        }
        if (remoteKind == 0) {
            return localKind;
        }
        return 4;
    }

    public ITwoWayDiff getLocalChange() {
        return this.localChange;
    }

    public ITwoWayDiff getRemoteChange() {
        return this.remoteChange;
    }

    public int getDirection() {
        return this.getStatus() & 0x300;
    }

    public String toDiffString() {
        int kind = this.getKind();
        String label = "";
        if (kind == 0) {
            label = super.toDiffString();
        } else {
            label = SyncInfoToDiffConverter.diffDirectionToString(this.getDirection());
            label = NLS.bind((String)Messages.concatStrings, (Object[])new String[]{label, super.toDiffString()});
        }
        return label;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (super.equals(obj) && obj instanceof ThreeWayDiff) {
            ThreeWayDiff other = (ThreeWayDiff)obj;
            return this.changesEqual(this.getLocalChange(), other.getLocalChange()) && this.changesEqual(this.getRemoteChange(), other.getRemoteChange());
        }
        return false;
    }

    private boolean changesEqual(ITwoWayDiff diff, ITwoWayDiff diff2) {
        if (diff == null) {
            return diff2 == null;
        }
        if (diff2 == null) {
            return false;
        }
        return diff.equals(diff2);
    }
}

