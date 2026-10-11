/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.system.fibex.fibex4flexray.flexraycommunication.impl;

import autosar3x.system.fibex.fibex4flexray.flexraycommunication.AbsolutelyScheduledTiming;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrameTriggering;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.FrameTriggeringImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FlexrayFrameTriggeringImpl
extends FrameTriggeringImpl
implements FlexrayFrameTriggering {
    protected EList<AbsolutelyScheduledTiming> absolutelyScheduledTimings;
    protected static final Boolean PAYLOAD_PREAMBLE_INDICATOR_EDEFAULT = Boolean.FALSE;
    protected Boolean payloadPreambleIndicator = PAYLOAD_PREAMBLE_INDICATOR_EDEFAULT;
    protected boolean payloadPreambleIndicatorESet;

    protected FlexrayFrameTriggeringImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return FlexraycommunicationPackage.Literals.FLEXRAY_FRAME_TRIGGERING;
    }

    @Override
    public EList<AbsolutelyScheduledTiming> getAbsolutelyScheduledTimings() {
        if (this.absolutelyScheduledTimings == null) {
            this.absolutelyScheduledTimings = new EObjectContainmentWithInverseEList(AbsolutelyScheduledTiming.class, (InternalEObject)this, 21, 4);
        }
        return this.absolutelyScheduledTimings;
    }

    @Override
    public Boolean getPayloadPreambleIndicator() {
        return this.payloadPreambleIndicator;
    }

    @Override
    public void setPayloadPreambleIndicator(Boolean newPayloadPreambleIndicator) {
        Boolean oldPayloadPreambleIndicator = this.payloadPreambleIndicator;
        this.payloadPreambleIndicator = newPayloadPreambleIndicator;
        boolean oldPayloadPreambleIndicatorESet = this.payloadPreambleIndicatorESet;
        this.payloadPreambleIndicatorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldPayloadPreambleIndicator, (Object)this.payloadPreambleIndicator, !oldPayloadPreambleIndicatorESet));
        }
    }

    @Override
    public void unsetPayloadPreambleIndicator() {
        Boolean oldPayloadPreambleIndicator = this.payloadPreambleIndicator;
        boolean oldPayloadPreambleIndicatorESet = this.payloadPreambleIndicatorESet;
        this.payloadPreambleIndicator = PAYLOAD_PREAMBLE_INDICATOR_EDEFAULT;
        this.payloadPreambleIndicatorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldPayloadPreambleIndicator, (Object)PAYLOAD_PREAMBLE_INDICATOR_EDEFAULT, oldPayloadPreambleIndicatorESet));
        }
    }

    @Override
    public boolean isSetPayloadPreambleIndicator() {
        return this.payloadPreambleIndicatorESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getAbsolutelyScheduledTimings()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getAbsolutelyScheduledTimings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getAbsolutelyScheduledTimings();
            }
            case 22: {
                return this.getPayloadPreambleIndicator();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.getAbsolutelyScheduledTimings().clear();
                this.getAbsolutelyScheduledTimings().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setPayloadPreambleIndicator((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.getAbsolutelyScheduledTimings().clear();
                return;
            }
            case 22: {
                this.unsetPayloadPreambleIndicator();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.absolutelyScheduledTimings != null && !this.absolutelyScheduledTimings.isEmpty();
            }
            case 22: {
                return this.isSetPayloadPreambleIndicator();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (payloadPreambleIndicator: ");
        if (this.payloadPreambleIndicatorESet) {
            result.append(this.payloadPreambleIndicator);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

