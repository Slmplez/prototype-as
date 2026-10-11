/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.transaction.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.transaction.NotificationFilter;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class FilterManager {
    private static final FilterManager INSTANCE = new FilterManager();

    private FilterManager() {
    }

    public static FilterManager getInstance() {
        return INSTANCE;
    }

    public List<Notification> select(List<Notification> notifications, NotificationFilter filter, ArrayList<Notification> cache) {
        List<Notification> result;
        if (filter == NotificationFilter.ANY) {
            result = notifications;
        } else {
            result = cache;
            result.clear();
            if (filter == null) {
                filter = NotificationFilter.NOT_TOUCH;
            }
            for (Notification next : notifications) {
                if (!filter.matches(next)) continue;
                result.add(next);
            }
        }
        return result;
    }

    public List<Notification> select(List<Notification> notifications, NotificationFilter filter) {
        return this.select(notifications, filter, new ArrayList<Notification>());
    }

    public List<Notification> selectUnbatched(List<Notification> notification, NotificationFilter filter) {
        if (filter == null) {
            filter = NotificationFilter.NOT_TOUCH;
        }
        List<Object> result = filter.matches(notification.get(0)) ? notification : Collections.emptyList();
        return result;
    }
}

