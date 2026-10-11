/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.team.internal.core.mapping;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.diff.IThreeWayDiff;
import org.eclipse.team.core.diff.ITwoWayDiff;
import org.eclipse.team.core.diff.provider.ThreeWayDiff;
import org.eclipse.team.core.history.IFileRevision;
import org.eclipse.team.core.mapping.IResourceDiff;
import org.eclipse.team.core.mapping.provider.ResourceDiff;
import org.eclipse.team.core.synchronize.SyncInfo;
import org.eclipse.team.core.variants.IResourceVariant;
import org.eclipse.team.core.variants.IResourceVariantComparator;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.history.LocalFileRevision;
import org.eclipse.team.internal.core.mapping.ResourceVariantFileRevision;

public class SyncInfoToDiffConverter {
    private static SyncInfoToDiffConverter instance;
    static /* synthetic */ Class class$0;

    public static String diffKindToString(int kind) {
        String label = "";
        if (kind == 0) {
            label = Messages.RemoteSyncElement_insync;
        } else {
            switch (kind) {
                case 4: {
                    label = Messages.RemoteSyncElement_change;
                    break;
                }
                case 1: {
                    label = Messages.RemoteSyncElement_addition;
                    break;
                }
                case 2: {
                    label = Messages.RemoteSyncElement_deletion;
                }
            }
        }
        return label;
    }

    public static String diffDirectionToString(int direction) {
        switch (direction) {
            case 768: {
                return Messages.RemoteSyncElement_conflicting;
            }
            case 256: {
                return Messages.RemoteSyncElement_outgoing;
            }
            case 512: {
                return Messages.RemoteSyncElement_incoming;
            }
        }
        return "";
    }

    public static String diffStatusToString(int status) {
        int kind = status & 0xFF;
        String label = SyncInfoToDiffConverter.diffKindToString(kind);
        int direction = status & 0x300;
        if (direction != 0) {
            label = NLS.bind((String)Messages.concatStrings, (Object[])new String[]{SyncInfoToDiffConverter.diffDirectionToString(direction), label});
        }
        return label;
    }

    public static int asDiffFlags(int syncInfoFlags) {
        if (syncInfoFlags == 0) {
            return 0;
        }
        int kind = SyncInfo.getChange(syncInfoFlags);
        int diffFlags = 0;
        switch (kind) {
            case 1: {
                diffFlags = 1;
                break;
            }
            case 2: {
                diffFlags = 2;
                break;
            }
            case 3: {
                diffFlags = 4;
            }
        }
        int direction = SyncInfo.getDirection(syncInfoFlags);
        switch (direction) {
            case 8: {
                diffFlags |= 0x200;
                break;
            }
            case 4: {
                diffFlags |= 0x100;
                break;
            }
            case 12: {
                diffFlags |= 0x300;
            }
        }
        return diffFlags;
    }

    private static int asSyncInfoKind(IThreeWayDiff diff) {
        int kind = diff.getKind();
        if (diff.getKind() == 0) {
            return 0;
        }
        int syncKind = 0;
        switch (kind) {
            case 1: {
                syncKind = 1;
                break;
            }
            case 2: {
                syncKind = 2;
                break;
            }
            case 4: {
                syncKind = 3;
            }
        }
        int direction = diff.getDirection();
        switch (direction) {
            case 512: {
                syncKind |= 8;
                break;
            }
            case 256: {
                syncKind |= 4;
                break;
            }
            case 768: {
                syncKind |= 0xC;
            }
        }
        return syncKind;
    }

    public IDiff getDeltaFor(SyncInfo info) {
        if (info.getComparator().isThreeWay()) {
            ITwoWayDiff local = this.getLocalDelta(info);
            ITwoWayDiff remote = this.getRemoteDelta(info);
            return new ThreeWayDiff(local, remote);
        }
        if (info.getKind() != 0) {
            IResourceVariant remote = info.getRemote();
            IResource local = info.getLocal();
            int kind = remote == null ? 2 : (!local.exists() ? 1 : 4);
            if (local.getType() == 1) {
                IFileRevision after = this.asFileState(remote);
                IFileRevision before = this.getFileRevisionFor((IFile)local);
                return new ResourceDiff(info.getLocal(), kind, 0, before, after);
            }
            return new ResourceDiff(info.getLocal(), kind);
        }
        return null;
    }

    private ITwoWayDiff getRemoteDelta(SyncInfo info) {
        int direction = SyncInfo.getDirection(info.getKind());
        if (direction == 8 || direction == 12) {
            IResourceVariant ancestor = info.getBase();
            IResourceVariant remote = info.getRemote();
            int kind = ancestor == null ? 1 : (remote == null ? 2 : 4);
            if (info.getLocal().getType() == 1) {
                IFileRevision before = this.asFileState(ancestor);
                IFileRevision after = this.asFileState(remote);
                return new ResourceDiff(info.getLocal(), kind, 0, before, after);
            }
            return new ResourceDiff(info.getLocal(), kind);
        }
        return null;
    }

    private IFileRevision asFileState(IResourceVariant variant) {
        if (variant == null) {
            return null;
        }
        return this.asFileRevision(variant);
    }

    private IFileRevision getFileRevisionFor(IFile file) {
        return new LocalFileRevision(file);
    }

    protected ResourceVariantFileRevision asFileRevision(IResourceVariant variant) {
        return new ResourceVariantFileRevision(variant);
    }

