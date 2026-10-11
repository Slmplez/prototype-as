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
package autosar3x.ecucdescription.impl;

import autosar3x.ecucdescription.EcucdescriptionPackage;
import autosar3x.ecucdescription.InstanceReferenceValue;
import autosar3x.ecucdescription.impl.ConfigReferenceValueImpl;
import autosar3x.ecucdescription.instanceref.InstanceReferenceValueValue;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class InstanceReferenceValueImpl
extends ConfigReferenceValueImpl
implements InstanceReferenceValue {
    protected InstanceReferenceValueValue value;

    protected InstanceReferenceValueImpl() {
    }

    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.INSTANCE_REFERENCE_VALUE;
    }

    public InstanceReferenceValueValue getValue() {
        return this.value;
    }

    public NotificationChain basicSetValue(InstanceReferenceValueValue newValue, NotificationChain msgs) {
        InstanceReferenceValueValue oldValue = this.value;
        this.value = newValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldValue, (Object)newValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setValue(InstanceReferenceValueValue newValue) {
        if (newValue != this.value) {
            NotificationChain msgs = null;
            if (this.value != null) {
                msgs = ((InternalEObject)this.value).eInverseRemove((InternalEObject)this, 4, InstanceReferenceValueValue.class, msgs);
            }
            if (newValue != null) {
                msgs = ((InternalEObject)newValue).eInverseAdd((InternalEObject)this, 4, InstanceReferenceValueValue.class, msgs);
            }
            if ((msgs = this.basicSetValue(newValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newValue, (Object)newValue));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.value != null) {
                    msgs = ((InternalEObject)this.value).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetValue((InstanceReferenceValueValue)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setValue((InstanceReferenceValueValue)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.setValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.value != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

