/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceivedEvent
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents.impl;

import autosar3x.swcomponent.swcinternalbehavior.rteevents.DataReceivedEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.RTEEventImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.DataReceivedEventData;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceivedEvent;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DataReceivedEventImpl
extends RTEEventImpl
implements DataReceivedEvent {
    protected DataReceivedEventData data;

    protected DataReceivedEventImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return RteeventsPackage.Literals.DATA_RECEIVED_EVENT;
    }

    public GRVariableInAtomicSwcIRef gGetData() {
        return this.getData();
    }

    public void gSetData(GRVariableInAtomicSwcIRef newGData) {
        this.setData((DataReceivedEventData)newGData);
    }

    @Override
    public DataReceivedEventData getData() {
        return this.data;
    }

    public NotificationChain basicSetData(DataReceivedEventData newData, NotificationChain msgs) {
        DataReceivedEventData oldData = this.data;
        this.data = newData;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldData, (Object)newData);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setData(DataReceivedEventData newData) {
        if (newData != this.data) {
            NotificationChain msgs = null;
            if (this.data != null) {
                msgs = ((InternalEObject)this.data).eInverseRemove((InternalEObject)this, 6, DataReceivedEventData.class, msgs);
            }
            if (newData != null) {
                msgs = ((InternalEObject)newData).eInverseAdd((InternalEObject)this, 6, DataReceivedEventData.class, msgs);
            }
            if ((msgs = this.basicSetData(newData, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newData, (Object)newData));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                if (this.data != null) {
                    msgs = ((InternalEObject)this.data).eInverseRemove((InternalEObject)this, -23, null, msgs);
                }
                return this.basicSetData((DataReceivedEventData)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetData(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.gGetData();
            }
            case 22: {
                return this.getData();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.gSetData((GRVariableInAtomicSwcIRef)newValue);
                return;
            }
            case 22: {
                this.setData((DataReceivedEventData)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.gSetData(null);
                return;
            }
            case 22: {
                this.setData(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.gGetData() != null;
            }
            case 22: {
                return this.data != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GDataReceivedEvent.class) {
            switch (derivedFeatureID) {
                case 21: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GDataReceivedEvent.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 21;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