    private ITwoWayDiff getLocalDelta(SyncInfo info) {
        int direction = SyncInfo.getDirection(info.getKind());
        if (direction == 4 || direction == 12) {
            IResourceVariant ancestor = info.getBase();
            IResource local = info.getLocal();
            int kind = ancestor == null ? 1 : (!local.exists() ? 2 : 4);
            if (local.getType() == 1) {
                IFileRevision before = this.asFileState(ancestor);
                IFileRevision after = this.getFileRevisionFor((IFile)local);
                return new ResourceDiff(info.getLocal(), kind, 0, before, after);
            }
            return new ResourceDiff(info.getLocal(), kind);
        }
        return null;
    }

    public static IResourceVariant getRemoteVariant(IThreeWayDiff twd) {
        IFileRevision revision = SyncInfoToDiffConverter.getRemote(twd);
        if (revision != null) {
            return SyncInfoToDiffConverter.asResourceVariant(revision);
        }
        return null;
    }

    public static IResourceVariant getBaseVariant(IThreeWayDiff twd) {
        IResourceDiff diff = (IResourceDiff)twd.getRemoteChange();
        if (diff != null) {
            return SyncInfoToDiffConverter.asResourceVariant(diff.getBeforeState());
        }
        diff = (IResourceDiff)twd.getLocalChange();
        if (diff != null) {
            return SyncInfoToDiffConverter.asResourceVariant(diff.getBeforeState());
        }
        return null;
    }

    public SyncInfo asSyncInfo(IDiff diff, IResourceVariantComparator comparator) {
        IThreeWayDiff twd;
        IResource local;
        if (diff instanceof ResourceDiff) {
            ResourceDiff rd = (ResourceDiff)diff;
            IResource local2 = rd.getResource();
            IFileRevision afterState = rd.getAfterState();
            IResourceVariant remote = SyncInfoToDiffConverter.asResourceVariant(afterState);
            int kind = remote == null ? 2 : (!local2.exists() ? 1 : 3);
            SyncInfo info = this.createSyncInfo(comparator, kind, local2, null, remote);
            return info;
        }
        if (diff instanceof IThreeWayDiff && (local = SyncInfoToDiffConverter.getLocal(twd = (IThreeWayDiff)diff)) != null) {
            IResourceVariant remote = SyncInfoToDiffConverter.getRemoteVariant(twd);
            IResourceVariant base = SyncInfoToDiffConverter.getBaseVariant(twd);
            int kind = SyncInfoToDiffConverter.asSyncInfoKind(twd);
            SyncInfo info = this.createSyncInfo(comparator, kind, local, base, remote);
            return info;
        }
        return null;
    }

    protected SyncInfo createSyncInfo(IResourceVariantComparator comparator, int kind, IResource local, IResourceVariant base, IResourceVariant remote) {
        PrecalculatedSyncInfo info = new PrecalculatedSyncInfo(kind, local, base, remote, comparator);
        try {
            info.init();
        }
        catch (TeamException teamException) {}
        return info;
    }

    private static IResource getLocal(IThreeWayDiff twd) {
        IResourceDiff diff = (IResourceDiff)twd.getRemoteChange();
        if (diff != null) {
            return diff.getResource();
        }
        diff = (IResourceDiff)twd.getLocalChange();
        if (diff != null) {
            return diff.getResource();
        }
        return null;
    }

    public static IResourceVariant asResourceVariant(IFileRevision revision) {
        if (revision == null) {
            return null;
        }
        if (revision instanceof ResourceVariantFileRevision) {
            ResourceVariantFileRevision rvfr = (ResourceVariantFileRevision)revision;
            return rvfr.getVariant();
        }
        if (revision instanceof IAdaptable) {
            Object o;
            IAdaptable adaptable = (IAdaptable)revision;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.team.core.variants.IResourceVariant");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((o = adaptable.getAdapter((Class)clazz)) instanceof IResourceVariant) {
                return (IResourceVariant)o;
            }
        }
        return null;
    }

    public static IFileRevision getRemote(IDiff diff) {
        if (diff instanceof IResourceDiff) {
            IResourceDiff rd = (IResourceDiff)diff;
            return rd.getAfterState();
        }
        if (diff instanceof IThreeWayDiff) {
            IThreeWayDiff twd = (IThreeWayDiff)diff;
            return SyncInfoToDiffConverter.getRemote(twd);
        }
        return null;
    }

    public static IFileRevision getRemote(IThreeWayDiff twd) {
        IResourceDiff rd = (IResourceDiff)twd.getRemoteChange();
        if (rd != null) {
            return rd.getAfterState();
        }
        rd = (IResourceDiff)twd.getLocalChange();
        if (rd != null) {
            return rd.getBeforeState();
        }
        return null;
    }

    public static SyncInfoToDiffConverter getDefault() {
        if (instance == null) {
            instance = new SyncInfoToDiffConverter();
        }
        return instance;
    }

    private static class PrecalculatedSyncInfo
    extends SyncInfo {
        public int kind;

        public PrecalculatedSyncInfo(int kind, IResource local, IResourceVariant base, IResourceVariant remote, IResourceVariantComparator comparator) {
            super(local, base, remote, comparator);
            this.kind = kind;
        }

        protected int calculateKind() throws TeamException {
            return this.kind;
        }
    }
}

