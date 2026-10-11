/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.impl;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventOperation;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventOperationTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TdeventvfbPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.impl.TDEventVfbImpl;
import autosar40.swcomponent.portinterface.ClientServerOperation;
import java.util.Map;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TDEventOperationImpl
extends TDEventVfbImpl
implements TDEventOperation,
IReferringClass {
    protected ClientServerOperation operation;
    protected static final TDEventOperationTypeEnum TD_EVENT_OPERATION_TYPE_EDEFAULT = TDEventOperationTypeEnum.OPERATION_CALLED;
    protected TDEventOperationTypeEnum tdEventOperationType = TD_EVENT_OPERATION_TYPE_EDEFAULT;
    protected boolean tdEventOperationTypeESet;

    protected TDEventOperationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return TdeventvfbPackage.Literals.TD_EVENT_OPERATION;
    }

    @Override
    public ClientServerOperation getOperation() {
        if (this.operation != null && this.operation.eIsProxy()) {
            InternalEObject oldOperation = (InternalEObject)this.operation;
            this.operation = (ClientServerOperation)this.eResolveProxy(oldOperation);
            if (this.operation != oldOperation && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldOperation, (Object)this.operation));
            }
        }
        return this.operation;
    }

    public ClientServerOperation basicGetOperation() {
        return this.operation;
    }

    @Override
    public void setOperation(ClientServerOperation newOperation) {
        ClientServerOperation oldOperation = this.operation;
        this.operation = newOperation;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldOperation, (Object)this.operation));
        }
    }

    @Override
    public TDEventOperationTypeEnum getTdEventOperationType() {
        return this.tdEventOperationType;
    }

    @Override
    public void setTdEventOperationType(TDEventOperationTypeEnum newTdEventOperationType) {
        TDEventOperationTypeEnum oldTdEventOperationType = this.tdEventOperationType;
        this.tdEventOperationType = newTdEventOperationType == null ? TD_EVENT_OPERATION_TYPE_EDEFAULT : newTdEventOperationType;
        boolean oldTdEventOperationTypeESet = this.tdEventOperationTypeESet;
        this.tdEventOperationTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldTdEventOperationType, (Object)this.tdEventOperationType, !oldTdEventOperationTypeESet));
        }
    }

    @Override
    public void unsetTdEventOperationType() {
        TDEventOperationTypeEnum oldTdEventOperationType = this.tdEventOperationType;
        boolean oldTdEventOperationTypeESet = this.tdEventOperationTypeESet;
        this.tdEventOperationType = TD_EVENT_OPERATION_TYPE_EDEFAULT;
        this.tdEventOperationTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldTdEventOperationType, (Object)TD_EVENT_OPERATION_TYPE_EDEFAULT, oldTdEventOperationTypeESet));
        }
    }

    @Override
    public boolean isSetTdEventOperationType() {
        return this.tdEventOperationTypeESet;
    }

    @Override
    public boolean IfisExternalissettoTRUEtdEventOperationTypemustbeeitheroperationCalledoroperationCallResponseReceived(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                if (resolve) {
                    return this.getOperation();
                }
                return this.basicGetOperation();
            }
            case 25: {
                return this.getTdEventOperationType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 24: {
                this.setOperation((ClientServerOperation)newValue);
                return;
            }
            case 25: {
                this.setTdEventOperationType((TDEventOperationTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.setOperation(null);
                return;
            }
            case 25: {
                this.unsetTdEventOperationType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.operation != null;
            }
            case 25: {
                return this.isSetTdEventOperationType();
            }
        }
        return super.eIsSet(featureID);
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
        result.append(" (tdEventOperationType: ");
        if (this.tdEventOperationTypeESet) {
            result.append((Object)this.tdEventOperationType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

