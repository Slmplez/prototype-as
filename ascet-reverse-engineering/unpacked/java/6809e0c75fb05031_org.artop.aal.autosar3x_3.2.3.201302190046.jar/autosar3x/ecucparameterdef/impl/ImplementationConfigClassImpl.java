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
package autosar3x.ecucparameterdef.impl;

import autosar3x.ecucparameterdef.CommonConfigurationAttributes;
import autosar3x.ecucparameterdef.ConfigurationClass;
import autosar3x.ecucparameterdef.ConfigurationVariant;
import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecucparameterdef.ImplementationConfigClass;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ImplementationConfigClassImpl
extends ARObjectImpl
implements ImplementationConfigClass {
    protected static final ConfigurationClass CONFIG_CLASS_EDEFAULT = ConfigurationClass.POST_BUILD;
    protected ConfigurationClass configClass = CONFIG_CLASS_EDEFAULT;
    protected boolean configClassESet;
    protected static final ConfigurationVariant CONFIG_VARIANT_EDEFAULT = ConfigurationVariant.VARIANT_PRE_COMPILE;
    protected ConfigurationVariant configVariant = CONFIG_VARIANT_EDEFAULT;
    protected boolean configVariantESet;

    protected ImplementationConfigClassImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.IMPLEMENTATION_CONFIG_CLASS;
    }

    public CommonConfigurationAttributes getCommonConfigurationAttributes() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CommonConfigurationAttributes)this.eContainer();
    }

    public NotificationChain basicSetCommonConfigurationAttributes(CommonConfigurationAttributes newCommonConfigurationAttributes, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommonConfigurationAttributes, 4, msgs);
        return msgs;
    }

    public void setCommonConfigurationAttributes(CommonConfigurationAttributes newCommonConfigurationAttributes) {
        if (newCommonConfigurationAttributes != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCommonConfigurationAttributes != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommonConfigurationAttributes)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommonConfigurationAttributes != null) {
                msgs = ((InternalEObject)newCommonConfigurationAttributes).eInverseAdd((InternalEObject)this, 20, CommonConfigurationAttributes.class, msgs);
            }
            if ((msgs = this.basicSetCommonConfigurationAttributes(newCommonConfigurationAttributes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCommonConfigurationAttributes, (Object)newCommonConfigurationAttributes));
        }
    }

    public ConfigurationClass getConfigClass() {
        return this.configClass;
    }

    public void setConfigClass(ConfigurationClass newConfigClass) {
        ConfigurationClass oldConfigClass = this.configClass;
        this.configClass = newConfigClass == null ? CONFIG_CLASS_EDEFAULT : newConfigClass;
        boolean oldConfigClassESet = this.configClassESet;
        this.configClassESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldConfigClass, (Object)this.configClass, !oldConfigClassESet));
        }
    }

    public void unsetConfigClass() {
        ConfigurationClass oldConfigClass = this.configClass;
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

    public ConfigurationVariant getConfigVariant() {
        return this.configVariant;
    }

    public void setConfigVariant(ConfigurationVariant newConfigVariant) {
        ConfigurationVariant oldConfigVariant = this.configVariant;
        this.configVariant = newConfigVariant == null ? CONFIG_VARIANT_EDEFAULT : newConfigVariant;
        boolean oldConfigVariantESet = this.configVariantESet;
        this.configVariantESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldConfigVariant, (Object)this.configVariant, !oldConfigVariantESet));
        }
    }

    public void unsetConfigVariant() {
        ConfigurationVariant oldConfigVariant = this.configVariant;
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
                return this.basicSetCommonConfigurationAttributes((CommonConfigurationAttributes)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCommonConfigurationAttributes(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, CommonConfigurationAttributes.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCommonConfigurationAttributes();
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
                this.setCommonConfigurationAttributes((CommonConfigurationAttributes)newValue);
                return;
            }
            case 5: {
                this.setConfigClass((ConfigurationClass)((Object)newValue));
                return;
            }
            case 6: {
                this.setConfigVariant((ConfigurationVariant)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCommonConfigurationAttributes(null);
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
                return this.getCommonConfigurationAttributes() != null;
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

