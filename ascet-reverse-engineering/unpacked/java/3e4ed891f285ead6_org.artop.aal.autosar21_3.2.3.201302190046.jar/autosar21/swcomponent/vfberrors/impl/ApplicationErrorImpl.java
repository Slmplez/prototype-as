/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gportinterface.GApplicationError
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.swcomponent.vfberrors.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.portinterface.ClientServerInterface;
import autosar21.swcomponent.vfberrors.ApplicationError;
import autosar21.swcomponent.vfberrors.VfberrorsPackage;
import gautosar.gswcomponents.gportinterface.GApplicationError;
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
    protected static final Integer ERROR_CODE_EDEFAULT = new Integer(0);
    protected Integer errorCode = ERROR_CODE_EDEFAULT;
    protected boolean errorCodeESet;

    protected ApplicationErrorImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return VfberrorsPackage.Literals.APPLICATION_ERROR;
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
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (ClientServerInterface)this.eContainer();
    }

    public NotificationChain basicSetClientServerInterface(ClientServerInterface newClientServerInterface, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newClientServerInterface, 17, msgs);
        return msgs;
    }

    @Override
    public void setClientServerInterface(ClientServerInterface newClientServerInterface) {
        if (newClientServerInterface != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newClientServerInterface != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newClientServerInterface)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newClientServerInterface != null) {
                msgs = ((InternalEObject)newClientServerInterface).eInverseAdd((InternalEObject)this, 23, ClientServerInterface.class, msgs);
            }
            if ((msgs = this.basicSetClientServerInterface(newClientServerInterface, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newClientServerInterface, (Object)newClientServerInterface));
        }
    }

    @Override
    public Integer getErrorCode() {
        return this.errorCode;
    }

    @Override
    public void setErrorCode(Integer newErrorCode) {
        Integer oldErrorCode = this.errorCode;
        this.errorCode = newErrorCode;
        boolean oldErrorCodeESet = this.errorCodeESet;
        this.errorCodeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldErrorCode, (Object)this.errorCode, !oldErrorCodeESet));
        }
    }

    @Override
    public void unsetErrorCode() {
        Integer oldErrorCode = this.errorCode;
        boolean oldErrorCodeESet = this.errorCodeESet;
        this.errorCode = ERROR_CODE_EDEFAULT;
        this.errorCodeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldErrorCode, (Object)ERROR_CODE_EDEFAULT, oldErrorCodeESet));
        }
    }

    @Override
    public boolean isSetErrorCode() {
        return this.errorCodeESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
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
            case 17: {
                return this.basicSetClientServerInterface(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, ClientServerInterface.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.gGetErrorCode();
            }
            case 17: {
                return this.getClientServerInterface();
            }
            case 18: {
                return this.getErrorCode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.gSetErrorCode((Integer)newValue);
                return;
            }
            case 17: {
                this.setClientServerInterface((ClientServerInterface)newValue);
                return;
            }
            case 18: {
                this.setErrorCode((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.gUnsetErrorCode();
                return;
            }
            case 17: {
                this.setClientServerInterface(null);
                return;
            }
            case 18: {
                this.unsetErrorCode();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.gIsSetErrorCode();
            }
            case 17: {
                return this.getClientServerInterface() != null;
            }
            case 18: {
                return this.isSetErrorCode();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GApplicationError.class) {
            switch (derivedFeatureID) {
                case 16: {
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
                    return 16;
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

