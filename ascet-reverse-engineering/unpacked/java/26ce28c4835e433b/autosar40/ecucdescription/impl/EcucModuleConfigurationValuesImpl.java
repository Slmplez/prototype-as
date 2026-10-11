/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GContainer
 *  gautosar.gecucparameterdef.GModuleDef
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
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.ecucdescription.impl;

import autosar40.bswmodule.bswimplementation.BswImplementation;
import autosar40.ecucdescription.EcucContainerValue;
import autosar40.ecucdescription.EcucModuleConfigurationValues;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.ecucparameterdef.EcucConfigurationVariantEnum;
import autosar40.ecucparameterdef.EcucModuleDef;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucparameterdef.GModuleDef;
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
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcucModuleConfigurationValuesImpl
extends ARElementImpl
implements EcucModuleConfigurationValues,
IReferringClass {
    protected EcucModuleDef definition;
    protected static final String ECUC_DEF_EDITION_EDEFAULT = "";
    protected String ecucDefEdition = "";
    protected boolean ecucDefEditionESet;
    protected static final EcucConfigurationVariantEnum IMPLEMENTATION_CONFIG_VARIANT_EDEFAULT = EcucConfigurationVariantEnum.PRECONFIGURED_CONFIGURATION;
    protected EcucConfigurationVariantEnum implementationConfigVariant = IMPLEMENTATION_CONFIG_VARIANT_EDEFAULT;
    protected boolean implementationConfigVariantESet;
    protected BswImplementation moduleDescription;
    protected EList<EcucContainerValue> containers;

    protected EcucModuleConfigurationValuesImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.ECUC_MODULE_CONFIGURATION_VALUES;
    }

    @Override
    public EcucModuleDef getDefinition() {
        if (this.definition != null && this.definition.eIsProxy()) {
            InternalEObject oldDefinition = (InternalEObject)this.definition;
            this.definition = (EcucModuleDef)this.eResolveProxy(oldDefinition);
            if (this.definition != oldDefinition && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldDefinition, (Object)this.definition));
            }
        }
        return this.definition;
    }

    public EcucModuleDef basicGetDefinition() {
        return this.definition;
    }

    @Override
    public void setDefinition(EcucModuleDef newDefinition) {
        EcucModuleDef oldDefinition = this.definition;
        this.definition = newDefinition;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldDefinition, (Object)this.definition));
        }
    }

    @Override
    public String getEcucDefEdition() {
        return this.ecucDefEdition;
    }

    @Override
    public void setEcucDefEdition(String newEcucDefEdition) {
        String oldEcucDefEdition = this.ecucDefEdition;
        this.ecucDefEdition = newEcucDefEdition;
        boolean oldEcucDefEditionESet = this.ecucDefEditionESet;
        this.ecucDefEditionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldEcucDefEdition, (Object)this.ecucDefEdition, !oldEcucDefEditionESet));
        }
    }

    @Override
    public void unsetEcucDefEdition() {
        String oldEcucDefEdition = this.ecucDefEdition;
        boolean oldEcucDefEditionESet = this.ecucDefEditionESet;
        this.ecucDefEdition = ECUC_DEF_EDITION_EDEFAULT;
        this.ecucDefEditionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldEcucDefEdition, (Object)ECUC_DEF_EDITION_EDEFAULT, oldEcucDefEditionESet));
        }
    }

    @Override
    public boolean isSetEcucDefEdition() {
        return this.ecucDefEditionESet;
    }

    @Override
    public EcucConfigurationVariantEnum getImplementationConfigVariant() {
        return this.implementationConfigVariant;
    }

    @Override
    public void setImplementationConfigVariant(EcucConfigurationVariantEnum newImplementationConfigVariant) {
        EcucConfigurationVariantEnum oldImplementationConfigVariant = this.implementationConfigVariant;
        this.implementationConfigVariant = newImplementationConfigVariant == null ? IMPLEMENTATION_CONFIG_VARIANT_EDEFAULT : newImplementationConfigVariant;
        boolean oldImplementationConfigVariantESet = this.implementationConfigVariantESet;
        this.implementationConfigVariantESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldImplementationConfigVariant, (Object)this.implementationConfigVariant, !oldImplementationConfigVariantESet));
        }
    }

    @Override
    public void unsetImplementationConfigVariant() {
        EcucConfigurationVariantEnum oldImplementationConfigVariant = this.implementationConfigVariant;
        boolean oldImplementationConfigVariantESet = this.implementationConfigVariantESet;
        this.implementationConfigVariant = IMPLEMENTATION_CONFIG_VARIANT_EDEFAULT;
        this.implementationConfigVariantESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldImplementationConfigVariant, (Object)IMPLEMENTATION_CONFIG_VARIANT_EDEFAULT, oldImplementationConfigVariantESet));
        }
    }

    @Override
    public boolean isSetImplementationConfigVariant() {
        return this.implementationConfigVariantESet;
    }

    @Override
    public BswImplementation getModuleDescription() {
        if (this.moduleDescription != null && this.moduleDescription.eIsProxy()) {
            InternalEObject oldModuleDescription = (InternalEObject)this.moduleDescription;
            this.moduleDescription = (BswImplementation)this.eResolveProxy(oldModuleDescription);
            if (this.moduleDescription != oldModuleDescription && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldModuleDescription, (Object)this.moduleDescription));
            }
        }
        return this.moduleDescription;
    }

    public BswImplementation basicGetModuleDescription() {
        return this.moduleDescription;
    }

    @Override
    public void setModuleDescription(BswImplementation newModuleDescription) {
        BswImplementation oldModuleDescription = this.moduleDescription;
        this.moduleDescription = newModuleDescription;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldModuleDescription, (Object)this.moduleDescription));
        }
    }

    @Override
    public EList<EcucContainerValue> getContainers() {
        if (this.containers == null) {
            this.containers = new EObjectContainmentEList(EcucContainerValue.class, (InternalEObject)this, 25);
        }
        return this.containers;
    }

    public GModuleDef gGetDefinition() {
        return this.getDefinition();
    }

    public void gSetDefinition(GModuleDef value) {
        this.setDefinition((EcucModuleDef)value);
    }

    public EList<GContainer> gGetContainers() {
        EList<EcucContainerValue> untypedList = this.getContainers();
        return untypedList;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return ((InternalEList)this.getContainers()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                if (resolve) {
                    return this.getDefinition();
                }
                return this.basicGetDefinition();
            }
            case 22: {
                return this.getEcucDefEdition();
            }
            case 23: {
                return this.getImplementationConfigVariant();
            }
            case 24: {
                if (resolve) {
                    return this.getModuleDescription();
                }
                return this.basicGetModuleDescription();
            }
            case 25: {
                return this.getContainers();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setDefinition((EcucModuleDef)newValue);
                return;
            }
            case 22: {
                this.setEcucDefEdition((String)newValue);
                return;
            }
            case 23: {
                this.setImplementationConfigVariant((EcucConfigurationVariantEnum)((Object)newValue));
                return;
            }
            case 24: {
                this.setModuleDescription((BswImplementation)newValue);
                return;
            }
            case 25: {
                this.getContainers().clear();
                this.getContainers().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setDefinition(null);
                return;
            }
            case 22: {
                this.unsetEcucDefEdition();
                return;
            }
            case 23: {
                this.unsetImplementationConfigVariant();
                return;
            }
            case 24: {
                this.setModuleDescription(null);
                return;
            }
            case 25: {
                this.getContainers().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.definition != null;
            }
            case 22: {
                return this.isSetEcucDefEdition();
            }
            case 23: {
                return this.isSetImplementationConfigVariant();
            }
            case 24: {
                return this.moduleDescription != null;
            }
            case 25: {
                return this.containers != null && !this.containers.isEmpty();
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (ecucDefEdition: ");
        if (this.ecucDefEditionESet) {
            result.append(this.ecucDefEdition);
        } else {
            result.append("<unset>");
        }
        result.append(", implementationConfigVariant: ");
        if (this.implementationConfigVariantESet) {
            result.append((Object)this.implementationConfigVariant);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

