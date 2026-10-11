/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.datamapping.impl;

import autosar3x.system.datamapping.DatamappingPackage;
import autosar3x.system.datamapping.SenderReceiverToSignalMapping;
import autosar3x.system.datamapping.impl.DataMappingImpl;
import autosar3x.system.datamapping.instanceref.SenderReceiverToSignalMappingDataElement;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignal;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SenderReceiverToSignalMappingImpl
extends DataMappingImpl
implements SenderReceiverToSignalMapping,
IReferringClass {
    protected SenderReceiverToSignalMappingDataElement dataElement;
    protected SystemSignal signal;

    protected SenderReceiverToSignalMappingImpl() {
    }

    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.SENDER_RECEIVER_TO_SIGNAL_MAPPING;
    }

    public SenderReceiverToSignalMappingDataElement getDataElement() {
        return this.dataElement;
    }

    public NotificationChain basicSetDataElement(SenderReceiverToSignalMappingDataElement newDataElement, NotificationChain msgs) {
        SenderReceiverToSignalMappingDataElement oldDataElement = this.dataElement;
        this.dataElement = newDataElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDataElement, (Object)newDataElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setDataElement(SenderReceiverToSignalMappingDataElement newDataElement) {
        if (newDataElement != this.dataElement) {
            NotificationChain msgs = null;
            if (this.dataElement != null) {
                msgs = ((InternalEObject)this.dataElement).eInverseRemove((InternalEObject)this, 4, SenderReceiverToSignalMappingDataElement.class, msgs);
            }
            if (newDataElement != null) {
                msgs = ((InternalEObject)newDataElement).eInverseAdd((InternalEObject)this, 4, SenderReceiverToSignalMappingDataElement.class, msgs);
            }
            if ((msgs = this.basicSetDataElement(newDataElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newDataElement, (Object)newDataElement));
        }
    }

    public SystemSignal getSignal() {
        if (this.signal != null && this.signal.eIsProxy()) {
            InternalEObject oldSignal = (InternalEObject)this.signal;
            this.signal = (SystemSignal)this.eResolveProxy(oldSignal);
            if (this.signal != oldSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldSignal, (Object)this.signal));
            }
        }
        return this.signal;
    }

    public SystemSignal basicGetSignal() {
        return this.signal;
    }

    public void setSignal(SystemSignal newSignal) {
        SystemSignal oldSignal = this.signal;
        this.signal = newSignal;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSignal, (Object)this.signal));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.dataElement != null) {
                    msgs = ((InternalEObject)this.dataElement).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetDataElement((SenderReceiverToSignalMappingDataElement)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetDataElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getDataElement();
            }
            case 6: {
                if (resolve) {
                    return this.getSignal();
                }
                return this.basicGetSignal();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setDataElement((SenderReceiverToSignalMappingDataElement)newValue);
                return;
            }
            case 6: {
                this.setSignal((SystemSignal)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setDataElement(null);
                return;
            }
            case 6: {
                this.setSignal(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.dataElement != null;
            }
            case 6: {
                return this.signal != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

