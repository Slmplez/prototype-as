/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.emf.transaction;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.transaction.ReadFilter;
import org.eclipse.emf.transaction.ResourceContentTypeFilter;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class NotificationFilter {
    public static final NotificationFilter ANY = new NotificationFilter(){

        public boolean matches(Notification notification) {
            return true;
        }
    };
    public static final NotificationFilter NOT_TOUCH = new NotificationFilter(){

        public boolean matches(Notification notification) {
            return !notification.isTouch();
        }
    };
    public static final NotificationFilter READ = new ReadFilter();
    public static final NotificationFilter RESOURCE_LOADED = new NotificationFilter(){

        public boolean matches(Notification notification) {
            return notification.getNotifier() instanceof Resource && notification.getFeatureID(Resource.class) == 4 && !notification.getOldBooleanValue() && notification.getNewBooleanValue();
        }
    };
    public static final NotificationFilter RESOURCE_UNLOADED = new NotificationFilter(){

        public boolean matches(Notification notification) {
            return notification.getNotifier() instanceof Resource && notification.getFeatureID(Resource.class) == 4 && notification.getOldBooleanValue() && !notification.getNewBooleanValue();
        }
    };

    NotificationFilter() {
    }

    public static NotificationFilter createResourceContentTypeFilter(String contentType) {
        return new ResourceContentTypeFilter(contentType);
    }

    public static NotificationFilter createNotifierFilter(final Object notifier) {
        return new NotificationFilter(){

            public boolean matches(Notification notification) {
                return notification.getNotifier() == notifier;
            }
        };
    }

    public static NotificationFilter createEventTypeFilter(final int eventType) {
        return new NotificationFilter(){

            public boolean matches(Notification notification) {
                return notification.getEventType() == eventType;
            }
        };
    }

    public static NotificationFilter createFeatureFilter(final EStructuralFeature feature) {
        return new NotificationFilter(){

            public boolean matches(Notification notification) {
                return notification.getFeature() == feature;
            }
        };
    }

    public static NotificationFilter createFeatureFilter(final Class<?> ownerType, final int featureId) {
        return new NotificationFilter(){

            public boolean matches(Notification notification) {
                return ownerType.isInstance(notification.getNotifier()) && notification.getFeatureID(ownerType) == featureId;
            }
        };
    }

    public static NotificationFilter createFeatureFilter(final EClassifier ownerType, final int featureId) {
        return new NotificationFilter(){

            public boolean matches(Notification notification) {
                return ownerType.isInstance(notification.getNotifier()) && notification.getFeatureID(ownerType.getInstanceClass()) == featureId;
            }
        };
    }

    public static NotificationFilter createNotifierTypeFilter(final Class<?> type) {
        return new NotificationFilter(){

            public boolean matches(Notification notification) {
                return type.isInstance(notification.getNotifier());
            }
        };
    }

    public static NotificationFilter createNotifierTypeFilter(final EClassifier type) {
        return new NotificationFilter(){

            public boolean matches(Notification notification) {
                return type.isInstance(notification.getNotifier());
            }
        };
    }

    public final NotificationFilter and(final NotificationFilter other) {
        return new NotificationFilter(){

            public boolean matches(Notification notification) {
                return NotificationFilter.this.matches(notification) && other.matches(notification);
            }
        };
    }

    public final NotificationFilter or(final NotificationFilter other) {
        return new NotificationFilter(){

            public boolean matches(Notification notification) {
                return NotificationFilter.this.matches(notification) || other.matches(notification);
            }
        };
    }

    public final NotificationFilter negated() {
        return new NotificationFilter(){

            public boolean matches(Notification notification) {
                return !NotificationFilter.this.matches(notification);
            }
        };
    }

    public abstract boolean matches(Notification var1);

    public static abstract class Custom
    extends NotificationFilter {
    }
}

