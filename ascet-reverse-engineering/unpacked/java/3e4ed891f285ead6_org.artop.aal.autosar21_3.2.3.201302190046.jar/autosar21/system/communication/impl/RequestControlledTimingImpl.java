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
package autosar21.system.communication.impl;

import autosar21.system.communication.ActiveCondition;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.Frame;
import autosar21.system.communication.RequestControlledTiming;
import autosar21.system.communication.impl.TimingImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class RequestControlledTimingImpl
extends TimingImpl
implements RequestControlledTiming,
IReferringClass {
    protected ActiveCondition activeCondition;
    protected Frame requestingFrame;
    protected static final Double RESPONSE_TIME_EDEFAULT = new Double(0.0);
    protected Double responseTime = RESPONSE_TIME_EDEFAULT;
    protected boolean responseTimeESet;

    protected RequestControlledTimingImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.REQUEST_CONTROLLED_TIMING;
    }

    public ActiveCondition getActiveCondition() {
        return this.activeCondition;
    }

    public NotificationChain basicSetActiveCondition(ActiveCondition newActiveCondition, NotificationChain msgs) {
        ActiveCondition oldActiveCondition = this.activeCondition;
        this.activeCondition = newActiveCondition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldActiveCondition, (Object)newActiveCondition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setActiveCondition(ActiveCondition newActiveCondition) {
        if (newActiveCondition != this.activeCondition) {
            NotificationChain msgs = null;
            if (this.activeCondition != null) {
                msgs = ((InternalEObject)this.activeCondition).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newActiveCondition != null) {
                msgs = ((InternalEObject)newActiveCondition).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetActiveCondition(newActiveCondition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newActiveCondition, (Object)newActiveCondition));
        }
    }

    public Frame getRequestingFrame() {
        if (this.requestingFrame != null && this.requestingFrame.eIsProxy()) {
            InternalEObject oldRequestingFrame = (InternalEObject)this.requestingFrame;
            this.requestingFrame = (Frame)this.eResolveProxy(oldRequestingFrame);
            if (this.requestingFrame != oldRequestingFrame && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldRequestingFrame, (Object)this.requestingFrame));
            }
        }
        return this.requestingFrame;
    }

    public Frame basicGetRequestingFrame() {
        return this.requestingFrame;
    }

    public void setRequestingFrame(Frame newRequestingFrame) {
        Frame oldRequestingFrame = this.requestingFrame;
        this.requestingFrame = newRequestingFrame;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldRequestingFrame, (Object)this.requestingFrame));
        }
    }

    public Double getResponseTime() {
        return this.responseTime;
    }

    public void setResponseTime(Double newResponseTime) {
        Double oldResponseTime = this.responseTime;
        this.responseTime = newResponseTime;
        boolean oldResponseTimeESet = this.responseTimeESet;
        this.responseTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldResponseTime, (Object)this.responseTime, !oldResponseTimeESet));
        }
    }

    public void unsetResponseTime() {
        Double oldResponseTime = this.responseTime;
        boolean oldResponseTimeESet = this.responseTimeESet;
        this.responseTime = RESPONSE_TIME_EDEFAULT;
        this.responseTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldResponseTime, (Object)RESPONSE_TIME_EDEFAULT, oldResponseTimeESet));
        }
    }

    public boolean isSetResponseTime() {
        return this.responseTimeESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetActiveCondition(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getActiveCondition();
            }
            case 6: {
                if (resolve) {
                    return this.getRequestingFrame();
                }
                return this.basicGetRequestingFrame();
            }
            case 7: {
                return this.getResponseTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setActiveCondition((ActiveCondition)newValue);
                return;
            }
            case 6: {
                this.setRequestingFrame((Frame)newValue);
                return;
            }
            case 7: {
                this.setResponseTime((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setActiveCondition(null);
                return;
            }
            case 6: {
                this.setRequestingFrame(null);
                return;
            }
            case 7: {
                this.unsetResponseTime();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.activeCondition != null;
            }
            case 6: {
                return this.requestingFrame != null;
            }
            case 7: {
                return this.isSetResponseTime();
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
        result.append(" (responseTime: ");
        if (this.responseTimeESet) {
            result.append(this.responseTime);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

