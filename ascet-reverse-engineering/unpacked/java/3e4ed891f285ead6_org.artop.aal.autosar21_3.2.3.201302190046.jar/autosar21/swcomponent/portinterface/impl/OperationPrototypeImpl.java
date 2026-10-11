/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GApplicationError
 *  gautosar.gswcomponents.gportinterface.GArgumentDataPrototype
 *  gautosar.gswcomponents.gportinterface.GClientServerOperation
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.swcomponent.portinterface.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.portinterface.ArgumentPrototype;
import autosar21.swcomponent.portinterface.ClientServerInterface;
import autosar21.swcomponent.portinterface.OperationPrototype;
import autosar21.swcomponent.portinterface.PortinterfacePackage;
import autosar21.swcomponent.vfberrors.ApplicationError;
import gautosar.gswcomponents.gportinterface.GApplicationError;
import gautosar.gswcomponents.gportinterface.GArgumentDataPrototype;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OperationPrototypeImpl
extends IdentifiableImpl
implements OperationPrototype,
IReferringClass {
    protected EList<ArgumentPrototype> arguments;
    protected EList<ApplicationError> possibleErrors;

    protected OperationPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.OPERATION_PROTOTYPE;
    }

    public EList<GArgumentDataPrototype> gGetArguments() {
        EList<ArgumentPrototype> untypedList = this.getArguments();
        return untypedList;
    }

    public EList<GApplicationError> gGetPossibleErrors() {
        EList<ApplicationError> untypedList = this.getPossibleErrors();
        return untypedList;
    }

    @Override
    public ClientServerInterface getClientServerInterface() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (ClientServerInterface)this.eContainer();
    }

    public NotificationChain basicSetClientServerInterface(ClientServerInterface newClientServerInterface, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newClientServerInterface, 18, msgs);
        return msgs;
    }

    @Override
    public void setClientServerInterface(ClientServerInterface newClientServerInterface) {
        if (newClientServerInterface != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newClientServerInterface != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newClientServerInterface)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newClientServerInterface != null) {
                msgs = ((InternalEObject)newClientServerInterface).eInverseAdd((InternalEObject)this, 22, ClientServerInterface.class, msgs);
            }
            if ((msgs = this.basicSetClientServerInterface(newClientServerInterface, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newClientServerInterface, (Object)newClientServerInterface));
        }
    }

    @Override
    public EList<ArgumentPrototype> getArguments() {
        if (this.arguments == null) {
            this.arguments = new EObjectContainmentWithInverseEList(ArgumentPrototype.class, (InternalEObject)this, 19, 21);
        }
        return this.arguments;
    }

    @Override
    public EList<ApplicationError> getPossibleErrors() {
        if (this.possibleErrors == null) {
            this.possibleErrors = new EObjectResolvingReferringEList(ApplicationError.class, (InternalEObject)this, 20);
        }
        return this.possibleErrors;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetClientServerInterface((ClientServerInterface)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getArguments()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetClientServerInterface(null, msgs);
            }
            case 19: {
                return ((InternalEList)this.getArguments()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, ClientServerInterface.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.gGetArguments();
            }
            case 17: {
                return this.gGetPossibleErrors();
            }
            case 18: {
                return this.getClientServerInterface();
            }
            case 19: {
                return this.getArguments();
            }
            case 20: {
                return this.getPossibleErrors();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.gGetArguments().clear();
                this.gGetArguments().addAll((Collection)newValue);
                return;
            }
            case 17: {
                this.gGetPossibleErrors().clear();
                this.gGetPossibleErrors().addAll((Collection)newValue);
                return;
            }
            case 18: {
                this.setClientServerInterface((ClientServerInterface)newValue);
                return;
            }
            case 19: {
                this.getArguments().clear();
                this.getArguments().addAll((Collection)newValue);
                return;
            }
            case 20: {
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
            case 16: {
                this.gGetArguments().clear();
                return;
            }
            case 17: {
                this.gGetPossibleErrors().clear();
                return;
            }
            case 18: {
                this.setClientServerInterface(null);
                return;
            }
            case 19: {
                this.getArguments().clear();
                return;
            }
            case 20: {
                this.getPossibleErrors().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return !this.gGetArguments().isEmpty();
            }
            case 17: {
                return !this.gGetPossibleErrors().isEmpty();
            }
            case 18: {
                return this.getClientServerInterface() != null;
            }
            case 19: {
                return this.arguments != null && !this.arguments.isEmpty();
            }
            case 20: {
                return this.possibleErrors != null && !this.possibleErrors.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GClientServerOperation.class) {
            switch (derivedFeatureID) {
                case 16: {
                    return 6;
                }
                case 17: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GClientServerOperation.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 16;
                }
                case 7: {
                    return 17;
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

