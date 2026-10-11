/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.validation.service;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface INotificationGenerator {
    public Collection<Notification> generateNotifications(Collection<? extends Notification> var1);
}

