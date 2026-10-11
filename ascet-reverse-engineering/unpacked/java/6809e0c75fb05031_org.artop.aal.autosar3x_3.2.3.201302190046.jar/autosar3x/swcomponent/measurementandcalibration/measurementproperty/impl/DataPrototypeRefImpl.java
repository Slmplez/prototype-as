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
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.DataPrototypeRef;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.DataPrototypeRefDataPrototype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DataPrototypeRefImpl
extends SwVariableRefProxyImpl
implements DataPrototypeRef {
    protected DataPrototypeRefDataPrototype dataPrototype;

    protected DataPrototypeRefImpl() {
    }

    protected EClass eStaticClass() {
        return MeasurementpropertyPackage.Literals.DATA_PROTOTYPE_REF;
    }

    public DataPrototypeRefDataPrototype getDataPrototype() {
        return this.dataPrototype;
    }

    public NotificationChain basicSetDataPrototype(DataPrototypeRefDataPrototype newDataPrototype, NotificationChain msgs) {
        DataPrototypeRefDataPrototype oldDataPrototype = this.dataPrototype;
        this.dataPrototype = newDataPrototype;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldDataPrototype, (Object)newDataPrototype);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setDataPrototype(DataPrototypeRefDataPrototype newDataPrototype) {
        if (newDataPrototype != this.dataPrototype) {
            NotificationChain msgs = null;
            if (this.dataPrototype != null) {
                msgs = ((InternalEObject)this.dataPrototype).eInverseRemove((InternalEObject)this, 4, DataPrototypeRefDataPrototype.class, msgs);
            }
            if (newDataPrototype != null) {
                msgs = ((InternalEObject)newDataPrototype).eInverseAdd((InternalEObject)this, 4, DataPrototypeRefDataPrototype.class, msgs);
            }
            if ((msgs = this.basicSetDataPrototype(newDataPrototype, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDataPrototype, (Object)newDataPrototype));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.dataPrototype != null) {
                    msgs = ((InternalEObject)this.dataPrototype).eInverseRemove((InternalEObject)this, -5, null, msgs);
                }
                return this.basicSetDataPrototype((DataPrototypeRefDataPrototype)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetDataPrototype(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDataPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setDataPrototype((DataPrototypeRefDataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setDataPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.dataPrototype != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

