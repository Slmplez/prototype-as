/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationWrapper
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.validation.internal.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationWrapper;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.validation.EMFEventType;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.service.AbstractValidationContext;
import org.eclipse.emf.validation.internal.service.AbstractValidator;
import org.eclipse.emf.validation.internal.service.ClientContextManager;
import org.eclipse.emf.validation.internal.service.GetLiveConstraintsOperation;
import org.eclipse.emf.validation.internal.service.IClientContext;
import org.eclipse.emf.validation.internal.service.IProviderOperationExecutor;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.model.EvaluationMode;
import org.eclipse.emf.validation.service.EventTypeService;
import org.eclipse.emf.validation.service.ILiveValidator;
import org.eclipse.emf.validation.service.INotificationGenerator;
import org.eclipse.emf.validation.util.FilteredCollection;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LiveValidator
extends AbstractValidator<Notification>
implements ILiveValidator {
    private FilteredCollection.Filter<Notification> notificationFilter;

    public LiveValidator(IProviderOperationExecutor executor) {
        super(EvaluationMode.LIVE, executor);
    }

    @Override
    protected Collection<IStatus> doValidate(Collection<? extends Notification> objects, Set<IClientContext> clientContexts) {
        Collection<Notification> notifications = this.generateNotifications(objects);
        List<Notification> events = this.mergeNotifications(notifications);
        Iterator<Notification> iter = events.iterator();
        ArrayList<IStatus> result = new ArrayList<IStatus>(32);
        GetLiveConstraintsOperation operation = new GetLiveConstraintsOperation();
        operation.setAllEvents(new ArrayList<Notification>(objects));
        AbstractValidationContext ctx = operation.getContext();
        ctx.setReportSuccesses(this.isReportSuccesses());
        while (iter.hasNext()) {
            EMFEventType eventType;
            Notification event = iter.next();
            Object notifier = event.getNotifier();
            if (!(notifier instanceof EObject) || (eventType = EMFEventType.getInstance(event.getEventType())).isNull()) continue;
            Collection<IClientContext> contexts = ClientContextManager.getInstance().getClientContextsFor((EObject)notifier);
            ctx.setClientContexts(contexts);
            clientContexts.addAll(contexts);
            this.validate(ctx, event, operation, result);
        }
        return result;
    }

    private void validate(AbstractValidationContext ctx, Notification event, GetLiveConstraintsOperation operation, List<IStatus> results) {
        if (Trace.shouldTraceEntering(EMFModelValidationDebugOptions.PROVIDERS)) {
            Trace.entering(this.getClass(), "validate", new Object[]{event});
        }
        operation.setNotification(event);
        this.execute(operation);
        this.evaluateConstraints(ctx, results);
        if (Trace.shouldTraceExiting(EMFModelValidationDebugOptions.PROVIDERS)) {
            Trace.exiting(this.getClass(), "validate");
        }
    }

    private List<Notification> mergeNotifications(Collection<Notification> notifications) {
        LinkedHashMap<MergeableNotification, MergeableNotification> result = new LinkedHashMap<MergeableNotification, MergeableNotification>(notifications.size());
        for (Notification next : notifications) {
            MergeableNotification notification;
            if (!this.isValidatable(next) || result.containsKey((Object)(notification = new MergeableNotification(next))) && ((MergeableNotification)((Object)result.get((Object)notification))).merge((Notification)notification)) continue;
            result.put(notification, notification);
        }
        return new ArrayList<Notification>(result.keySet());
    }

    private Collection<Notification> generateNotifications(Collection<? extends Notification> notifications) {
        Collection<INotificationGenerator> generators = EventTypeService.getInstance().getNotificationGenerators();
        ArrayList<Notification> newNotifications = new ArrayList<Notification>();
        for (INotificationGenerator next : generators) {
            newNotifications.addAll(next.generateNotifications(notifications));
        }
        newNotifications.addAll(notifications);
        return newNotifications;
    }

    private boolean isValidatable(Notification notification) {
        return this.getNotificationFilter().accept(notification);
    }

    @Override
    public void setNotificationFilter(FilteredCollection.Filter<Notification> filter) {
        this.notificationFilter = filter;
    }

    @Override
    public FilteredCollection.Filter<Notification> getNotificationFilter() {
        if (this.notificationFilter == null) {
            this.notificationFilter = new AttachedToResourceNotificationFilter();
        }
        return this.notificationFilter;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class AttachedToResourceNotificationFilter
    implements FilteredCollection.Filter<Notification> {
        private AttachedToResourceNotificationFilter() {
        }

        @Override
        public boolean accept(Notification element) {
            return element.getNotifier() instanceof EObject && ((EObject)element.getNotifier()).eResource() != null;
        }
    }

    private static class MergeableNotification
    extends NotificationWrapper {
        private Object oldValue;
        private Object newValue;
        private int eventType;

        public MergeableNotification(Notification notification) {
            super(notification);
            this.eventType = notification.getEventType();
            this.oldValue = notification.getOldValue();
            this.newValue = this.eventType == 7 ? ((EObject)notification.getNotifier()).eGet((EStructuralFeature)notification.getFeature()) : notification.getNewValue();
            if (this.oldValue instanceof Collection) {
                this.oldValue = new ArrayList((Collection)this.oldValue);
            }
            if (this.newValue instanceof Collection) {
                this.newValue = new ArrayList((Collection)this.newValue);
            }
        }

        public int getEventType() {
            return this.eventType;
        }

        public Object getNewValue() {
            return this.newValue;
        }

        public Object getOldValue() {
            return this.oldValue;
        }

        public boolean equals(Object o) {
            boolean result = false;
            if (o instanceof Notification) {
                Notification other = (Notification)o;
                boolean bl = result = other.getNotifier() == this.getNotifier() && other.getFeature() == this.getFeature();
                if (result) {
                    int otherType = other.getEventType();
                    switch (this.getEventType()) {
                        case 3: 
                        case 5: {
                            result = otherType == 3 || otherType == 5;
                            break;
                        }
                        case 4: 
                        case 6: {
                            result = otherType == 4 || otherType == 6;
                            break;
                        }
                        default: {
                            result = otherType == this.getEventType();
                        }
                    }
                }
            }
            return result;
        }

        public int hashCode() {
            int localEventType = this.getEventType();
            if (localEventType == 5) {
                localEventType = 3;
            } else if (localEventType == 6) {
                localEventType = 4;
            }
            return System.identityHashCode(this.getNotifier()) ^ 37 * localEventType ^ 17 * System.identityHashCode(this.getFeature());
        }

        public boolean merge(Notification other) {
            boolean result = false;
            if (this.equals(other)) {
                switch (this.eventType) {
                    case 0: 
                    case 9: {
                        ArrayList<Object> newCollection;
                        if (this.newValue instanceof Collection) {
                            newCollection = (ArrayList<Object>)this.newValue;
                        } else {
                            newCollection = new ArrayList<Object>();
                            newCollection.add(this.newValue);
                        }
                        Object otherValue = other.getNewValue();
                        if (otherValue instanceof Collection) {
                            newCollection.addAll((Collection)otherValue);
                        } else {
                            newCollection.add(otherValue);
                        }
                        this.newValue = newCollection;
                        result = true;
                        break;
                    }
                    case 3: 
                    case 5: {
                        ArrayList<Object> newCollection;
                        if (this.newValue instanceof Collection) {
                            newCollection = (ArrayList<Object>)this.newValue;
                        } else {
                            newCollection = new ArrayList<Object>();
                            newCollection.add(this.newValue);
                        }
                        Object otherValue = other.getNewValue();
                        if (otherValue instanceof Collection) {
                            newCollection.addAll((Collection)otherValue);
                        } else {
                            newCollection.add(otherValue);
                        }
                        this.newValue = newCollection;
                        this.eventType = 5;
                        result = true;
                        break;
                    }
                    case 4: 
                    case 6: {
                        ArrayList<Object> newCollection;
                        if (this.oldValue instanceof Collection) {
                            newCollection = (ArrayList<Object>)this.oldValue;
                        } else {
                            newCollection = new ArrayList<Object>();
                            newCollection.add(this.oldValue);
                        }
                        Object otherValue = other.getOldValue();
                        if (otherValue instanceof Collection) {
                            newCollection.addAll((Collection)otherValue);
                        } else {
                            newCollection.add(otherValue);
                        }
                        this.oldValue = newCollection;
                        this.eventType = 6;
                        result = true;
                        break;
                    }
                    case 8: {
                        ArrayList<Object> newCollection;
                        if (this.oldValue instanceof Collection) {
                            newCollection = (ArrayList<Object>)this.oldValue;
                        } else {
                            newCollection = new ArrayList<Object>();
                            newCollection.add(this.oldValue);
                        }
                        Object otherValue = other.getOldValue();
                        if (otherValue instanceof Collection) {
                            newCollection.addAll((Collection)otherValue);
                        } else {
                            newCollection.add(otherValue);
                        }
                        this.oldValue = newCollection;
                        result = true;
                        break;
                    }
                    default: {
                        if (!(this.getFeature() instanceof EStructuralFeature)) break;
                        this.newValue = ((EObject)this.getNotifier()).eGet((EStructuralFeature)this.getFeature());
                        result = true;
                    }
                }
            }
            return result;
        }
    }
}

