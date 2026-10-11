/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.transportprotocols.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.transportprotocols.CanTpChannel;
import autosar40.system.transportprotocols.CanTpChannelModeType;
import autosar40.system.transportprotocols.CanTpConfig;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CanTpChannelImpl
extends IdentifiableImpl
implements CanTpChannel {
    protected static final PositiveIntegerDatatype CHANNEL_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype channelId = CHANNEL_ID_EDEFAULT.clone();
    protected boolean channelIdESet;
    protected static final CanTpChannelModeType CHANNEL_MODE_EDEFAULT = CanTpChannelModeType.FULL_DUPLEX_MODE;
    protected CanTpChannelModeType channelMode = CHANNEL_MODE_EDEFAULT;
    protected boolean channelModeESet;
    protected VariationPoint variationPoint;

    protected CanTpChannelImpl() {
    }

    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.CAN_TP_CHANNEL;
    }

    public CanTpConfig getCanTpConfig() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (CanTpConfig)this.eContainer();
    }

    public NotificationChain basicSetCanTpConfig(CanTpConfig newCanTpConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCanTpConfig, 18, msgs);
        return msgs;
    }

    public void setCanTpConfig(CanTpConfig newCanTpConfig) {
        if (newCanTpConfig != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newCanTpConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCanTpConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCanTpConfig != null) {
                msgs = ((InternalEObject)newCanTpConfig).eInverseAdd((InternalEObject)this, 23, CanTpConfig.class, msgs);
            }
            if ((msgs = this.basicSetCanTpConfig(newCanTpConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newCanTpConfig, (Object)newCanTpConfig));
        }
    }

    public Long getChannelId() {
        return (Long)this.channelId.basicGetValue();
    }

    public void setChannelId(Long newChannelId) {
        Long oldChannelId = (Long)this.channelId.basicGetValue();
        this.channelId.basicSetValue((Object)newChannelId);
        boolean oldChannelIdESet = this.channelIdESet;
        this.channelIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldChannelId, (Object)newChannelId, !oldChannelIdESet));
        }
    }

    public void unsetChannelId() {
        Long oldChannelId = (Long)this.channelId.basicGetValue();
        boolean oldChannelIdESet = this.channelIdESet;
        this.channelId = CHANNEL_ID_EDEFAULT.clone();
        this.channelIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldChannelId, (Object)CHANNEL_ID_EDEFAULT, oldChannelIdESet));
        }
    }

    public boolean isSetChannelId() {
        return this.channelIdESet;
    }

    public CanTpChannelModeType getChannelMode() {
        return this.channelMode;
    }

    public void setChannelMode(CanTpChannelModeType newChannelMode) {
        CanTpChannelModeType oldChannelMode = this.channelMode;
        this.channelMode = newChannelMode == null ? CHANNEL_MODE_EDEFAULT : newChannelMode;
        boolean oldChannelModeESet = this.channelModeESet;
        this.channelModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldChannelMode, (Object)this.channelMode, !oldChannelModeESet));
        }
    }

    public void unsetChannelMode() {
        CanTpChannelModeType oldChannelMode = this.channelMode;
        boolean oldChannelModeESet = this.channelModeESet;
        this.channelMode = CHANNEL_MODE_EDEFAULT;
        this.channelModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldChannelMode, (Object)CHANNEL_MODE_EDEFAULT, oldChannelModeESet));
        }
    }

    public boolean isSetChannelMode() {
        return this.channelModeESet;
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public PositiveIntegerDatatype getChannelIdData() {
        return this.channelId.clone();
    }

    public void setChannelIdData(PositiveIntegerDatatype newChannelId) {
        this.channelId.setRadix((int)newChannelId.getRadix());
        this.channelId.setNoOfDigits((int)newChannelId.getNoOfDigits());
        this.setChannelId(newChannelId.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCanTpConfig((CanTpConfig)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetCanTpConfig(null, msgs);
            }
            case 21: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, CanTpConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getCanTpConfig();
            }
            case 19: {
                return this.getChannelId();
            }
            case 20: {
                return this.getChannelMode();
            }
            case 21: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setCanTpConfig((CanTpConfig)newValue);
                return;
            }
            case 19: {
                this.setChannelId((Long)newValue);
                return;
            }
            case 20: {
                this.setChannelMode((CanTpChannelModeType)((Object)newValue));
                return;
            }
            case 21: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setCanTpConfig(null);
                return;
            }
            case 19: {
                this.unsetChannelId();
                return;
            }
            case 20: {
                this.unsetChannelMode();
                return;
            }
            case 21: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getCanTpConfig() != null;
            }
            case 19: {
                return this.isSetChannelId();
            }
            case 20: {
                return this.isSetChannelMode();
            }
            case 21: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (channelId: ");
        if (this.channelIdESet) {
            result.append(this.channelId);
        } else {
            result.append("<unset>");
        }
        result.append(", channelMode: ");
        if (this.channelModeESet) {
            result.append((Object)this.channelMode);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

