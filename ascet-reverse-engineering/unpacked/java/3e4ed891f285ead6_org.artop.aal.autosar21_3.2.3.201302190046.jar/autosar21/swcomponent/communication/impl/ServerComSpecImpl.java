/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GServerComSpec
 *  gautosar.gswcomponents.gportinterface.GClientServerOperation
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.communication.impl;

import autosar21.swcomponent.communication.CommunicationPackage;
import autosar21.swcomponent.communication.ServerComSpec;
import autosar21.swcomponent.communication.impl.PPortComSpecImpl;
import autosar21.swcomponent.communication.instanceref.ServerComSpecOperation;
import autosar21.swcomponent.portinterface.OperationPrototype;
import autosar21.util.Autosar21Factory;
import gautosar.gswcomponents.gcommunication.GServerComSpec;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;
import java.util.ArrayList;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ServerComSpecImpl
extends PPortComSpecImpl
implements ServerComSpec {
    protected static final Integer GQUEUE_LENGTH_EDEFAULT = null;
    protected ServerComSpecOperation operation;
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
        BasicEList untypedList = new BasicEList();
        ServerComSpecOperation operation = this.getOperation();
        if (operation != null) {
            untypedList.add((Object)this.getOperation());
        }
        ArrayList<OperationPrototype> resultObjects = new ArrayList<OperationPrototype>();
        resultObjects.clear();
        for (Object previousObject : untypedList) {
            OperationPrototype resultObject = ((ServerComSpecOperation)previousObject).getOperationPrototype();
            if (resultObject == null) continue;
            resultObjects.add(resultObject);
        }
        untypedList.clear();
        untypedList.addAll(resultObjects);
        if (untypedList.isEmpty()) {
            return null;
        }
        return (GClientServerOperation)untypedList.get(0);
    }

    public void gSetOperation(GClientServerOperation newGOperation) {
        ServerComSpecOperation operation = this.getOperation();
        if (operation == null) {
            operation = Autosar21Factory.eINSTANCE.createServerComSpecOperation();
        }
        this.setOperation(operation);
        operation.setOperationPrototype((OperationPrototype)newGOperation);
    }

    @Override
    public ServerComSpecOperation getOperation() {
        return this.operation;
    }

    public NotificationChain basicSetOperation(ServerComSpecOperation newOperation, NotificationChain msgs) {
        ServerComSpecOperation oldOperation = this.operation;
        this.operation = newOperation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldOperation, (Object)newOperation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setOperation(ServerComSpecOperation newOperation) {
        if (newOperation != this.operation) {
            NotificationChain msgs = null;
            if (this.operation != null) {
                msgs = ((InternalEObject)this.operation).eInverseRemove((InternalEObject)this, 4, ServerComSpecOperation.class, msgs);
            }
            if (newOperation != null) {
                msgs = ((InternalEObject)newOperation).eInverseAdd((InternalEObject)this, 4, ServerComSpecOperation.class, msgs);
            }
            if ((msgs = this.basicSetOperation(newOperation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newOperation, (Object)newOperation));
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
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                if (this.operation != null) {
                    msgs = ((InternalEObject)this.operation).eInverseRemove((InternalEObject)this, -8, null, msgs);
                }
                return this.basicSetOperation((ServerComSpecOperation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return this.basicSetOperation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
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
                return this.getOperation();
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
                this.setOperation((ServerComSpecOperation)newValue);
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

