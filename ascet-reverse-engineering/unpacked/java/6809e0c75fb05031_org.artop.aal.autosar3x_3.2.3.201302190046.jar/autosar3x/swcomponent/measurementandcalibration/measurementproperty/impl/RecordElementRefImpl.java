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
package autosar3x.swcomponent.measurementandcalibration.measurementproperty.impl;

import autosar3x.commonstructure.datadictionaryproxies.impl.SwVariableRefProxyImpl;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.RecordElementRef;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.RecordElementRefRecordElement;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class RecordElementRefImpl
extends SwVariableRefProxyImpl
implements RecordElementRef {
    protected RecordElementRefRecordElement recordElement;

    protected RecordElementRefImpl() {
    }

    protected EClass eStaticClass() {
        return MeasurementpropertyPackage.Literals.RECORD_ELEMENT_REF;
    }

    public RecordElementRefRecordElement getRecordElement() {
        return this.recordElement;
    }

    public NotificationChain basicSetRecordElement(RecordElementRefRecordElement newRecordElement, NotificationChain msgs) {
        RecordElementRefRecordElement oldRecordElement = this.recordElement;
        this.recordElement = newRecordElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldRecordElement, (Object)newRecordElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setRecordElement(RecordElementRefRecordElement newRecordElement) {
        if (newRecordElement != this.recordElement) {
            NotificationChain msgs = null;
            if (this.recordElement != null) {
                msgs = ((InternalEObject)this.recordElement).eInverseRemove((InternalEObject)this, 4, RecordElementRefRecordElement.class, msgs);
            }
            if (newRecordElement != null) {
                msgs = ((InternalEObject)newRecordElement).eInverseAdd((InternalEObject)this, 4, RecordElementRefRecordElement.class, msgs);
            }
            if ((msgs = this.basicSetRecordElement(newRecordElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newRecordElement, (Object)newRecordElement));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.recordElement != null) {
                    msgs = ((InternalEObject)this.recordElement).eInverseRemove((InternalEObject)this, -5, null, msgs);
                }
                return this.basicSetRecordElement((RecordElementRefRecordElement)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetRecordElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getRecordElement();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setRecordElement((RecordElementRefRecordElement)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setRecordElement(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.recordElement != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

