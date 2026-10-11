/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.bswmodule.impl;

import autosar21.bswmodule.BswModuleDescription;
import autosar21.bswmodule.BswmodulePackage;
import autosar21.ecucdescription.ModuleConfiguration;
import autosar21.ecucparameterdef.ModuleDef;
import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class BswModuleDescriptionImpl
extends ARElementImpl
implements BswModuleDescription,
IReferringClass {
    protected static final Integer MODULE_ID_EDEFAULT = new Integer(0);
    protected Integer moduleId = MODULE_ID_EDEFAULT;
    protected boolean moduleIdESet;
    protected ModuleConfiguration preconfiguredConfiguration;
    protected ModuleConfiguration recommendedConfiguration;
    protected ModuleDef vendorSpecificModuleDef;

    protected BswModuleDescriptionImpl() {
    }

    protected EClass eStaticClass() {
        return BswmodulePackage.Literals.BSW_MODULE_DESCRIPTION;
    }

    public Integer getModuleId() {
        return this.moduleId;
    }

    public void setModuleId(Integer newModuleId) {
        Integer oldModuleId = this.moduleId;
        this.moduleId = newModuleId;
        boolean oldModuleIdESet = this.moduleIdESet;
        this.moduleIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldModuleId, (Object)this.moduleId, !oldModuleIdESet));
        }
    }

    public void unsetModuleId() {
        Integer oldModuleId = this.moduleId;
        boolean oldModuleIdESet = this.moduleIdESet;
        this.moduleId = MODULE_ID_EDEFAULT;
        this.moduleIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldModuleId, (Object)MODULE_ID_EDEFAULT, oldModuleIdESet));
        }
    }

    public boolean isSetModuleId() {
        return this.moduleIdESet;
    }

    public ModuleConfiguration getPreconfiguredConfiguration() {
        if (this.preconfiguredConfiguration != null && this.preconfiguredConfiguration.eIsProxy()) {
            InternalEObject oldPreconfiguredConfiguration = (InternalEObject)this.preconfiguredConfiguration;
            this.preconfiguredConfiguration = (ModuleConfiguration)this.eResolveProxy(oldPreconfiguredConfiguration);
            if (this.preconfiguredConfiguration != oldPreconfiguredConfiguration && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldPreconfiguredConfiguration, (Object)this.preconfiguredConfiguration));
            }
        }
        return this.preconfiguredConfiguration;
    }

    public ModuleConfiguration basicGetPreconfiguredConfiguration() {
        return this.preconfiguredConfiguration;
    }

    public void setPreconfiguredConfiguration(ModuleConfiguration newPreconfiguredConfiguration) {
        ModuleConfiguration oldPreconfiguredConfiguration = this.preconfiguredConfiguration;
        this.preconfiguredConfiguration = newPreconfiguredConfiguration;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldPreconfiguredConfiguration, (Object)this.preconfiguredConfiguration));
        }
    }

    public ModuleConfiguration getRecommendedConfiguration() {
        if (this.recommendedConfiguration != null && this.recommendedConfiguration.eIsProxy()) {
            InternalEObject oldRecommendedConfiguration = (InternalEObject)this.recommendedConfiguration;
            this.recommendedConfiguration = (ModuleConfiguration)this.eResolveProxy(oldRecommendedConfiguration);
            if (this.recommendedConfiguration != oldRecommendedConfiguration && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldRecommendedConfiguration, (Object)this.recommendedConfiguration));
            }
        }
        return this.recommendedConfiguration;
    }

    public ModuleConfiguration basicGetRecommendedConfiguration() {
        return this.recommendedConfiguration;
    }

    public void setRecommendedConfiguration(ModuleConfiguration newRecommendedConfiguration) {
        ModuleConfiguration oldRecommendedConfiguration = this.recommendedConfiguration;
        this.recommendedConfiguration = newRecommendedConfiguration;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldRecommendedConfiguration, (Object)this.recommendedConfiguration));
        }
    }

    public ModuleDef getVendorSpecificModuleDef() {
        if (this.vendorSpecificModuleDef != null && this.vendorSpecificModuleDef.eIsProxy()) {
            InternalEObject oldVendorSpecificModuleDef = (InternalEObject)this.vendorSpecificModuleDef;
            this.vendorSpecificModuleDef = (ModuleDef)this.eResolveProxy(oldVendorSpecificModuleDef);
            if (this.vendorSpecificModuleDef != oldVendorSpecificModuleDef && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldVendorSpecificModuleDef, (Object)this.vendorSpecificModuleDef));
            }
        }
        return this.vendorSpecificModuleDef;
    }

    public ModuleDef basicGetVendorSpecificModuleDef() {
        return this.vendorSpecificModuleDef;
    }

    public void setVendorSpecificModuleDef(ModuleDef newVendorSpecificModuleDef) {
        ModuleDef oldVendorSpecificModuleDef = this.vendorSpecificModuleDef;
        this.vendorSpecificModuleDef = newVendorSpecificModuleDef;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldVendorSpecificModuleDef, (Object)this.vendorSpecificModuleDef));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getModuleId();
            }
            case 19: {
                if (resolve) {
                    return this.getPreconfiguredConfiguration();
                }
                return this.basicGetPreconfiguredConfiguration();
            }
            case 20: {
                if (resolve) {
                    return this.getRecommendedConfiguration();
                }
                return this.basicGetRecommendedConfiguration();
            }
            case 21: {
                if (resolve) {
                    return this.getVendorSpecificModuleDef();
                }
                return this.basicGetVendorSpecificModuleDef();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setModuleId((Integer)newValue);
                return;
            }
            case 19: {
                this.setPreconfiguredConfiguration((ModuleConfiguration)newValue);
                return;
            }
            case 20: {
                this.setRecommendedConfiguration((ModuleConfiguration)newValue);
                return;
            }
            case 21: {
                this.setVendorSpecificModuleDef((ModuleDef)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.unsetModuleId();
                return;
            }
            case 19: {
                this.setPreconfiguredConfiguration(null);
                return;
            }
            case 20: {
                this.setRecommendedConfiguration(null);
                return;
            }
            case 21: {
                this.setVendorSpecificModuleDef(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.isSetModuleId();
            }
            case 19: {
                return this.preconfiguredConfiguration != null;
            }
            case 20: {
                return this.recommendedConfiguration != null;
            }
            case 21: {
                return this.vendorSpecificModuleDef != null;
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (moduleId: ");
        if (this.moduleIdESet) {
            result.append(this.moduleId);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

