/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucDerivationSpecification;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import autosar40.ecucparameterdef.EcucParameterDef;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucCommonAttributesImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class EcucParameterDefImpl
extends EcucCommonAttributesImpl
implements EcucParameterDef {
    protected EcucDerivationSpecification derivation;
    protected static final Boolean SYMBOLIC_NAME_VALUE_EDEFAULT = Boolean.FALSE;
    protected Boolean symbolicNameValue = SYMBOLIC_NAME_VALUE_EDEFAULT;
    protected boolean symbolicNameValueESet;
    protected static final Boolean WITH_AUTO_EDEFAULT = Boolean.FALSE;
    protected Boolean withAuto = WITH_AUTO_EDEFAULT;
    protected boolean withAutoESet;

    protected EcucParameterDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_PARAMETER_DEF;
    }

    public EcucParamConfContainerDef getEcucParamConfContainerDef() {
        if (this.eContainerFeatureID() != 26) {
            return null;
        }
        return (EcucParamConfContainerDef)this.eContainer();
    }

    public NotificationChain basicSetEcucParamConfContainerDef(EcucParamConfContainerDef newEcucParamConfContainerDef, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcucParamConfContainerDef, 26, msgs);
        return msgs;
    }

    public void setEcucParamConfContainerDef(EcucParamConfContainerDef newEcucParamConfContainerDef) {
        if (newEcucParamConfContainerDef != this.eInternalContainer() || this.eContainerFeatureID() != 26 && newEcucParamConfContainerDef != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcucParamConfContainerDef)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcucParamConfContainerDef != null) {
                msgs = ((InternalEObject)newEcucParamConfContainerDef).eInverseAdd((InternalEObject)this, 25, EcucParamConfContainerDef.class, msgs);
            }
            if ((msgs = this.basicSetEcucParamConfContainerDef(newEcucParamConfContainerDef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)newEcucParamConfContainerDef, (Object)newEcucParamConfContainerDef));
        }
    }

    public EcucDerivationSpecification getDerivation() {
        return this.derivation;
    }

    public NotificationChain basicSetDerivation(EcucDerivationSpecification newDerivation, NotificationChain msgs) {
        EcucDerivationSpecification oldDerivation = this.derivation;
        this.derivation = newDerivation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldDerivation, (Object)newDerivation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setDerivation(EcucDerivationSpecification newDerivation) {
        if (newDerivation != this.derivation) {
            NotificationChain msgs = null;
            if (this.derivation != null) {
                msgs = ((InternalEObject)this.derivation).eInverseRemove((InternalEObject)this, 4, EcucDerivationSpecification.class, msgs);
            }
            if (newDerivation != null) {
                msgs = ((InternalEObject)newDerivation).eInverseAdd((InternalEObject)this, 4, EcucDerivationSpecification.class, msgs);
            }
            if ((msgs = this.basicSetDerivation(newDerivation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)newDerivation, (Object)newDerivation));
        }
    }

    public Boolean getSymbolicNameValue() {
        return this.symbolicNameValue;
    }

    public void setSymbolicNameValue(Boolean newSymbolicNameValue) {
        Boolean oldSymbolicNameValue = this.symbolicNameValue;
        this.symbolicNameValue = newSymbolicNameValue;
        boolean oldSymbolicNameValueESet = this.symbolicNameValueESet;
        this.symbolicNameValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldSymbolicNameValue, (Object)this.symbolicNameValue, !oldSymbolicNameValueESet));
        }
    }

    public void unsetSymbolicNameValue() {
        Boolean oldSymbolicNameValue = this.symbolicNameValue;
        boolean oldSymbolicNameValueESet = this.symbolicNameValueESet;
        this.symbolicNameValue = SYMBOLIC_NAME_VALUE_EDEFAULT;
        this.symbolicNameValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldSymbolicNameValue, (Object)SYMBOLIC_NAME_VALUE_EDEFAULT, oldSymbolicNameValueESet));
        }
    }

    public boolean isSetSymbolicNameValue() {
        return this.symbolicNameValueESet;
    }

    public Boolean getWithAuto() {
        return this.withAuto;
    }

    public void setWithAuto(Boolean newWithAuto) {
        Boolean oldWithAuto = this.withAuto;
        this.withAuto = newWithAuto;
        boolean oldWithAutoESet = this.withAutoESet;
        this.withAutoESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldWithAuto, (Object)this.withAuto, !oldWithAutoESet));
        }
    }

    public void unsetWithAuto() {
        Boolean oldWithAuto = this.withAuto;
        boolean oldWithAutoESet = this.withAutoESet;
        this.withAuto = WITH_AUTO_EDEFAULT;
        this.withAutoESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldWithAuto, (Object)WITH_AUTO_EDEFAULT, oldWithAutoESet));
        }
    }

    public boolean isSetWithAuto() {
        return this.withAutoESet;
    }

    public Boolean gGetSymbolicNameValue() {
        return this.getSymbolicNameValue();
    }

    public void gSetSymbolicNameValue(Boolean value) {
        this.setSymbolicNameValue(value);
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 26: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcucParamConfContainerDef((EcucParamConfContainerDef)otherEnd, msgs);
            }
            case 27: {
                if (this.derivation != null) {
                    msgs = ((InternalEObject)this.derivation).eInverseRemove((InternalEObject)this, -28, null, msgs);
                }
                return this.basicSetDerivation((EcucDerivationSpecification)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 26: {
                return this.basicSetEcucParamConfContainerDef(null, msgs);
            }
            case 27: {
                return this.basicSetDerivation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 26: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, EcucParamConfContainerDef.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 26: {
                return this.getEcucParamConfContainerDef();
            }
            case 27: {
                return this.getDerivation();
            }
            case 28: {
                return this.getSymbolicNameValue();
            }
            case 29: {
                return this.getWithAuto();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 26: {
                this.setEcucParamConfContainerDef((EcucParamConfContainerDef)newValue);
                return;
            }
            case 27: {
                this.setDerivation((EcucDerivationSpecification)newValue);
                return;
            }
            case 28: {
                this.setSymbolicNameValue((Boolean)newValue);
                return;
            }
            case 29: {
                this.setWithAuto((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 26: {
                this.setEcucParamConfContainerDef(null);
                return;
            }
            case 27: {
                this.setDerivation(null);
                return;
            }
            case 28: {
                this.unsetSymbolicNameValue();
                return;
            }
            case 29: {
                this.unsetWithAuto();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 26: {
                return this.getEcucParamConfContainerDef() != null;
            }
            case 27: {
                return this.derivation != null;
            }
            case 28: {
                return this.isSetSymbolicNameValue();
            }
            case 29: {
                return this.isSetWithAuto();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (symbolicNameValue: ");
        if (this.symbolicNameValueESet) {
            result.append(this.symbolicNameValue);
        } else {
            result.append("<unset>");
        }
        result.append(", withAuto: ");
        if (this.withAutoESet) {
            result.append(this.withAuto);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

