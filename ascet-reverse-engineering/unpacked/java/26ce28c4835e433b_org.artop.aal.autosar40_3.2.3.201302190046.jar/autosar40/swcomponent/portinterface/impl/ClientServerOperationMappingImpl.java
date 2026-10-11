/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.portinterface.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.portinterface.ClientServerInterfaceMapping;
import autosar40.swcomponent.portinterface.ClientServerOperation;
import autosar40.swcomponent.portinterface.ClientServerOperationMapping;
import autosar40.swcomponent.portinterface.DataPrototypeMapping;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ClientServerOperationMappingImpl
extends ARObjectImpl
implements ClientServerOperationMapping,
IReferringClass {
    protected EList<DataPrototypeMapping> argumentMappings;
    protected ClientServerOperation firstOperation;
    protected ClientServerOperation secondOperation;

    protected ClientServerOperationMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.CLIENT_SERVER_OPERATION_MAPPING;
    }

    @Override
    public ClientServerInterfaceMapping getClientServerInterfaceMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ClientServerInterfaceMapping)this.eContainer();
    }

    public NotificationChain basicSetClientServerInterfaceMapping(ClientServerInterfaceMapping newClientServerInterfaceMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newClientServerInterfaceMapping, 4, msgs);
        return msgs;
    }

    @Override
    public void setClientServerInterfaceMapping(ClientServerInterfaceMapping newClientServerInterfaceMapping) {
        if (newClientServerInterfaceMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newClientServerInterfaceMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newClientServerInterfaceMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newClientServerInterfaceMapping != null) {
                msgs = ((InternalEObject)newClientServerInterfaceMapping).eInverseAdd((InternalEObject)this, 19, ClientServerInterfaceMapping.class, msgs);
            }
            if ((msgs = this.basicSetClientServerInterfaceMapping(newClientServerInterfaceMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newClientServerInterfaceMapping, (Object)newClientServerInterfaceMapping));
        }
    }

    @Override
    public EList<DataPrototypeMapping> getArgumentMappings() {
        if (this.argumentMappings == null) {
            this.argumentMappings = new EObjectContainmentEList(DataPrototypeMapping.class, (InternalEObject)this, 5);
        }
        return this.argumentMappings;
    }

    @Override
    public ClientServerOperation getFirstOperation() {
        if (this.firstOperation != null && this.firstOperation.eIsProxy()) {
            InternalEObject oldFirstOperation = (InternalEObject)this.firstOperation;
            this.firstOperation = (ClientServerOperation)this.eResolveProxy(oldFirstOperation);
            if (this.firstOperation != oldFirstOperation && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldFirstOperation, (Object)this.firstOperation));
            }
        }
        return this.firstOperation;
    }

    public ClientServerOperation basicGetFirstOperation() {
        return this.firstOperation;
    }

    @Override
    public void setFirstOperation(ClientServerOperation newFirstOperation) {
        ClientServerOperation oldFirstOperation = this.firstOperation;
        this.firstOperation = newFirstOperation;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldFirstOperation, (Object)this.firstOperation));
        }
    }

    @Override
    public ClientServerOperation getSecondOperation() {
        if (this.secondOperation != null && this.secondOperation.eIsProxy()) {
            InternalEObject oldSecondOperation = (InternalEObject)this.secondOperation;
            this.secondOperation = (ClientServerOperation)this.eResolveProxy(oldSecondOperation);
            if (this.secondOperation != oldSecondOperation && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 7, (Object)oldSecondOperation, (Object)this.secondOperation));
            }
        }
        return this.secondOperation;
    }

    public ClientServerOperation basicGetSecondOperation() {
        return this.secondOperation;
    }

    @Override
    public void setSecondOperation(ClientServerOperation newSecondOperation) {
        ClientServerOperation oldSecondOperation = this.secondOperation;
        this.secondOperation = newSecondOperation;
        AutosarObjectUtil.setDest((EObject)this, (int)7, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSecondOperation, (Object)this.secondOperation));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetClientServerInterfaceMapping((ClientServerInterfaceMapping)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetClientServerInterfaceMapping(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getArgumentMappings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, ClientServerInterfaceMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getClientServerInterfaceMapping();
            }
            case 5: {
                return this.getArgumentMappings();
            }
            case 6: {
                if (resolve) {
                    return this.getFirstOperation();
                }
                return this.basicGetFirstOperation();
            }
            case 7: {
                if (resolve) {
                    return this.getSecondOperation();
                }
                return this.basicGetSecondOperation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setClientServerInterfaceMapping((ClientServerInterfaceMapping)newValue);
                return;
            }
            case 5: {
                this.getArgumentMappings().clear();
                this.getArgumentMappings().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setFirstOperation((ClientServerOperation)newValue);
                return;
            }
            case 7: {
                this.setSecondOperation((ClientServerOperation)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setClientServerInterfaceMapping(null);
                return;
            }
            case 5: {
                this.getArgumentMappings().clear();
                return;
            }
            case 6: {
                this.setFirstOperation(null);
                return;
            }
            case 7: {
                this.setSecondOperation(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getClientServerInterfaceMapping() != null;
            }
            case 5: {
                return this.argumentMappings != null && !this.argumentMappings.isEmpty();
            }
            case 6: {
                return this.firstOperation != null;
            }
            case 7: {
                return this.secondOperation != null;
            }
        }
        return super.eIsSet(featureID);
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

