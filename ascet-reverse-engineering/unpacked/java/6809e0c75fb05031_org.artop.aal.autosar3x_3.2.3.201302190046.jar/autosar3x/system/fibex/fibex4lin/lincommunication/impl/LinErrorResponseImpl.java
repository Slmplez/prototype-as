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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.system.fibex.fibex4lin.lincommunication.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinErrorResponse;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar3x.system.fibex.fibex4lin.lintopology.LinSlave;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class LinErrorResponseImpl
extends ARObjectImpl
implements LinErrorResponse,
IReferringClass {
    protected LinFrameTriggering frameTriggering;
    protected static final Integer RESPONSE_ERROR_POSITION_EDEFAULT = new Integer(0);
    protected Integer responseErrorPosition = RESPONSE_ERROR_POSITION_EDEFAULT;
    protected boolean responseErrorPositionESet;

    protected LinErrorResponseImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.LIN_ERROR_RESPONSE;
    }

    public LinSlave getLinSlave() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (LinSlave)this.eContainer();
    }

    public NotificationChain basicSetLinSlave(LinSlave newLinSlave, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newLinSlave, 4, msgs);
        return msgs;
    }

    public void setLinSlave(LinSlave newLinSlave) {
        if (newLinSlave != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newLinSlave != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newLinSlave)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newLinSlave != null) {
                msgs = ((InternalEObject)newLinSlave).eInverseAdd((InternalEObject)this, 20, LinSlave.class, msgs);
            }
            if ((msgs = this.basicSetLinSlave(newLinSlave, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newLinSlave, (Object)newLinSlave));
        }
    }

    public LinFrameTriggering getFrameTriggering() {
        if (this.frameTriggering != null && this.frameTriggering.eIsProxy()) {
            InternalEObject oldFrameTriggering = (InternalEObject)this.frameTriggering;
            this.frameTriggering = (LinFrameTriggering)this.eResolveProxy(oldFrameTriggering);
            if (this.frameTriggering != oldFrameTriggering && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldFrameTriggering, (Object)this.frameTriggering));
            }
        }
        return this.frameTriggering;
    }

    public LinFrameTriggering basicGetFrameTriggering() {
        return this.frameTriggering;
    }

    public void setFrameTriggering(LinFrameTriggering newFrameTriggering) {
        LinFrameTriggering oldFrameTriggering = this.frameTriggering;
        this.frameTriggering = newFrameTriggering;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldFrameTriggering, (Object)this.frameTriggering));
        }
    }

    public Integer getResponseErrorPosition() {
        return this.responseErrorPosition;
    }

    public void setResponseErrorPosition(Integer newResponseErrorPosition) {
        Integer oldResponseErrorPosition = this.responseErrorPosition;
        this.responseErrorPosition = newResponseErrorPosition;
        boolean oldResponseErrorPositionESet = this.responseErrorPositionESet;
        this.responseErrorPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldResponseErrorPosition, (Object)this.responseErrorPosition, !oldResponseErrorPositionESet));
        }
    }

    public void unsetResponseErrorPosition() {
        Integer oldResponseErrorPosition = this.responseErrorPosition;
        boolean oldResponseErrorPositionESet = this.responseErrorPositionESet;
        this.responseErrorPosition = RESPONSE_ERROR_POSITION_EDEFAULT;
        this.responseErrorPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldResponseErrorPosition, (Object)RESPONSE_ERROR_POSITION_EDEFAULT, oldResponseErrorPositionESet));
        }
    }

    public boolean isSetResponseErrorPosition() {
        return this.responseErrorPositionESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetLinSlave((LinSlave)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetLinSlave(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, LinSlave.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getLinSlave();
            }
            case 5: {
                if (resolve) {
                    return this.getFrameTriggering();
                }
                return this.basicGetFrameTriggering();
            }
            case 6: {
                return this.getResponseErrorPosition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setLinSlave((LinSlave)newValue);
                return;
            }
            case 5: {
                this.setFrameTriggering((LinFrameTriggering)newValue);
                return;
            }
            case 6: {
                this.setResponseErrorPosition((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setLinSlave(null);
                return;
            }
            case 5: {
                this.setFrameTriggering(null);
                return;
            }
            case 6: {
                this.unsetResponseErrorPosition();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getLinSlave() != null;
            }
            case 5: {
                return this.frameTriggering != null;
            }
            case 6: {
                return this.isSetResponseErrorPosition();
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (responseErrorPosition: ");
        if (this.responseErrorPositionESet) {
            result.append(this.responseErrorPosition);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

