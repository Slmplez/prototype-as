/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcommunication.GClientComSpec
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

import autosar3x.swcomponent.communication.ClientComSpec;
import autosar3x.swcomponent.communication.CommunicationPackage;
import autosar3x.swcomponent.communication.impl.RPortComSpecImpl;
import autosar3x.swcomponent.portinterface.OperationPrototype;
import gautosar.gswcomponents.gcommunication.GClientComSpec;
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
public class ClientComSpecImpl
extends RPortComSpecImpl
implements ClientComSpec,
IReferringClass {
    protected OperationPrototype operation;

    protected ClientComSpecImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.CLIENT_COM_SPEC;
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
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldOperation, (Object)this.operation));
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
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldOperation, (Object)this.operation));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetOperation();
            }
            case 6: {
                if (resolve) {
                    return this.getOperation();
                }
                return this.basicGetOperation();
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
                this.setOperation((OperationPrototype)newValue);
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
}

