/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.edit.provider;

import org.eclipse.emf.common.notify.Notification;

public interface IViewerNotification
extends Notification {
    public Object getElement();

    public boolean isContentRefresh();

    public boolean isLabelUpdate();
}

