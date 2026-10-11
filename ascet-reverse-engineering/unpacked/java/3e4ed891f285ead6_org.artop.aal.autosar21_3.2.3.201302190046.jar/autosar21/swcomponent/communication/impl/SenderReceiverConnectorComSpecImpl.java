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
package autosar21.swcomponent.communication.impl;

import autosar21.swcomponent.communication.CommunicationPackage;
import autosar21.swcomponent.communication.SenderReceiverConnectorComSpec;
import autosar21.swcomponent.communication.impl.ConnectorComSpecImpl;
import autosar21.swcomponent.communication.instanceref.SenderReceiverConnectorComSpecDataElement;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SenderReceiverConnectorComSpecImpl
extends ConnectorComSpecImpl
implements SenderReceiverConnectorComSpec {
    protected SenderReceiverConnectorComSpecDataElement dataElement;
    protected static final Double MAX_RESPONSE_TIME_EDEFAULT = new Double(0.0);
    protected Double maxResponseTime = MAX_RESPONSE_TIME_EDEFAULT;
    protected boolean maxResponseTimeESet;
    protected static final Double MIN_RESPONSE_TIME_EDEFAULT = new Double(0.0);
    protected Double minResponseTime = MIN_RESPONSE_TIME_EDEFAULT;
    protected boolean minResponseTimeESet;

    protected SenderReceiverConnectorComSpecImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.SENDER_RECEIVER_CONNECTOR_COM_SPEC;
    }

    public SenderReceiverConnectorComSpecDataElement getDataElement() {
        return this.dataElement;
    }

    public NotificationChain basicSetDataElement(SenderReceiverConnectorComSpecDataElement newDataElement, NotificationChain msgs) {
        SenderReceiverConnectorComSpecDataElement oldDataElement = this.dataElement;
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

    public void setDataElement(SenderReceiverConnectorComSpecDataElement newDataElement) {
        if (newDataElement != this.dataElement) {
            NotificationChain msgs = null;
            if (this.dataElement != null) {
                msgs = ((InternalEObject)this.dataElement).eInverseRemove((InternalEObject)this, 4, SenderReceiverConnectorComSpecDataElement.class, msgs);
            }
            if (newDataElement != null) {
                msgs = ((InternalEObject)newDataElement).eInverseAdd((InternalEObject)this, 4, SenderReceiverConnectorComSpecDataElement.class, msgs);
            }
            if ((msgs = this.basicSetDataElement(newDataElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newDataElement, (Object)newDataElement));
        }
    }

    public Double getMaxResponseTime() {
        return this.maxResponseTime;
    }

    public void setMaxResponseTime(Double newMaxResponseTime) {
        Double oldMaxResponseTime = this.maxResponseTime;
        this.maxResponseTime = newMaxResponseTime;
        boolean oldMaxResponseTimeESet = this.maxResponseTimeESet;
        this.maxResponseTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldMaxResponseTime, (Object)this.maxResponseTime, !oldMaxResponseTimeESet));
        }
    }

    public void unsetMaxResponseTime() {
        Double oldMaxResponseTime = this.maxResponseTime;
        boolean oldMaxResponseTimeESet = this.maxResponseTimeESet;
        this.maxResponseTime = MAX_RESPONSE_TIME_EDEFAULT;
        this.maxResponseTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldMaxResponseTime, (Object)MAX_RESPONSE_TIME_EDEFAULT, oldMaxResponseTimeESet));
        }
    }

    public boolean isSetMaxResponseTime() {
        return this.maxResponseTimeESet;
    }

    public Double getMinResponseTime() {
        return this.minResponseTime;
    }

    public void setMinResponseTime(Double newMinResponseTime) {
        Double oldMinResponseTime = this.minResponseTime;
        this.minResponseTime = newMinResponseTime;
        boolean oldMinResponseTimeESet = this.minResponseTimeESet;
        this.minResponseTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldMinResponseTime, (Object)this.minResponseTime, !oldMinResponseTimeESet));
        }
    }

    public void unsetMinResponseTime() {
        Double oldMinResponseTime = this.minResponseTime;
        boolean oldMinResponseTimeESet = this.minResponseTimeESet;
        this.minResponseTime = MIN_RESPONSE_TIME_EDEFAULT;
        this.minResponseTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldMinResponseTime, (Object)MIN_RESPONSE_TIME_EDEFAULT, oldMinResponseTimeESet));
        }
    }

    public boolean isSetMinResponseTime() {
        return this.minResponseTimeESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.dataElement != null) {
                    msgs = ((InternalEObject)this.dataElement).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetDataElement((SenderReceiverConnectorComSpecDataElement)otherEnd, msgs);
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
                return this.getMaxResponseTime();
            }
            case 7: {
                return this.getMinResponseTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setDataElement((SenderReceiverConnectorComSpecDataElement)newValue);
                return;
            }
            case 6: {
                this.setMaxResponseTime((Double)newValue);
                return;
            }
            case 7: {
                this.setMinResponseTime((Double)newValue);
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
                this.unsetMaxResponseTime();
                return;
            }
            case 7: {
                this.unsetMinResponseTime();
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
                return this.isSetMaxResponseTime();
            }
            case 7: {
                return this.isSetMinResponseTime();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (maxResponseTime: ");
        if (this.maxResponseTimeESet) {
            result.append(this.maxResponseTime);
        } else {
            result.append("<unset>");
        }
        result.append(", minResponseTime: ");
        if (this.minResponseTimeESet) {
            result.append(this.minResponseTime);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

