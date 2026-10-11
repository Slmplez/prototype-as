/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.events;

import org.eclipse.core.internal.resources.ICoreConstants;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.watson.IElementComparator;

public class ResourceComparator
implements IElementComparator,
ICoreConstants {
    protected static final ResourceComparator notificationSingleton = new ResourceComparator(true, false);
    protected static final ResourceComparator buildSingleton = new ResourceComparator(false, false);
    private boolean notification;
    private boolean save;

    public static ResourceComparator getSaveComparator() {
        return new ResourceComparator(false, true);
    }

    public static ResourceComparator getBuildComparator() {
        return buildSingleton;
    }

    public static ResourceComparator getNotificationComparator() {
        return notificationSingleton;
    }

    private ResourceComparator(boolean notification, boolean save) {
        this.notification = notification;
        this.save = save;
    }

    public int compare(Object o1, Object o2) {
        if (o1 == o2) {
            return 0;
        }
        int result = 0;
        if (o1 == null) {
            return ((ResourceInfo)o2).isSet(8) ? 8 : 1;
        }
        if (o2 == null) {
            return ((ResourceInfo)o1).isSet(8) ? 16 : 2;
        }
        if (!(o1 instanceof ResourceInfo) || !(o2 instanceof ResourceInfo)) {
            return 0;
        }
        ResourceInfo oldElement = (ResourceInfo)o1;
        ResourceInfo newElement = (ResourceInfo)o2;
        if (!oldElement.isSet(8) && newElement.isSet(8)) {
            return 2;
        }
        if (oldElement.isSet(8) && !newElement.isSet(8)) {
            return 1;
        }
        if (!this.compareOpen(oldElement, newElement)) {
            result |= 0x4000;
        }
        if (!this.compareContents(oldElement, newElement)) {
            if (oldElement.getType() == 4) {
                result |= 0x80000;
            } else if (newElement.getType() == 1 || oldElement.getType() == 1) {
                result |= 0x100;
            }
        }
        if (!this.compareType(oldElement, newElement)) {
            result |= 0x8000;
        }
        if (!this.compareNodeIDs(oldElement, newElement)) {
            result |= 0x40000;
            if (oldElement.getType() == 1 && newElement.getType() == 1) {
                result |= 0x100;
            }
        }
        if (this.compareLocal(oldElement, newElement)) {
            result |= 0x200000;
        }
        if (!this.compareCharsets(oldElement, newElement)) {
            result |= 0x100000;
        }
        if (!this.compareDerived(oldElement, newElement)) {
            result |= 0x400000;
        }
        if (this.notification && !this.compareSync(oldElement, newElement)) {
            result |= 0x10000;
        }
        if (this.notification && !this.compareMarkers(oldElement, newElement)) {
            result |= 0x20000;
        }
        if (this.save && !this.compareUsed(oldElement, newElement)) {
            result |= 4;
        }
        return result == 0 ? 0 : result | 4;
    }

    private boolean compareDerived(ResourceInfo oldElement, ResourceInfo newElement) {
        return oldElement.isSet(16384) == newElement.isSet(16384);
    }

    private boolean compareCharsets(ResourceInfo oldElement, ResourceInfo newElement) {
        return oldElement.getCharsetGenerationCount() == newElement.getCharsetGenerationCount();
    }

    private boolean compareContents(ResourceInfo oldElement, ResourceInfo newElement) {
        return oldElement.getContentId() == newElement.getContentId();
    }

    private boolean compareLocal(ResourceInfo oldElement, ResourceInfo newElement) {
        if (!oldElement.isSet(65536) || !newElement.isSet(65536)) {
            return false;
        }
        long oldStamp = oldElement.getModificationStamp();
        long newStamp = newElement.getModificationStamp();
        return (oldStamp == -1L || newStamp == -1L) && oldStamp != newStamp;
    }

    private boolean compareMarkers(ResourceInfo oldElement, ResourceInfo newElement) {
        boolean bothNull;
        boolean bl = bothNull = oldElement.getMarkers(false) == null && newElement.getMarkers(false) == null;
        return bothNull || oldElement.getMarkerGenerationCount() == newElement.getMarkerGenerationCount();
    }

    private boolean compareNodeIDs(ResourceInfo oldElement, ResourceInfo newElement) {
        return oldElement.getNodeId() == newElement.getNodeId();
    }

    private boolean compareOpen(ResourceInfo oldElement, ResourceInfo newElement) {
        return oldElement.isSet(1) == newElement.isSet(1);
    }

    private boolean compareSync(ResourceInfo oldElement, ResourceInfo newElement) {
        return oldElement.getSyncInfoGenerationCount() == newElement.getSyncInfoGenerationCount();
    }

    private boolean compareType(ResourceInfo oldElement, ResourceInfo newElement) {
        return oldElement.getType() == newElement.getType();
    }

    private boolean compareUsed(ResourceInfo oldElement, ResourceInfo newElement) {
        return oldElement.isSet(16) == newElement.isSet(16);
    }
}

