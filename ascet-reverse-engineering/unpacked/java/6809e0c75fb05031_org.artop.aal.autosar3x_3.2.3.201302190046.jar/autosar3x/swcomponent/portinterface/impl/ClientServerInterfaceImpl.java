/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GApplicationError
 *  gautosar.gswcomponents.gportinterface.GClientServerInterface
 *  gautosar.gswcomponents.gportinterface.GClientServerOperation
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.swcomponent.portinterface.impl;

import autosar3x.swcomponent.portinterface.ApplicationError;
import autosar3x.swcomponent.portinterface.ClientServerInterface;
import autosar3x.swcomponent.portinterface.OperationPrototype;
import autosar3x.swcomponent.portinterface.PortinterfacePackage;
import autosar3x.swcomponent.portinterface.impl.PortInterfaceImpl;
import gautosar.gswcomponents.gportinterface.GApplicationError;
import gautosar.gswcomponents.gportinterface.GClientServerInterface;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ClientServerInterfaceImpl
extends PortInterfaceImpl
implements ClientServerInterface {
    protected EList<OperationPrototype> operations;
    protected EList<ApplicationError> possibleErrors;

    protected ClientServerInterfaceImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.CLIENT_SERVER_INTERFACE;
    }

    public EList<GClientServerOperation> gGetOperations() {
        EList<OperationPrototype> untypedList = this.getOperations();
        return untypedList;
    }

    public EList<GApplicationError> gGetPossibleErrors() {
        EList<ApplicationError> untypedList = this.getPossibleErrors();
        return untypedList;
    }

    @Override
    public EList<OperationPrototype> getOperations() {
        if (this.operations == null) {
            this.operations = new EObjectContainmentWithInverseEList(OperationPrototype.class, (InternalEObject)this, 23, 19);
        }
        return this.operations;
    }

    @Override
    public EList<ApplicationError> getPossibleErrors() {
        if (this.possibleErrors == null) {
            this.possibleErrors = new EObjectContainmentWithInverseEList(ApplicationError.class, (InternalEObject)this, 24, 18);
        }
        return this.possibleErrors;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getOperations()).basicAdd((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getPossibleErrors()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getOperations()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getPossibleErrors()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.gGetOperations();
            }
            case 22: {
                return this.gGetPossibleErrors();
            }
            case 23: {
                return this.getOperations();
            }
            case 24: {
                return this.getPossibleErrors();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.gGetOperations().clear();
                this.gGetOperations().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.gGetPossibleErrors().clear();
                this.gGetPossibleErrors().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getOperations().clear();
                this.getOperations().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getPossibleErrors().clear();
                this.getPossibleErrors().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.gGetOperations().clear();
                return;
            }
            case 22: {
                this.gGetPossibleErrors().clear();
                return;
            }
            case 23: {
                this.getOperations().clear();
                return;
            }
            case 24: {
                this.getPossibleErrors().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return !this.gGetOperations().isEmpty();
            }
            case 22: {
                return !this.gGetPossibleErrors().isEmpty();
            }
            case 23: {
                return this.operations != null && !this.operations.isEmpty();
            }
            case 24: {
                return this.possibleErrors != null && !this.possibleErrors.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GClientServerInterface.class) {
            switch (derivedFeatureID) {
                case 21: {
                    return 8;
                }
                case 22: {
                    return 9;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GClientServerInterface.class) {
            switch (baseFeatureID) {
                case 8: {
                    return 21;
                }
                case 9: {
                    return 22;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

