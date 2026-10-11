/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GClientComSpec
 *  gautosar.gswcomponents.gportinterface.GClientServerOperation
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.communication.impl;

import autosar21.swcomponent.communication.ClientComSpec;
import autosar21.swcomponent.communication.CommunicationPackage;
import autosar21.swcomponent.communication.impl.RPortComSpecImpl;
import autosar21.swcomponent.communication.instanceref.ClientComSpecOperation;
import autosar21.swcomponent.portinterface.OperationPrototype;
import autosar21.util.Autosar21Factory;
import gautosar.gswcomponents.gcommunication.GClientComSpec;
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
public class ClientComSpecImpl
extends RPortComSpecImpl
implements ClientComSpec {
    protected ClientComSpecOperation operation;

    protected ClientComSpecImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.CLIENT_COM_SPEC;
    }

    public GClientServerOperation gGetOperation() {
        BasicEList untypedList = new BasicEList();
        ClientComSpecOperation operation = this.getOperation();
        if (operation != null) {
            untypedList.add((Object)this.getOperation());
        }
        ArrayList<OperationPrototype> resultObjects = new ArrayList<OperationPrototype>();
        resultObjects.clear();
        for (Object previousObject : untypedList) {
            OperationPrototype resultObject = ((ClientComSpecOperation)previousObject).getOperationPrototype();
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
        ClientComSpecOperation operation = this.getOperation();
        if (operation == null) {
            operation = Autosar21Factory.eINSTANCE.createClientComSpecOperation();
        }
        this.setOperation(operation);
        operation.setOperationPrototype((OperationPrototype)newGOperation);
    }

    @Override
    public ClientComSpecOperation getOperation() {
        return this.operation;
    }

    public NotificationChain basicSetOperation(ClientComSpecOperation newOperation, NotificationChain msgs) {
        ClientComSpecOperation oldOperation = this.operation;
        this.operation = newOperation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldOperation, (Object)newOperation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setOperation(ClientComSpecOperation newOperation) {
        if (newOperation != this.operation) {
            NotificationChain msgs = null;
            if (this.operation != null) {
                msgs = ((InternalEObject)this.operation).eInverseRemove((InternalEObject)this, 4, ClientComSpecOperation.class, msgs);
            }
            if (newOperation != null) {
                msgs = ((InternalEObject)newOperation).eInverseAdd((InternalEObject)this, 4, ClientComSpecOperation.class, msgs);
            }
            if ((msgs = this.basicSetOperation(newOperation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newOperation, (Object)newOperation));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.operation != null) {
                    msgs = ((InternalEObject)this.operation).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetOperation((ClientComSpecOperation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetOperation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetOperation();
            }
            case 6: {
                return this.getOperation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gSetOperation((GClientServerOperation)newValue);
                return;
            }
            case 6: {
                this.setOperation((ClientComSpecOperation)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gSetOperation(null);
                return;
            }
            case 6: {
                this.setOperation(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.gGetOperation() != null;
            }
            case 6: {
                return this.operation != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GClientComSpec.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 2;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GClientComSpec.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

