/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.bswmodule.bswinterfaces.impl;

import autosar3x.bswmodule.bswinterfaces.BswCallType;
import autosar3x.bswmodule.bswinterfaces.BswExecutionContext;
import autosar3x.bswmodule.bswinterfaces.BswModuleEntry;
import autosar3x.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar3x.commonstructure.serviceprocesstask.impl.SwServiceImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class BswModuleEntryImpl
extends SwServiceImpl
implements BswModuleEntry {
    protected static final BswCallType CALL_TYPE_EDEFAULT = BswCallType.REGULAR;
    protected BswCallType callType = CALL_TYPE_EDEFAULT;
    protected boolean callTypeESet;
    protected static final BswExecutionContext EXECUTION_CONTEXT_EDEFAULT = BswExecutionContext.INTERRUPT;
    protected BswExecutionContext executionContext = EXECUTION_CONTEXT_EDEFAULT;
    protected boolean executionContextESet;
    protected static final Boolean IS_SYNCHRONOUS_EDEFAULT = Boolean.FALSE;
    protected Boolean isSynchronous = IS_SYNCHRONOUS_EDEFAULT;
    protected boolean isSynchronousESet;
    protected static final Integer SERVICE_ID_EDEFAULT = new Integer(0);
    protected Integer serviceId = SERVICE_ID_EDEFAULT;
    protected boolean serviceIdESet;

    protected BswModuleEntryImpl() {
    }

    protected EClass eStaticClass() {
        return BswinterfacesPackage.Literals.BSW_MODULE_ENTRY;
    }

    public BswCallType getCallType() {
        return this.callType;
    }

    public void setCallType(BswCallType newCallType) {
        BswCallType oldCallType = this.callType;
        this.callType = newCallType == null ? CALL_TYPE_EDEFAULT : newCallType;
        boolean oldCallTypeESet = this.callTypeESet;
        this.callTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldCallType, (Object)this.callType, !oldCallTypeESet));
        }
    }

    public void unsetCallType() {
        BswCallType oldCallType = this.callType;
        boolean oldCallTypeESet = this.callTypeESet;
        this.callType = CALL_TYPE_EDEFAULT;
        this.callTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldCallType, (Object)CALL_TYPE_EDEFAULT, oldCallTypeESet));
        }
    }

    public boolean isSetCallType() {
        return this.callTypeESet;
    }

    public BswExecutionContext getExecutionContext() {
        return this.executionContext;
    }

    public void setExecutionContext(BswExecutionContext newExecutionContext) {
        BswExecutionContext oldExecutionContext = this.executionContext;
        this.executionContext = newExecutionContext == null ? EXECUTION_CONTEXT_EDEFAULT : newExecutionContext;
        boolean oldExecutionContextESet = this.executionContextESet;
        this.executionContextESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldExecutionContext, (Object)this.executionContext, !oldExecutionContextESet));
        }
    }

    public void unsetExecutionContext() {
        BswExecutionContext oldExecutionContext = this.executionContext;
        boolean oldExecutionContextESet = this.executionContextESet;
        this.executionContext = EXECUTION_CONTEXT_EDEFAULT;
        this.executionContextESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldExecutionContext, (Object)EXECUTION_CONTEXT_EDEFAULT, oldExecutionContextESet));
        }
    }

    public boolean isSetExecutionContext() {
        return this.executionContextESet;
    }

    public Boolean getIsSynchronous() {
        return this.isSynchronous;
    }

    public void setIsSynchronous(Boolean newIsSynchronous) {
        Boolean oldIsSynchronous = this.isSynchronous;
        this.isSynchronous = newIsSynchronous;
        boolean oldIsSynchronousESet = this.isSynchronousESet;
        this.isSynchronousESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldIsSynchronous, (Object)this.isSynchronous, !oldIsSynchronousESet));
        }
    }

    public void unsetIsSynchronous() {
        Boolean oldIsSynchronous = this.isSynchronous;
        boolean oldIsSynchronousESet = this.isSynchronousESet;
        this.isSynchronous = IS_SYNCHRONOUS_EDEFAULT;
        this.isSynchronousESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldIsSynchronous, (Object)IS_SYNCHRONOUS_EDEFAULT, oldIsSynchronousESet));
        }
    }

    public boolean isSetIsSynchronous() {
        return this.isSynchronousESet;
    }

    public Integer getServiceId() {
        return this.serviceId;
    }

    public void setServiceId(Integer newServiceId) {
        Integer oldServiceId = this.serviceId;
        this.serviceId = newServiceId;
        boolean oldServiceIdESet = this.serviceIdESet;
        this.serviceIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldServiceId, (Object)this.serviceId, !oldServiceIdESet));
        }
    }

    public void unsetServiceId() {
        Integer oldServiceId = this.serviceId;
        boolean oldServiceIdESet = this.serviceIdESet;
        this.serviceId = SERVICE_ID_EDEFAULT;
        this.serviceIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldServiceId, (Object)SERVICE_ID_EDEFAULT, oldServiceIdESet));
        }
    }

    public boolean isSetServiceId() {
        return this.serviceIdESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                return this.getCallType();
            }
            case 24: {
                return this.getExecutionContext();
            }
            case 25: {
                return this.getIsSynchronous();
            }
            case 26: {
                return this.getServiceId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.setCallType((BswCallType)((Object)newValue));
                return;
            }
            case 24: {
                this.setExecutionContext((BswExecutionContext)((Object)newValue));
                return;
            }
            case 25: {
                this.setIsSynchronous((Boolean)newValue);
                return;
            }
            case 26: {
                this.setServiceId((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 23: {
                this.unsetCallType();
                return;
            }
            case 24: {
                this.unsetExecutionContext();
                return;
            }
            case 25: {
                this.unsetIsSynchronous();
                return;
            }
            case 26: {
                this.unsetServiceId();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
                return this.isSetCallType();
            }
            case 24: {
                return this.isSetExecutionContext();
            }
            case 25: {
                return this.isSetIsSynchronous();
            }
            case 26: {
                return this.isSetServiceId();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (callType: ");
        if (this.callTypeESet) {
            result.append((Object)this.callType);
        } else {
            result.append("<unset>");
        }
        result.append(", executionContext: ");
        if (this.executionContextESet) {
            result.append((Object)this.executionContext);
        } else {
            result.append("<unset>");
        }
        result.append(", isSynchronous: ");
        if (this.isSynchronousESet) {
            result.append(this.isSynchronous);
        } else {
            result.append("<unset>");
        }
        result.append(", serviceId: ");
        if (this.serviceIdESet) {
            result.append(this.serviceId);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

