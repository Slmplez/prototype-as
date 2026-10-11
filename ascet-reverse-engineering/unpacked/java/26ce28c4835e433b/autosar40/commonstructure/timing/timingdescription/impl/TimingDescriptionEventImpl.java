/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.timing.timingdescription.impl;

import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.TimingdescriptionPackage;
import autosar40.commonstructure.timing.timingdescription.impl.TimingDescriptionImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpression;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TimingDescriptionEventImpl
extends TimingDescriptionImpl
implements TimingDescriptionEvent {
    protected TDEventOccurrenceExpression occurrenceExpression;

    protected TimingDescriptionEventImpl() {
    }

    protected EClass eStaticClass() {
        return TimingdescriptionPackage.Literals.TIMING_DESCRIPTION_EVENT;
    }

    public TDEventOccurrenceExpression getOccurrenceExpression() {
        return this.occurrenceExpression;
    }

    public NotificationChain basicSetOccurrenceExpression(TDEventOccurrenceExpression newOccurrenceExpression, NotificationChain msgs) {
        TDEventOccurrenceExpression oldOccurrenceExpression = this.occurrenceExpression;
        this.occurrenceExpression = newOccurrenceExpression;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldOccurrenceExpression, (Object)newOccurrenceExpression);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setOccurrenceExpression(TDEventOccurrenceExpression newOccurrenceExpression) {
        if (newOccurrenceExpression != this.occurrenceExpression) {
            NotificationChain msgs = null;
            if (this.occurrenceExpression != null) {
                msgs = ((InternalEObject)this.occurrenceExpression).eInverseRemove((InternalEObject)this, 4, TDEventOccurrenceExpression.class, msgs);
            }
            if (newOccurrenceExpression != null) {
                msgs = ((InternalEObject)newOccurrenceExpression).eInverseAdd((InternalEObject)this, 4, TDEventOccurrenceExpression.class, msgs);
            }
            if ((msgs = this.basicSetOccurrenceExpression(newOccurrenceExpression, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newOccurrenceExpression, (Object)newOccurrenceExpression));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                if (this.occurrenceExpression != null) {
                    msgs = ((InternalEObject)this.occurrenceExpression).eInverseRemove((InternalEObject)this, -21, null, msgs);
                }
                return this.basicSetOccurrenceExpression((TDEventOccurrenceExpression)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetOccurrenceExpression(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getOccurrenceExpression();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setOccurrenceExpression((TDEventOccurrenceExpression)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.setOccurrenceExpression(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.occurrenceExpression != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

