/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibex4flexray.flexraycommunication.impl;

import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayAbsolutelyScheduledTiming;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrameTriggering;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.impl.FrameTriggeringImpl;
import java.util.Collection;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
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
    protected EList<FlexrayAbsolutelyScheduledTiming> absolutelyScheduledTimings;
    protected static final Boolean ALLOW_DYNAMIC_LSDU_LENGTH_EDEFAULT = Boolean.FALSE;
    protected Boolean allowDynamicLSduLength = ALLOW_DYNAMIC_LSDU_LENGTH_EDEFAULT;
    protected boolean allowDynamicLSduLengthESet;
    protected static final PositiveIntegerDatatype MESSAGE_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype messageId = MESSAGE_ID_EDEFAULT.clone();
    protected boolean messageIdESet;
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
    public EList<FlexrayAbsolutelyScheduledTiming> getAbsolutelyScheduledTimings() {
        if (this.absolutelyScheduledTimings == null) {
            this.absolutelyScheduledTimings = new EObjectContainmentWithInverseEList(FlexrayAbsolutelyScheduledTiming.class, (InternalEObject)this, 23, 4);
        }
        return this.absolutelyScheduledTimings;
    }

    @Override
    public Boolean getAllowDynamicLSduLength() {
        return this.allowDynamicLSduLength;
    }

    @Override
    public void setAllowDynamicLSduLength(Boolean newAllowDynamicLSduLength) {
        Boolean oldAllowDynamicLSduLength = this.allowDynamicLSduLength;
        this.allowDynamicLSduLength = newAllowDynamicLSduLength;
        boolean oldAllowDynamicLSduLengthESet = this.allowDynamicLSduLengthESet;
        this.allowDynamicLSduLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldAllowDynamicLSduLength, (Object)this.allowDynamicLSduLength, !oldAllowDynamicLSduLengthESet));
        }
    }

    @Override
    public void unsetAllowDynamicLSduLength() {
        Boolean oldAllowDynamicLSduLength = this.allowDynamicLSduLength;
        boolean oldAllowDynamicLSduLengthESet = this.allowDynamicLSduLengthESet;
        this.allowDynamicLSduLength = ALLOW_DYNAMIC_LSDU_LENGTH_EDEFAULT;
        this.allowDynamicLSduLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldAllowDynamicLSduLength, (Object)ALLOW_DYNAMIC_LSDU_LENGTH_EDEFAULT, oldAllowDynamicLSduLengthESet));
        }
    }

    @Override
    public boolean isSetAllowDynamicLSduLength() {
        return this.allowDynamicLSduLengthESet;
    }

    @Override
    public Long getMessageId() {
        return (Long)this.messageId.basicGetValue();
    }

    @Override
    public void setMessageId(Long newMessageId) {
        Long oldMessageId = (Long)this.messageId.basicGetValue();
        this.messageId.basicSetValue((Object)newMessageId);
        boolean oldMessageIdESet = this.messageIdESet;
        this.messageIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldMessageId, (Object)newMessageId, !oldMessageIdESet));
        }
    }

    @Override
    public void unsetMessageId() {
        Long oldMessageId = (Long)this.messageId.basicGetValue();
        boolean oldMessageIdESet = this.messageIdESet;
        this.messageId = MESSAGE_ID_EDEFAULT.clone();
        this.messageIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldMessageId, (Object)MESSAGE_ID_EDEFAULT, oldMessageIdESet));
        }
    }

    @Override
    public boolean isSetMessageId() {
        return this.messageIdESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldPayloadPreambleIndicator, (Object)this.payloadPreambleIndicator, !oldPayloadPreambleIndicatorESet));
        }
    }

    @Override
    public void unsetPayloadPreambleIndicator() {
        Boolean oldPayloadPreambleIndicator = this.payloadPreambleIndicator;
        boolean oldPayloadPreambleIndicatorESet = this.payloadPreambleIndicatorESet;
        this.payloadPreambleIndicator = PAYLOAD_PREAMBLE_INDICATOR_EDEFAULT;
        this.payloadPreambleIndicatorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldPayloadPreambleIndicator, (Object)PAYLOAD_PREAMBLE_INDICATOR_EDEFAULT, oldPayloadPreambleIndicatorESet));
        }
    }

    @Override
    public boolean isSetPayloadPreambleIndicator() {
        return this.payloadPreambleIndicatorESet;
    }

    @Override
    public PositiveIntegerDatatype getMessageIdData() {
        return this.messageId.clone();
    }

    @Override
    public void setMessageIdData(PositiveIntegerDatatype newMessageId) {
        this.messageId.setRadix((int)newMessageId.getRadix());
        this.messageId.setNoOfDigits((int)newMessageId.getNoOfDigits());
        this.setMessageId(newMessageId.getValue());
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getAbsolutelyScheduledTimings()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getAbsolutelyScheduledTimings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                return this.getAbsolutelyScheduledTimings();
            }
            case 24: {
                return this.getAllowDynamicLSduLength();
            }
            case 25: {
                return this.getMessageId();
            }
            case 26: {
                return this.getPayloadPreambleIndicator();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.getAbsolutelyScheduledTimings().clear();
                this.getAbsolutelyScheduledTimings().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.setAllowDynamicLSduLength((Boolean)newValue);
                return;
            }
            case 25: {
                this.setMessageId((Long)newValue);
                return;
            }
            case 26: {
                this.setPayloadPreambleIndicator((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 23: {
                this.getAbsolutelyScheduledTimings().clear();
                return;
            }
            case 24: {
                this.unsetAllowDynamicLSduLength();
                return;
            }
            case 25: {
                this.unsetMessageId();
                return;
            }
            case 26: {
                this.unsetPayloadPreambleIndicator();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
                return this.absolutelyScheduledTimings != null && !this.absolutelyScheduledTimings.isEmpty();
            }
            case 24: {
                return this.isSetAllowDynamicLSduLength();
            }
            case 25: {
                return this.isSetMessageId();
            }
            case 26: {
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
        result.append(" (allowDynamicLSduLength: ");
        if (this.allowDynamicLSduLengthESet) {
            result.append(this.allowDynamicLSduLength);
        } else {
            result.append("<unset>");
        }
        result.append(", messageId: ");
        if (this.messageIdESet) {
            result.append(this.messageId);
        } else {
            result.append("<unset>");
        }
        result.append(", payloadPreambleIndicator: ");
        if (this.payloadPreambleIndicatorESet) {
            result.append(this.payloadPreambleIndicator);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

