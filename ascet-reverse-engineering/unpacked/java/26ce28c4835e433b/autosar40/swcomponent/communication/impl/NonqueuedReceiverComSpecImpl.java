/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gconstants.GValueSpecification
 *  gautosar.gswcomponents.gcommunication.GNonqueuedReceiverComSpec
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.communication.impl;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.commonstructure.filter.DataFilter;
import autosar40.swcomponent.communication.CommunicationPackage;
import autosar40.swcomponent.communication.HandleTimeoutEnum;
import autosar40.swcomponent.communication.NonqueuedReceiverComSpec;
import autosar40.swcomponent.communication.impl.ReceiverComSpecImpl;
import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.gswcomponents.gcommunication.GNonqueuedReceiverComSpec;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NonqueuedReceiverComSpecImpl
extends ReceiverComSpecImpl
implements NonqueuedReceiverComSpec {
    protected static final Double ALIVE_TIMEOUT_EDEFAULT = new Double(0.0);
    protected Double aliveTimeout = ALIVE_TIMEOUT_EDEFAULT;
    protected boolean aliveTimeoutESet;
    protected static final Boolean ENABLE_UPDATE_EDEFAULT = Boolean.FALSE;
    protected Boolean enableUpdate = ENABLE_UPDATE_EDEFAULT;
    protected boolean enableUpdateESet;
    protected DataFilter filter;
    protected static final Boolean HANDLE_NEVER_RECEIVED_EDEFAULT = Boolean.FALSE;
    protected Boolean handleNeverReceived = HANDLE_NEVER_RECEIVED_EDEFAULT;
    protected boolean handleNeverReceivedESet;
    protected static final HandleTimeoutEnum HANDLE_TIMEOUT_TYPE_EDEFAULT = HandleTimeoutEnum.REPLACE;
    protected HandleTimeoutEnum handleTimeoutType = HANDLE_TIMEOUT_TYPE_EDEFAULT;
    protected boolean handleTimeoutTypeESet;
    protected ValueSpecification initValue;

    protected NonqueuedReceiverComSpecImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.NONQUEUED_RECEIVER_COM_SPEC;
    }

    public GValueSpecification gGetInitValue() {
        return this.getInitValue();
    }

    public void gSetInitValue(GValueSpecification newGInitValue) {
        this.setInitValue((ValueSpecification)newGInitValue);
    }

    @Override
    public Double getAliveTimeout() {
        return this.aliveTimeout;
    }

    @Override
    public void setAliveTimeout(Double newAliveTimeout) {
        Double oldAliveTimeout = this.aliveTimeout;
        this.aliveTimeout = newAliveTimeout;
        boolean oldAliveTimeoutESet = this.aliveTimeoutESet;
        this.aliveTimeoutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldAliveTimeout, (Object)this.aliveTimeout, !oldAliveTimeoutESet));
        }
    }

    @Override
    public void unsetAliveTimeout() {
        Double oldAliveTimeout = this.aliveTimeout;
        boolean oldAliveTimeoutESet = this.aliveTimeoutESet;
        this.aliveTimeout = ALIVE_TIMEOUT_EDEFAULT;
        this.aliveTimeoutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldAliveTimeout, (Object)ALIVE_TIMEOUT_EDEFAULT, oldAliveTimeoutESet));
        }
    }

    @Override
    public boolean isSetAliveTimeout() {
        return this.aliveTimeoutESet;
    }

    @Override
    public Boolean getEnableUpdate() {
        return this.enableUpdate;
    }

    @Override
    public void setEnableUpdate(Boolean newEnableUpdate) {
        Boolean oldEnableUpdate = this.enableUpdate;
        this.enableUpdate = newEnableUpdate;
        boolean oldEnableUpdateESet = this.enableUpdateESet;
        this.enableUpdateESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldEnableUpdate, (Object)this.enableUpdate, !oldEnableUpdateESet));
        }
    }

    @Override
    public void unsetEnableUpdate() {
        Boolean oldEnableUpdate = this.enableUpdate;
        boolean oldEnableUpdateESet = this.enableUpdateESet;
        this.enableUpdate = ENABLE_UPDATE_EDEFAULT;
        this.enableUpdateESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, (Object)oldEnableUpdate, (Object)ENABLE_UPDATE_EDEFAULT, oldEnableUpdateESet));
        }
    }

    @Override
    public boolean isSetEnableUpdate() {
        return this.enableUpdateESet;
    }

    @Override
    public DataFilter getFilter() {
        return this.filter;
    }

    public NotificationChain basicSetFilter(DataFilter newFilter, NotificationChain msgs) {
        DataFilter oldFilter = this.filter;
        this.filter = newFilter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldFilter, (Object)newFilter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFilter(DataFilter newFilter) {
        if (newFilter != this.filter) {
            NotificationChain msgs = null;
            if (this.filter != null) {
                msgs = ((InternalEObject)this.filter).eInverseRemove((InternalEObject)this, -17, null, msgs);
            }
            if (newFilter != null) {
                msgs = ((InternalEObject)newFilter).eInverseAdd((InternalEObject)this, -17, null, msgs);
            }
            if ((msgs = this.basicSetFilter(newFilter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newFilter, (Object)newFilter));
        }
    }

    @Override
    public Boolean getHandleNeverReceived() {
        return this.handleNeverReceived;
    }

    @Override
    public void setHandleNeverReceived(Boolean newHandleNeverReceived) {
        Boolean oldHandleNeverReceived = this.handleNeverReceived;
        this.handleNeverReceived = newHandleNeverReceived;
        boolean oldHandleNeverReceivedESet = this.handleNeverReceivedESet;
        this.handleNeverReceivedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldHandleNeverReceived, (Object)this.handleNeverReceived, !oldHandleNeverReceivedESet));
        }
    }

    @Override
    public void unsetHandleNeverReceived() {
        Boolean oldHandleNeverReceived = this.handleNeverReceived;
        boolean oldHandleNeverReceivedESet = this.handleNeverReceivedESet;
        this.handleNeverReceived = HANDLE_NEVER_RECEIVED_EDEFAULT;
        this.handleNeverReceivedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldHandleNeverReceived, (Object)HANDLE_NEVER_RECEIVED_EDEFAULT, oldHandleNeverReceivedESet));
        }
    }

    @Override
    public boolean isSetHandleNeverReceived() {
        return this.handleNeverReceivedESet;
    }

    @Override
    public HandleTimeoutEnum getHandleTimeoutType() {
        return this.handleTimeoutType;
    }

    @Override
    public void setHandleTimeoutType(HandleTimeoutEnum newHandleTimeoutType) {
        HandleTimeoutEnum oldHandleTimeoutType = this.handleTimeoutType;
        this.handleTimeoutType = newHandleTimeoutType == null ? HANDLE_TIMEOUT_TYPE_EDEFAULT : newHandleTimeoutType;
        boolean oldHandleTimeoutTypeESet = this.handleTimeoutTypeESet;
        this.handleTimeoutTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldHandleTimeoutType, (Object)this.handleTimeoutType, !oldHandleTimeoutTypeESet));
        }
    }

    @Override
    public void unsetHandleTimeoutType() {
        HandleTimeoutEnum oldHandleTimeoutType = this.handleTimeoutType;
        boolean oldHandleTimeoutTypeESet = this.handleTimeoutTypeESet;
        this.handleTimeoutType = HANDLE_TIMEOUT_TYPE_EDEFAULT;
        this.handleTimeoutTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldHandleTimeoutType, (Object)HANDLE_TIMEOUT_TYPE_EDEFAULT, oldHandleTimeoutTypeESet));
        }
    }

    @Override
    public boolean isSetHandleTimeoutType() {
        return this.handleTimeoutTypeESet;
    }

    @Override
    public ValueSpecification getInitValue() {
        return this.initValue;
    }

    public NotificationChain basicSetInitValue(ValueSpecification newInitValue, NotificationChain msgs) {
        ValueSpecification oldInitValue = this.initValue;
        this.initValue = newInitValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldInitValue, (Object)newInitValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInitValue(ValueSpecification newInitValue) {
        if (newInitValue != this.initValue) {
            NotificationChain msgs = null;
            if (this.initValue != null) {
                msgs = ((InternalEObject)this.initValue).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newInitValue != null) {
                msgs = ((InternalEObject)newInitValue).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetInitValue(newInitValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newInitValue, (Object)newInitValue));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetFilter(null, msgs);
            }
            case 19: {
                return this.basicSetInitValue(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 13: {
                return this.gGetInitValue();
            }
            case 14: {
                return this.getAliveTimeout();
            }
            case 15: {
                return this.getEnableUpdate();
            }
            case 16: {
                return this.getFilter();
            }
            case 17: {
                return this.getHandleNeverReceived();
            }
            case 18: {
                return this.getHandleTimeoutType();
            }
            case 19: {
                return this.getInitValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 13: {
                this.gSetInitValue((GValueSpecification)newValue);
                return;
            }
            case 14: {
                this.setAliveTimeout((Double)newValue);
                return;
            }
            case 15: {
                this.setEnableUpdate((Boolean)newValue);
                return;
            }
            case 16: {
                this.setFilter((DataFilter)newValue);
                return;
            }
            case 17: {
                this.setHandleNeverReceived((Boolean)newValue);
                return;
            }
            case 18: {
                this.setHandleTimeoutType((HandleTimeoutEnum)((Object)newValue));
                return;
            }
            case 19: {
                this.setInitValue((ValueSpecification)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 13: {
                this.gSetInitValue(null);
                return;
            }
            case 14: {
                this.unsetAliveTimeout();
                return;
            }
            case 15: {
                this.unsetEnableUpdate();
                return;
            }
            case 16: {
                this.setFilter(null);
                return;
            }
            case 17: {
                this.unsetHandleNeverReceived();
                return;
            }
            case 18: {
                this.unsetHandleTimeoutType();
                return;
            }
            case 19: {
                this.setInitValue(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 13: {
                return this.gGetInitValue() != null;
            }
            case 14: {
                return this.isSetAliveTimeout();
            }
            case 15: {
                return this.isSetEnableUpdate();
            }
            case 16: {
                return this.filter != null;
            }
            case 17: {
                return this.isSetHandleNeverReceived();
            }
            case 18: {
                return this.isSetHandleTimeoutType();
            }
            case 19: {
                return this.initValue != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GNonqueuedReceiverComSpec.class) {
            switch (derivedFeatureID) {
                case 13: {
                    return 3;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GNonqueuedReceiverComSpec.class) {
            switch (baseFeatureID) {
                case 3: {
                    return 13;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (aliveTimeout: ");
        if (this.aliveTimeoutESet) {
            result.append(this.aliveTimeout);
        } else {
            result.append("<unset>");
        }
        result.append(", enableUpdate: ");
        if (this.enableUpdateESet) {
            result.append(this.enableUpdate);
        } else {
            result.append("<unset>");
        }
        result.append(", handleNeverReceived: ");
        if (this.handleNeverReceivedESet) {
            result.append(this.handleNeverReceived);
        } else {
            result.append("<unset>");
        }
        result.append(", handleTimeoutType: ");
        if (this.handleTimeoutTypeESet) {
            result.append((Object)this.handleTimeoutType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

