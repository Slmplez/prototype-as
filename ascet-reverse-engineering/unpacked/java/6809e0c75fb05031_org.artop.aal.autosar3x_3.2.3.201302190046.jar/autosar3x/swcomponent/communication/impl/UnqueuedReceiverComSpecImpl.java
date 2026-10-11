/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gconstants.GValueSpecification
 *  gautosar.gswcomponents.gcommunication.GNonqueuedReceiverComSpec
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.swcomponent.communication.impl;

import autosar3x.swcomponent.communication.CommunicationPackage;
import autosar3x.swcomponent.communication.HandleInvalidType;
import autosar3x.swcomponent.communication.UnqueuedReceiverComSpec;
import autosar3x.swcomponent.communication.impl.ReceiverComSpecImpl;
import autosar3x.swcomponent.datatype.constants.ValueSpecification;
import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.gswcomponents.gcommunication.GNonqueuedReceiverComSpec;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class UnqueuedReceiverComSpecImpl
extends ReceiverComSpecImpl
implements UnqueuedReceiverComSpec,
IReferringClass {
    protected static final Double ALIVE_TIMEOUT_EDEFAULT = new Double(0.0);
    protected Double aliveTimeout = ALIVE_TIMEOUT_EDEFAULT;
    protected boolean aliveTimeoutESet;
    protected static final HandleInvalidType HANDLE_INVALID_EDEFAULT = HandleInvalidType.KEEP;
    protected HandleInvalidType handleInvalid = HANDLE_INVALID_EDEFAULT;
    protected boolean handleInvalidESet;
    protected static final Boolean HANDLE_NEVER_RECEIVED_EDEFAULT = Boolean.FALSE;
    protected Boolean handleNeverReceived = HANDLE_NEVER_RECEIVED_EDEFAULT;
    protected boolean handleNeverReceivedESet;
    protected ValueSpecification initValue;
    protected static final Double RESYNC_TIME_EDEFAULT = new Double(0.0);
    protected Double resyncTime = RESYNC_TIME_EDEFAULT;
    protected boolean resyncTimeESet;

    protected UnqueuedReceiverComSpecImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.UNQUEUED_RECEIVER_COM_SPEC;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldAliveTimeout, (Object)this.aliveTimeout, !oldAliveTimeoutESet));
        }
    }

    @Override
    public void unsetAliveTimeout() {
        Double oldAliveTimeout = this.aliveTimeout;
        boolean oldAliveTimeoutESet = this.aliveTimeoutESet;
        this.aliveTimeout = ALIVE_TIMEOUT_EDEFAULT;
        this.aliveTimeoutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldAliveTimeout, (Object)ALIVE_TIMEOUT_EDEFAULT, oldAliveTimeoutESet));
        }
    }

    @Override
    public boolean isSetAliveTimeout() {
        return this.aliveTimeoutESet;
    }

    @Override
    public HandleInvalidType getHandleInvalid() {
        return this.handleInvalid;
    }

    @Override
    public void setHandleInvalid(HandleInvalidType newHandleInvalid) {
        HandleInvalidType oldHandleInvalid = this.handleInvalid;
        this.handleInvalid = newHandleInvalid == null ? HANDLE_INVALID_EDEFAULT : newHandleInvalid;
        boolean oldHandleInvalidESet = this.handleInvalidESet;
        this.handleInvalidESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldHandleInvalid, (Object)this.handleInvalid, !oldHandleInvalidESet));
        }
    }

    @Override
    public void unsetHandleInvalid() {
        HandleInvalidType oldHandleInvalid = this.handleInvalid;
        boolean oldHandleInvalidESet = this.handleInvalidESet;
        this.handleInvalid = HANDLE_INVALID_EDEFAULT;
        this.handleInvalidESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldHandleInvalid, (Object)HANDLE_INVALID_EDEFAULT, oldHandleInvalidESet));
        }
    }

    @Override
    public boolean isSetHandleInvalid() {
        return this.handleInvalidESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldHandleNeverReceived, (Object)this.handleNeverReceived, !oldHandleNeverReceivedESet));
        }
    }

    @Override
    public void unsetHandleNeverReceived() {
        Boolean oldHandleNeverReceived = this.handleNeverReceived;
        boolean oldHandleNeverReceivedESet = this.handleNeverReceivedESet;
        this.handleNeverReceived = HANDLE_NEVER_RECEIVED_EDEFAULT;
        this.handleNeverReceivedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldHandleNeverReceived, (Object)HANDLE_NEVER_RECEIVED_EDEFAULT, oldHandleNeverReceivedESet));
        }
    }

    @Override
    public boolean isSetHandleNeverReceived() {
        return this.handleNeverReceivedESet;
    }

    @Override
    public ValueSpecification getInitValue() {
        if (this.initValue != null && this.initValue.eIsProxy()) {
            InternalEObject oldInitValue = (InternalEObject)this.initValue;
            this.initValue = (ValueSpecification)this.eResolveProxy(oldInitValue);
            if (this.initValue != oldInitValue && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 13, (Object)oldInitValue, (Object)this.initValue));
            }
        }
        return this.initValue;
    }

    public ValueSpecification basicGetInitValue() {
        return this.initValue;
    }

    @Override
    public void setInitValue(ValueSpecification newInitValue) {
        ValueSpecification oldInitValue = this.initValue;
        this.initValue = newInitValue;
        AutosarObjectUtil.setDest((EObject)this, (int)13, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldInitValue, (Object)this.initValue));
        }
    }

    @Override
    public Double getResyncTime() {
        return this.resyncTime;
    }

    @Override
    public void setResyncTime(Double newResyncTime) {
        Double oldResyncTime = this.resyncTime;
        this.resyncTime = newResyncTime;
        boolean oldResyncTimeESet = this.resyncTimeESet;
        this.resyncTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldResyncTime, (Object)this.resyncTime, !oldResyncTimeESet));
        }
    }

    @Override
    public void unsetResyncTime() {
        Double oldResyncTime = this.resyncTime;
        boolean oldResyncTimeESet = this.resyncTimeESet;
        this.resyncTime = RESYNC_TIME_EDEFAULT;
        this.resyncTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldResyncTime, (Object)RESYNC_TIME_EDEFAULT, oldResyncTimeESet));
        }
    }

    @Override
    public boolean isSetResyncTime() {
        return this.resyncTimeESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                return this.gGetInitValue();
            }
            case 10: {
                return this.getAliveTimeout();
            }
            case 11: {
                return this.getHandleInvalid();
            }
            case 12: {
                return this.getHandleNeverReceived();
            }
            case 13: {
                if (resolve) {
                    return this.getInitValue();
                }
                return this.basicGetInitValue();
            }
            case 14: {
                return this.getResyncTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.gSetInitValue((GValueSpecification)newValue);
                return;
            }
            case 10: {
                this.setAliveTimeout((Double)newValue);
                return;
            }
            case 11: {
                this.setHandleInvalid((HandleInvalidType)((Object)newValue));
                return;
            }
            case 12: {
                this.setHandleNeverReceived((Boolean)newValue);
                return;
            }
            case 13: {
                this.setInitValue((ValueSpecification)newValue);
                return;
            }
            case 14: {
                this.setResyncTime((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.gSetInitValue(null);
                return;
            }
            case 10: {
                this.unsetAliveTimeout();
                return;
            }
            case 11: {
                this.unsetHandleInvalid();
                return;
            }
            case 12: {
                this.unsetHandleNeverReceived();
                return;
            }
            case 13: {
                this.setInitValue(null);
                return;
            }
            case 14: {
                this.unsetResyncTime();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 9: {
                return this.gGetInitValue() != null;
            }
            case 10: {
                return this.isSetAliveTimeout();
            }
            case 11: {
                return this.isSetHandleInvalid();
            }
            case 12: {
                return this.isSetHandleNeverReceived();
            }
            case 13: {
                return this.initValue != null;
            }
            case 14: {
                return this.isSetResyncTime();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GNonqueuedReceiverComSpec.class) {
            switch (derivedFeatureID) {
                case 9: {
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
                    return 9;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    @Override
    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    @Override
    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    @Override
    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
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
        result.append(", handleInvalid: ");
        if (this.handleInvalidESet) {
            result.append((Object)this.handleInvalid);
        } else {
            result.append("<unset>");
        }
        result.append(", handleNeverReceived: ");
        if (this.handleNeverReceivedESet) {
            result.append(this.handleNeverReceived);
        } else {
            result.append("<unset>");
        }
        result.append(", resyncTime: ");
        if (this.resyncTimeESet) {
            result.append(this.resyncTime);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

