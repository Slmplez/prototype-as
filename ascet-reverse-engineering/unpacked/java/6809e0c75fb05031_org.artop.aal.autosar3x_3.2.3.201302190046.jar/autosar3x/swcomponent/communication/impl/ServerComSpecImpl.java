/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GServerComSpec
 *  gautosar.gswcomponents.gportinterface.GClientServerOperation
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
import autosar3x.swcomponent.communication.ServerComSpec;
import autosar3x.swcomponent.communication.impl.PPortComSpecImpl;
import autosar3x.swcomponent.portinterface.OperationPrototype;
import gautosar.gswcomponents.gcommunication.GServerComSpec;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;
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
public class ServerComSpecImpl
extends PPortComSpecImpl
implements ServerComSpec,
IReferringClass {
    protected static final Integer GQUEUE_LENGTH_EDEFAULT = null;
    protected OperationPrototype operation;
    protected static final Integer QUEUE_LENGTH_EDEFAULT = new Integer(0);
    protected Integer queueLength = QUEUE_LENGTH_EDEFAULT;
    protected boolean queueLengthESet;

    protected ServerComSpecImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.SERVER_COM_SPEC;
    }

    public Integer gGetQueueLength() {
        Integer tgtFeatureValue = this.getQueueLength();
        return tgtFeatureValue;
    }

    public void gSetQueueLength(Integer newGQueueLength) {
        this.setQueueLength(newGQueueLength);
    }

    public void gUnsetQueueLength() {
        this.unsetQueueLength();
    }

    public boolean gIsSetQueueLength() {
        return this.isSetQueueLength();
    }

    public GClientServerOperation gGetOperation() {
        return this.getOperation();
    }

    public void gSetOperation(GClientServerOperation newGOperation) {
        this.setOperation((OperationPrototype)newGOperation);
    }

    @Override
    public OperationPrototype getOperation() {
        if (this.operation != null && this.operation.eIsProxy()) {
            InternalEObject oldOperation = (InternalEObject)this.operation;
            this.operation = (OperationPrototype)this.eResolveProxy(oldOperation);
            if (this.operation != oldOperation && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldOperation, (Object)this.operation));
            }
        }
        return this.operation;
    }

    public OperationPrototype basicGetOperation() {
        return this.operation;
    }

    @Override
    public void setOperation(OperationPrototype newOperation) {
        OperationPrototype oldOperation = this.operation;
        this.operation = newOperation;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldOperation, (Object)this.operation));
        }
    }

    @Override
    public Integer getQueueLength() {
        return this.queueLength;
    }

    @Override
    public void setQueueLength(Integer newQueueLength) {
        Integer oldQueueLength = this.queueLength;
        this.queueLength = newQueueLength;
        boolean oldQueueLengthESet = this.queueLengthESet;
        this.queueLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldQueueLength, (Object)this.queueLength, !oldQueueLengthESet));
        }
    }

    @Override
    public void unsetQueueLength() {
        Integer oldQueueLength = this.queueLength;
        boolean oldQueueLengthESet = this.queueLengthESet;
        this.queueLength = QUEUE_LENGTH_EDEFAULT;
        this.queueLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldQueueLength, (Object)QUEUE_LENGTH_EDEFAULT, oldQueueLengthESet));
        }
    }

    @Override
    public boolean isSetQueueLength() {
        return this.queueLengthESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetQueueLength();
            }
            case 6: {
                return this.gGetOperation();
            }
            case 7: {
                if (resolve) {
                    return this.getOperation();
                }
                return this.basicGetOperation();
            }
            case 8: {
                return this.getQueueLength();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gSetQueueLength((Integer)newValue);
                return;
            }
            case 6: {
                this.gSetOperation((GClientServerOperation)newValue);
                return;
            }
            case 7: {
                this.setOperation((OperationPrototype)newValue);
                return;
            }
            case 8: {
                this.setQueueLength((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gUnsetQueueLength();
                return;
            }
            case 6: {
                this.gSetOperation(null);
                return;
            }
            case 7: {
                this.setOperation(null);
                return;
            }
            case 8: {
                this.unsetQueueLength();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.gIsSetQueueLength();
            }
            case 6: {
                return this.gGetOperation() != null;
            }
            case 7: {
                return this.operation != null;
            }
            case 8: {
                return this.isSetQueueLength();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GServerComSpec.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 2;
                }
                case 6: {
                    return 3;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GServerComSpec.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 5;
                }
                case 3: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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
        result.append(" (queueLength: ");
        if (this.queueLengthESet) {
            result.append(this.queueLength);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

