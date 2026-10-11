/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GApplicationError
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.swcomponent.portinterface.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.swcomponent.portinterface.ApplicationError;
import autosar40.swcomponent.portinterface.ClientServerInterface;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import gautosar.gswcomponents.gportinterface.GApplicationError;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ApplicationErrorImpl
extends IdentifiableImpl
implements ApplicationError {
    protected static final Integer GERROR_CODE_EDEFAULT = null;
    protected static final IntegerDatatype ERROR_CODE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype errorCode = ERROR_CODE_EDEFAULT.clone();
    protected boolean errorCodeESet;

    protected ApplicationErrorImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PortinterfacePackage.Literals.APPLICATION_ERROR;
    }

    public Integer gGetErrorCode() {
        Integer tgtFeatureValue = this.getErrorCode();
        return tgtFeatureValue;
    }

    public void gSetErrorCode(Integer newGErrorCode) {
        this.setErrorCode(newGErrorCode);
    }

    public void gUnsetErrorCode() {
        this.unsetErrorCode();
    }

    public boolean gIsSetErrorCode() {
        return this.isSetErrorCode();
    }

    @Override
    public ClientServerInterface getClientServerInterface() {
        if (this.eContainerFeatureID() != 19) {
            return null;
        }
        return (ClientServerInterface)this.eContainer();
    }

    public NotificationChain basicSetClientServerInterface(ClientServerInterface newClientServerInterface, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newClientServerInterface, 19, msgs);
        return msgs;
    }

    @Override
    public void setClientServerInterface(ClientServerInterface newClientServerInterface) {
        if (newClientServerInterface != this.eInternalContainer() || this.eContainerFeatureID() != 19 && newClientServerInterface != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newClientServerInterface)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newClientServerInterface != null) {
                msgs = ((InternalEObject)newClientServerInterface).eInverseAdd((InternalEObject)this, 28, ClientServerInterface.class, msgs);
            }
            if ((msgs = this.basicSetClientServerInterface(newClientServerInterface, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newClientServerInterface, (Object)newClientServerInterface));
        }
    }

    @Override
    public Integer getErrorCode() {
        return (Integer)this.errorCode.basicGetValue();
    }

    @Override
    public void setErrorCode(Integer newErrorCode) {
        Integer oldErrorCode = (Integer)this.errorCode.basicGetValue();
        this.errorCode.basicSetValue((Object)newErrorCode);
        boolean oldErrorCodeESet = this.errorCodeESet;
        this.errorCodeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldErrorCode, (Object)newErrorCode, !oldErrorCodeESet));
        }
    }

    @Override
    public void unsetErrorCode() {
        Integer oldErrorCode = (Integer)this.errorCode.basicGetValue();
        boolean oldErrorCodeESet = this.errorCodeESet;
        this.errorCode = ERROR_CODE_EDEFAULT.clone();
        this.errorCodeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldErrorCode, (Object)ERROR_CODE_EDEFAULT, oldErrorCodeESet));
        }
    }

    @Override
    public boolean isSetErrorCode() {
        return this.errorCodeESet;
    }

    @Override
    public IntegerDatatype getErrorCodeData() {
        return this.errorCode.clone();
    }

    @Override
    public void setErrorCodeData(IntegerDatatype newErrorCode) {
        this.errorCode.setRadix((int)newErrorCode.getRadix());
        this.errorCode.setNoOfDigits((int)newErrorCode.getNoOfDigits());
        this.setErrorCode(newErrorCode.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetClientServerInterface((ClientServerInterface)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetClientServerInterface(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 19: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 28, ClientServerInterface.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.gGetErrorCode();
            }
            case 19: {
                return this.getClientServerInterface();
            }
            case 20: {
                return this.getErrorCode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.gSetErrorCode((Integer)newValue);
                return;
            }
            case 19: {
                this.setClientServerInterface((ClientServerInterface)newValue);
                return;
            }
            case 20: {
                this.setErrorCode((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.gUnsetErrorCode();
                return;
            }
            case 19: {
                this.setClientServerInterface(null);
                return;
            }
            case 20: {
                this.unsetErrorCode();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.gIsSetErrorCode();
            }
            case 19: {
                return this.getClientServerInterface() != null;
            }
            case 20: {
                return this.isSetErrorCode();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GApplicationError.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GApplicationError.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 18;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (errorCode: ");
        if (this.errorCodeESet) {
            result.append(this.errorCode);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

