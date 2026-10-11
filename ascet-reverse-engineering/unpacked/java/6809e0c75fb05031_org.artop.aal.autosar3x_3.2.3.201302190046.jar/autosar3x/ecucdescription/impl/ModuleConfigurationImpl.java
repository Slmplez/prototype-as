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
package autosar3x.ecucdescription.impl;

import autosar3x.bswmodule.bswimplementation.BswImplementation;
import autosar3x.ecucdescription.Container;
import autosar3x.ecucdescription.EcucdescriptionPackage;
import autosar3x.ecucdescription.ModuleConfiguration;
import autosar3x.ecucparameterdef.ConfigurationVariant;
import autosar3x.ecucparameterdef.ModuleDef;
import autosar3x.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
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
public class ModuleConfigurationImpl
extends ARElementImpl
implements ModuleConfiguration,
IReferringClass {
    protected ModuleDef definition;
    protected static final ConfigurationVariant IMPLEMENTATION_CONFIG_VARIANT_EDEFAULT = ConfigurationVariant.VARIANT_PRE_COMPILE;
    protected ConfigurationVariant implementationConfigVariant = IMPLEMENTATION_CONFIG_VARIANT_EDEFAULT;
    protected boolean implementationConfigVariantESet;
    protected BswImplementation moduleDescription;
    protected EList<Container> containers;

    protected ModuleConfigurationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.MODULE_CONFIGURATION;
    }

    @Override
    public ModuleDef getDefinition() {
        if (this.definition != null && this.definition.eIsProxy()) {
            InternalEObject oldDefinition = (InternalEObject)this.definition;
            this.definition = (ModuleDef)this.eResolveProxy(oldDefinition);
            if (this.definition != oldDefinition && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldDefinition, (Object)this.definition));
            }
        }
        return this.definition;
    }

    public ModuleDef basicGetDefinition() {
        return this.definition;
    }

    @Override
    public void setDefinition(ModuleDef newDefinition) {
        ModuleDef oldDefinition = this.definition;
        this.definition = newDefinition;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldDefinition, (Object)this.definition));
        }
    }

    @Override
    public ConfigurationVariant getImplementationConfigVariant() {
        return this.implementationConfigVariant;
    }

    @Override
    public void setImplementationConfigVariant(ConfigurationVariant newImplementationConfigVariant) {
        ConfigurationVariant oldImplementationConfigVariant = this.implementationConfigVariant;
        this.implementationConfigVariant = newImplementationConfigVariant == null ? IMPLEMENTATION_CONFIG_VARIANT_EDEFAULT : newImplementationConfigVariant;
        boolean oldImplementationConfigVariantESet = this.implementationConfigVariantESet;
        this.implementationConfigVariantESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldImplementationConfigVariant, (Object)this.implementationConfigVariant, !oldImplementationConfigVariantESet));
        }
    }

    @Override
    public void unsetImplementationConfigVariant() {
        ConfigurationVariant oldImplementationConfigVariant = this.implementationConfigVariant;
        boolean oldImplementationConfigVariantESet = this.implementationConfigVariantESet;
        this.implementationConfigVariant = IMPLEMENTATION_CONFIG_VARIANT_EDEFAULT;
        this.implementationConfigVariantESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldImplementationConfigVariant, (Object)IMPLEMENTATION_CONFIG_VARIANT_EDEFAULT, oldImplementationConfigVariantESet));
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
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldModuleDescription, (Object)this.moduleDescription));
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
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldModuleDescription, (Object)this.moduleDescription));
        }
    }

    @Override
    public EList<Container> getContainers() {
        if (this.containers == null) {
            this.containers = new EObjectContainmentEList(Container.class, (InternalEObject)this, 22);
        }
        return this.containers;
    }

    public GModuleDef gGetDefinition() {
        return this.getDefinition();
    }

    public void gSetDefinition(GModuleDef value) {
        this.setDefinition((ModuleDef)value);
    }

    public EList<GContainer> gGetContainers() {
        EList<Container> untypedList = this.getContainers();
        return untypedList;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getContainers()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                if (resolve) {
                    return this.getDefinition();
                }
                return this.basicGetDefinition();
            }
            case 20: {
                return this.getImplementationConfigVariant();
            }
            case 21: {
                if (resolve) {
                    return this.getModuleDescription();
                }
                return this.basicGetModuleDescription();
            }
            case 22: {
                return this.getContainers();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setDefinition((ModuleDef)newValue);
                return;
            }
            case 20: {
                this.setImplementationConfigVariant((ConfigurationVariant)((Object)newValue));
                return;
            }
            case 21: {
                this.setModuleDescription((BswImplementation)newValue);
                return;
            }
            case 22: {
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
            case 19: {
                this.setDefinition(null);
                return;
            }
            case 20: {
                this.unsetImplementationConfigVariant();
                return;
            }
            case 21: {
                this.setModuleDescription(null);
                return;
            }
            case 22: {
                this.getContainers().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.definition != null;
            }
            case 20: {
                return this.isSetImplementationConfigVariant();
            }
            case 21: {
                return this.moduleDescription != null;
            }
            case 22: {
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
        result.append(" (implementationConfigVariant: ");
        if (this.implementationConfigVariantESet) {
            result.append((Object)this.implementationConfigVariant);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

