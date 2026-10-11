/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationWrapper
 */
package org.eclipse.emf.edit.provider;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationWrapper;
import org.eclipse.emf.edit.provider.IViewerNotification;

public class ViewerNotification
extends NotificationWrapper
implements IViewerNotification {
    protected Object element;
    protected boolean contentRefresh;
    protected boolean labelUpdate;

    public static Notification wrapNotification(Notification notification, Object element) {
        if (notification instanceof IViewerNotification) {
            return new ViewerNotification((IViewerNotification)notification, element);
        }
        return new NotificationWrapper(element, notification);
    }

    public ViewerNotification(Notification decoratedNotification) {
        this(decoratedNotification, null, true, true);
    }

    public ViewerNotification(Notification decoratedNotification, Object element) {
        this(decoratedNotification, element, true, true);
    }

    public ViewerNotification(Notification decoratedNotification, Object element, boolean contentRefresh, boolean labelUpdate) {
        super(decoratedNotification);
        this.element = element;
        this.contentRefresh = contentRefresh;
        this.labelUpdate = labelUpdate;
    }

    public ViewerNotification(IViewerNotification viewerNotification, Object element) {
        this(viewerNotification, element, viewerNotification.isContentRefresh(), viewerNotification.isLabelUpdate());
    }

    public Object getElement() {
        return this.element;
    }

    public boolean isContentRefresh() {
        return this.contentRefresh;
    }

    public boolean isLabelUpdate() {
        return this.labelUpdate;
    }

    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (");
        if (this.contentRefresh) {
            result.append("refresh ");
        }
        if (this.labelUpdate) {
            result.append("update ");
        }
        result.append("element: ");
        result.append(this.element);
        result.append(')');
        return result.toString();
    }
}

