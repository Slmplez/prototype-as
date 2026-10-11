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

import autosar40.ecucparameterdef.EcucCommonAttributes;
import autosar40.ecucparameterdef.EcucConfigurationClassEnum;
import autosar40.ecucparameterdef.EcucConfigurationVariantEnum;
import autosar40.ecucparameterdef.EcucImplementationConfigurationClass;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class EcucImplementationConfigurationClassImpl
extends ARObjectImpl
implements EcucImplementationConfigurationClass {
    protected static final EcucConfigurationClassEnum CONFIG_CLASS_EDEFAULT = EcucConfigurationClassEnum.PUBLISHED_INFORMATION;
    protected EcucConfigurationClassEnum configClass = CONFIG_CLASS_EDEFAULT;
    protected boolean configClassESet;
    protected static final EcucConfigurationVariantEnum CONFIG_VARIANT_EDEFAULT = EcucConfigurationVariantEnum.PRECONFIGURED_CONFIGURATION;
    protected EcucConfigurationVariantEnum configVariant = CONFIG_VARIANT_EDEFAULT;
    protected boolean configVariantESet;

    protected EcucImplementationConfigurationClassImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_IMPLEMENTATION_CONFIGURATION_CLASS;
    }

    public EcucCommonAttributes getEcucCommonAttributes() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (EcucCommonAttributes)this.eContainer();
    }

    public NotificationChain basicSetEcucCommonAttributes(EcucCommonAttributes newEcucCommonAttributes, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcucCommonAttributes, 4, msgs);
        return msgs;
    }

    public void setEcucCommonAttributes(EcucCommonAttributes newEcucCommonAttributes) {
        if (newEcucCommonAttributes != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newEcucCommonAttributes != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcucCommonAttributes)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcucCommonAttributes != null) {
                msgs = ((InternalEObject)newEcucCommonAttributes).eInverseAdd((InternalEObject)this, 23, EcucCommonAttributes.class, msgs);
            }
            if ((msgs = this.basicSetEcucCommonAttributes(newEcucCommonAttributes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newEcucCommonAttributes, (Object)newEcucCommonAttributes));
        }
    }

    public EcucConfigurationClassEnum getConfigClass() {
        return this.configClass;
    }

    public void setConfigClass(EcucConfigurationClassEnum newConfigClass) {
        EcucConfigurationClassEnum oldConfigClass = this.configClass;
        this.configClass = newConfigClass == null ? CONFIG_CLASS_EDEFAULT : newConfigClass;
        boolean oldConfigClassESet = this.configClassESet;
        this.configClassESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldConfigClass, (Object)this.configClass, !oldConfigClassESet));
        }
    }

    public void unsetConfigClass() {
        EcucConfigurationClassEnum oldConfigClass = this.configClass;
        boolean oldConfigClassESet = this.configClassESet;
        this.configClass = CONFIG_CLASS_EDEFAULT;
        this.configClassESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldConfigClass, (Object)CONFIG_CLASS_EDEFAULT, oldConfigClassESet));
        }
    }

    public boolean isSetConfigClass() {
        return this.configClassESet;
    }

    public EcucConfigurationVariantEnum getConfigVariant() {
        return this.configVariant;
    }

    public void setConfigVariant(EcucConfigurationVariantEnum newConfigVariant) {
        EcucConfigurationVariantEnum oldConfigVariant = this.configVariant;
        this.configVariant = newConfigVariant == null ? CONFIG_VARIANT_EDEFAULT : newConfigVariant;
        boolean oldConfigVariantESet = this.configVariantESet;
        this.configVariantESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldConfigVariant, (Object)this.configVariant, !oldConfigVariantESet));
        }
    }

    public void unsetConfigVariant() {
        EcucConfigurationVariantEnum oldConfigVariant = this.configVariant;
        boolean oldConfigVariantESet = this.configVariantESet;
        this.configVariant = CONFIG_VARIANT_EDEFAULT;
        this.configVariantESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldConfigVariant, (Object)CONFIG_VARIANT_EDEFAULT, oldConfigVariantESet));
        }
    }

    public boolean isSetConfigVariant() {
        return this.configVariantESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcucCommonAttributes((EcucCommonAttributes)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetEcucCommonAttributes(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, EcucCommonAttributes.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getEcucCommonAttributes();
            }
            case 5: {
                return this.getConfigClass();
            }
            case 6: {
                return this.getConfigVariant();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setEcucCommonAttributes((EcucCommonAttributes)newValue);
                return;
            }
            case 5: {
                this.setConfigClass((EcucConfigurationClassEnum)((Object)newValue));
                return;
            }
            case 6: {
                this.setConfigVariant((EcucConfigurationVariantEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setEcucCommonAttributes(null);
                return;
            }
            case 5: {
                this.unsetConfigClass();
                return;
            }
            case 6: {
                this.unsetConfigVariant();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getEcucCommonAttributes() != null;
            }
            case 5: {
                return this.isSetConfigClass();
            }
            case 6: {
                return this.isSetConfigVariant();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (configClass: ");
        if (this.configClassESet) {
            result.append((Object)this.configClass);
        } else {
            result.append("<unset>");
        }
        result.append(", configVariant: ");
        if (this.configVariantESet) {
            result.append((Object)this.configVariant);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

