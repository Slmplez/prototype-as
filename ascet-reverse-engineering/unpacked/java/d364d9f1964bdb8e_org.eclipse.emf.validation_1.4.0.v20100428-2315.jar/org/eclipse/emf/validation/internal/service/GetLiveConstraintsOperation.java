/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.validation.internal.service;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.validation.EMFEventType;
import org.eclipse.emf.validation.internal.service.AbstractGetConstraintsOperation;
import org.eclipse.emf.validation.internal.service.AbstractValidationContext;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IModelConstraintProvider;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GetLiveConstraintsOperation
extends AbstractGetConstraintsOperation {
    private EMFEventType eventType;
    private Notification notification;
    private List<Notification> allEvents;

    protected void setNotification(Notification notification) {
        this.setTarget((EObject)notification.getNotifier());
        EMFEventType newEventType = EMFEventType.getInstance(notification.getEventType());
        assert (newEventType != null && !newEventType.isNull());
        this.eventType = newEventType;
        this.notification = notification;
    }

    protected void setAllEvents(List<? extends Notification> events) {
        this.allEvents = Collections.unmodifiableList(events);
    }

    public final EMFEventType getEventType() {
        return this.eventType;
    }

    public final List<Notification> getAllEvents() {
        return this.allEvents;
    }

    public final Notification getNotification() {
        return this.notification;
    }

    @Override
    protected void executeImpl(IModelConstraintProvider provider, Collection<IModelConstraint> constraints) {
        assert (provider != null);
        provider.getLiveConstraints(this.getNotification(), constraints);
    }

    @Override
    protected AbstractValidationContext createContext() {
        return new AbstractValidationContext(this){

            @Override
            public EStructuralFeature getFeature() {
                EStructuralFeature result = null;
                if (this.getNotification().getFeature() instanceof EStructuralFeature) {
                    result = (EStructuralFeature)this.getNotification().getFeature();
                }
                return result;
            }

            @Override
            public Object getFeatureNewValue() {
                Object result = null;
                if (!this.getEventType().isNull()) {
                    switch (this.getNotification().getEventType()) {
                        case 4: 
                        case 6: 
                        case 8: {
                            result = this.getNotification().getOldValue();
                            break;
                        }
                        default: {
                            result = this.getNotification().getNewValue();
                        }
                    }
                }
                return result;
            }

            @Override
            public EMFEventType getEventType() {
                return GetLiveConstraintsOperation.this.getEventType();
            }

            @Override
            public List<Notification> getAllEvents() {
                return GetLiveConstraintsOperation.this.getAllEvents();
            }

            @Override
            public Notification getNotification() {
                return GetLiveConstraintsOperation.this.getNotification();
            }
        };
    }
}

