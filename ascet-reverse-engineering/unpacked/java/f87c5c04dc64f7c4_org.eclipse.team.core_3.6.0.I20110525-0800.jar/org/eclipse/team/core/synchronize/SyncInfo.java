/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.core.synchronize;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.variants.IResourceVariant;
import org.eclipse.team.core.variants.IResourceVariantComparator;
import org.eclipse.team.internal.core.Messages;

public class SyncInfo
implements IAdaptable {
    public static final int IN_SYNC = 0;
    public static final int ADDITION = 1;
    public static final int DELETION = 2;
    public static final int CHANGE = 3;
    public static final int CHANGE_MASK = 3;
    public static final int OUTGOING = 4;
    public static final int INCOMING = 8;
    public static final int CONFLICTING = 12;
    public static final int DIRECTION_MASK = 12;
    public static final int PSEUDO_CONFLICT = 16;
    public static final int AUTOMERGE_CONFLICT = 32;
    public static final int MANUAL_CONFLICT = 64;
    private IResource local;
    private IResourceVariant base;
    private IResourceVariant remote;
    private IResourceVariantComparator comparator;
    private int syncKind;
    static /* synthetic */ Class class$0;

    public SyncInfo(IResource local, IResourceVariant base, IResourceVariant remote, IResourceVariantComparator comparator) {
        Assert.isNotNull((Object)local);
        Assert.isNotNull((Object)comparator);
        this.local = local;
        this.base = base;
        this.remote = remote;
        this.comparator = comparator;
    }

    public IResource getLocal() {
        return this.local;
    }

    public String getLocalContentIdentifier() {
        return null;
    }

    public String getLocalAuthor(IProgressMonitor monitor) {
        return null;
    }

    public IResourceVariant getBase() {
        return this.base;
    }

    public IResourceVariant getRemote() {
        return this.remote;
    }

    public IResourceVariantComparator getComparator() {
        return this.comparator;
    }

    public int getKind() {
        return this.syncKind;
    }

    public static boolean isInSync(int kind) {
        return kind == 0;
    }

    public static int getDirection(int kind) {
        return kind & 0xC;
    }

    public static int getChange(int kind) {
        return kind & 3;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof SyncInfo) {
            return this.equalNodes(this, (SyncInfo)other);
        }
        return false;
    }

    public int hashCode() {
        return this.getLocal().hashCode();
    }

    private boolean equalNodes(SyncInfo node1, SyncInfo node2) {
        if (node1 == null || node2 == null) {
            return false;
        }
        IResource local1 = null;
        if (node1.getLocal() != null) {
            local1 = node1.getLocal();
        }
        IResource local2 = null;
        if (node2.getLocal() != null) {
            local2 = node2.getLocal();
        }
        if (!this.equalObjects(local1, local2)) {
            return false;
        }
        IResourceVariant base1 = null;
        if (node1.getBase() != null) {
            base1 = node1.getBase();
        }
        IResourceVariant base2 = null;
        if (node2.getBase() != null) {
            base2 = node2.getBase();
        }
        if (!this.equalObjects(base1, base2)) {
            return false;
        }
        IResourceVariant remote1 = null;
        if (node1.getRemote() != null) {
            remote1 = node1.getRemote();
        }
        IResourceVariant remote2 = null;
        if (node2.getRemote() != null) {
            remote2 = node2.getRemote();
        }
        return this.equalObjects(remote1, remote2);
    }

    private boolean equalObjects(Object o1, Object o2) {
        if (o1 == null && o2 == null) {
            return true;
        }
        if (o1 == null || o2 == null) {
            return false;
        }
        return o1.equals(o2);
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.resources.IResource");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            return this.getLocal();
        }
        return null;
    }

    public String toString() {
        return String.valueOf(this.getLocal().getName()) + " " + SyncInfo.kindToString(this.getKind());
    }

    public static String kindToString(int kind) {
        String label = "";
        if (kind == 0) {
            label = Messages.RemoteSyncElement_insync;
        } else {
            switch (kind & 0xC) {
                case 12: {
                    label = Messages.RemoteSyncElement_conflicting;
                    break;
                }
                case 4: {
                    label = Messages.RemoteSyncElement_outgoing;
                    break;
                }
                case 8: {
                    label = Messages.RemoteSyncElement_incoming;
                }
            }
            switch (kind & 3) {
                case 3: {
                    label = NLS.bind((String)Messages.concatStrings, (Object[])new String[]{label, Messages.RemoteSyncElement_change});
                    break;
                }
                case 1: {
                    label = NLS.bind((String)Messages.concatStrings, (Object[])new String[]{label, Messages.RemoteSyncElement_addition});
                    break;
                }
                case 2: {
                    label = NLS.bind((String)Messages.concatStrings, (Object[])new String[]{label, Messages.RemoteSyncElement_deletion});
                }
            }
            if ((kind & 0x40) != 0) {
                label = NLS.bind((String)Messages.concatStrings, (Object[])new String[]{label, Messages.RemoteSyncElement_manual});
            }
            if ((kind & 0x20) != 0) {
                label = NLS.bind((String)Messages.concatStrings, (Object[])new String[]{label, Messages.RemoteSyncElement_auto});
            }
        }
        return NLS.bind((String)Messages.RemoteSyncElement_delimit, (Object[])new String[]{label});
    }

    public final void init() throws TeamException {
        this.syncKind = this.calculateKind();
    }

    protected int calculateKind() throws TeamException {
        int description = 0;
        boolean localExists = this.local.exists();
        if (this.comparator.isThreeWay()) {
            if (this.base == null) {
                if (this.remote == null) {
                    description = !localExists ? 0 : 5;
                } else if (!localExists) {
                    description = 9;
                } else {
                    description = 13;
                    if (this.comparator.compare(this.local, this.remote)) {
                        description |= 0x10;
                    }
                }
            } else if (!localExists) {
                description = this.remote == null ? 30 : (this.comparator.compare(this.base, this.remote) ? 6 : 15);
            } else if (this.remote == null) {
                description = this.comparator.compare(this.local, this.base) ? 10 : 15;
            } else {
                boolean ay = this.comparator.compare(this.local, this.base);
                boolean am = this.comparator.compare(this.base, this.remote);
                if (!ay || !am) {
                    if (ay && !am) {
                        description = 11;
                    } else if (!ay && am) {
                        description = 7;
                    } else if (!this.comparator.compare(this.local, this.remote)) {
                        description = 15;
                    }
                }
            }
        } else if (this.remote == null) {
            if (!localExists) {
                Assert.isTrue((boolean)false);
            } else {
                description = 2;
            }
        } else if (!localExists) {
            description = 1;
        } else if (!this.comparator.compare(this.local, this.remote)) {
            description = 3;
        }
        return description;
    }
}

