/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.bswmodule.bswimplementation.impl;

import autosar3x.bswmodule.bswbehavior.BswBehavior;
import autosar3x.bswmodule.bswimplementation.BswImplementation;
import autosar3x.bswmodule.bswimplementation.BswimplementationPackage;
import autosar3x.commonstructure.implementation.impl.ImplementationImpl;
import autosar3x.ecucdescription.ModuleConfiguration;
import autosar3x.ecucparameterdef.ModuleDef;
import autosar3x.ecuresource.HWElement;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BswImplementationImpl
extends ImplementationImpl
implements BswImplementation,
IReferringClass {
    protected static final Integer AR_MAJOR_VERSION_EDEFAULT = new Integer(0);
    protected Integer arMajorVersion = AR_MAJOR_VERSION_EDEFAULT;
    protected boolean arMajorVersionESet;
    protected static final Integer AR_MINOR_VERSION_EDEFAULT = new Integer(0);
    protected Integer arMinorVersion = AR_MINOR_VERSION_EDEFAULT;
    protected boolean arMinorVersionESet;
    protected static final Integer AR_PATCH_VERSION_EDEFAULT = new Integer(0);
    protected Integer arPatchVersion = AR_PATCH_VERSION_EDEFAULT;
    protected boolean arPatchVersionESet;
    protected BswBehavior behavior;
    protected ModuleConfiguration preconfiguredConfiguration;
    protected ModuleConfiguration recommendedConfiguration;
    protected EList<HWElement> requiredHWs;
    protected static final String VENDOR_API_INFIX_EDEFAULT = "";
    protected String vendorApiInfix = "";
    protected boolean vendorApiInfixESet;
    protected ModuleDef vendorSpecificModuleDef;

    protected BswImplementationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BswimplementationPackage.Literals.BSW_IMPLEMENTATION;
    }

    @Override
    public Integer getArMajorVersion() {
        return this.arMajorVersion;
    }

    @Override
    public void setArMajorVersion(Integer newArMajorVersion) {
        Integer oldArMajorVersion = this.arMajorVersion;
        this.arMajorVersion = newArMajorVersion;
        boolean oldArMajorVersionESet = this.arMajorVersionESet;
        this.arMajorVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldArMajorVersion, (Object)this.arMajorVersion, !oldArMajorVersionESet));
        }
    }

    @Override
    public void unsetArMajorVersion() {
        Integer oldArMajorVersion = this.arMajorVersion;
        boolean oldArMajorVersionESet = this.arMajorVersionESet;
        this.arMajorVersion = AR_MAJOR_VERSION_EDEFAULT;
        this.arMajorVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldArMajorVersion, (Object)AR_MAJOR_VERSION_EDEFAULT, oldArMajorVersionESet));
        }
    }

    @Override
    public boolean isSetArMajorVersion() {
        return this.arMajorVersionESet;
    }

    @Override
    public Integer getArMinorVersion() {
        return this.arMinorVersion;
    }

    @Override
    public void setArMinorVersion(Integer newArMinorVersion) {
        Integer oldArMinorVersion = this.arMinorVersion;
        this.arMinorVersion = newArMinorVersion;
        boolean oldArMinorVersionESet = this.arMinorVersionESet;
        this.arMinorVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldArMinorVersion, (Object)this.arMinorVersion, !oldArMinorVersionESet));
        }
    }

    @Override
    public void unsetArMinorVersion() {
        Integer oldArMinorVersion = this.arMinorVersion;
        boolean oldArMinorVersionESet = this.arMinorVersionESet;
        this.arMinorVersion = AR_MINOR_VERSION_EDEFAULT;
        this.arMinorVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldArMinorVersion, (Object)AR_MINOR_VERSION_EDEFAULT, oldArMinorVersionESet));
        }
    }

    @Override
    public boolean isSetArMinorVersion() {
        return this.arMinorVersionESet;
    }

    @Override
    public Integer getArPatchVersion() {
        return this.arPatchVersion;
    }

    @Override
    public void setArPatchVersion(Integer newArPatchVersion) {
        Integer oldArPatchVersion = this.arPatchVersion;
        this.arPatchVersion = newArPatchVersion;
        boolean oldArPatchVersionESet = this.arPatchVersionESet;
        this.arPatchVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldArPatchVersion, (Object)this.arPatchVersion, !oldArPatchVersionESet));
        }
    }

    @Override
    public void unsetArPatchVersion() {
        Integer oldArPatchVersion = this.arPatchVersion;
        boolean oldArPatchVersionESet = this.arPatchVersionESet;
        this.arPatchVersion = AR_PATCH_VERSION_EDEFAULT;
        this.arPatchVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldArPatchVersion, (Object)AR_PATCH_VERSION_EDEFAULT, oldArPatchVersionESet));
        }
    }

    @Override
    public boolean isSetArPatchVersion() {
        return this.arPatchVersionESet;
    }

    @Override
    public BswBehavior getBehavior() {
        if (this.behavior != null && this.behavior.eIsProxy()) {
            InternalEObject oldBehavior = (InternalEObject)this.behavior;
            this.behavior = (BswBehavior)this.eResolveProxy(oldBehavior);
            if (this.behavior != oldBehavior && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 36, (Object)oldBehavior, (Object)this.behavior));
            }
        }
        return this.behavior;
    }

    public BswBehavior basicGetBehavior() {
        return this.behavior;
    }

    @Override
    public void setBehavior(BswBehavior newBehavior) {
        BswBehavior oldBehavior = this.behavior;
        this.behavior = newBehavior;
        AutosarObjectUtil.setDest((EObject)this, (int)36, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 36, (Object)oldBehavior, (Object)this.behavior));
        }
    }

    @Override
    public ModuleConfiguration getPreconfiguredConfiguration() {
        if (this.preconfiguredConfiguration != null && this.preconfiguredConfiguration.eIsProxy()) {
            InternalEObject oldPreconfiguredConfiguration = (InternalEObject)this.preconfiguredConfiguration;
            this.preconfiguredConfiguration = (ModuleConfiguration)this.eResolveProxy(oldPreconfiguredConfiguration);
            if (this.preconfiguredConfiguration != oldPreconfiguredConfiguration && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 37, (Object)oldPreconfiguredConfiguration, (Object)this.preconfiguredConfiguration));
            }
        }
        return this.preconfiguredConfiguration;
    }

    public ModuleConfiguration basicGetPreconfiguredConfiguration() {
        return this.preconfiguredConfiguration;
    }

    @Override
    public void setPreconfiguredConfiguration(ModuleConfiguration newPreconfiguredConfiguration) {
        ModuleConfiguration oldPreconfiguredConfiguration = this.preconfiguredConfiguration;
        this.preconfiguredConfiguration = newPreconfiguredConfiguration;
        AutosarObjectUtil.setDest((EObject)this, (int)37, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldPreconfiguredConfiguration, (Object)this.preconfiguredConfiguration));
        }
    }

    @Override
    public ModuleConfiguration getRecommendedConfiguration() {
        if (this.recommendedConfiguration != null && this.recommendedConfiguration.eIsProxy()) {
            InternalEObject oldRecommendedConfiguration = (InternalEObject)this.recommendedConfiguration;
            this.recommendedConfiguration = (ModuleConfiguration)this.eResolveProxy(oldRecommendedConfiguration);
            if (this.recommendedConfiguration != oldRecommendedConfiguration && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 38, (Object)oldRecommendedConfiguration, (Object)this.recommendedConfiguration));
            }
        }
        return this.recommendedConfiguration;
    }

    public ModuleConfiguration basicGetRecommendedConfiguration() {
        return this.recommendedConfiguration;
    }

    @Override
    public void setRecommendedConfiguration(ModuleConfiguration newRecommendedConfiguration) {
        ModuleConfiguration oldRecommendedConfiguration = this.recommendedConfiguration;
        this.recommendedConfiguration = newRecommendedConfiguration;
        AutosarObjectUtil.setDest((EObject)this, (int)38, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 38, (Object)oldRecommendedConfiguration, (Object)this.recommendedConfiguration));
        }
    }

    @Override
    public EList<HWElement> getRequiredHWs() {
        if (this.requiredHWs == null) {
            this.requiredHWs = new EObjectResolvingReferringEList(HWElement.class, (InternalEObject)this, 39);
        }
        return this.requiredHWs;
    }

    @Override
    public String getVendorApiInfix() {
        return this.vendorApiInfix;
    }

    @Override
    public void setVendorApiInfix(String newVendorApiInfix) {
        String oldVendorApiInfix = this.vendorApiInfix;
        this.vendorApiInfix = newVendorApiInfix;
        boolean oldVendorApiInfixESet = this.vendorApiInfixESet;
        this.vendorApiInfixESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 40, (Object)oldVendorApiInfix, (Object)this.vendorApiInfix, !oldVendorApiInfixESet));
        }
    }

    @Override
    public void unsetVendorApiInfix() {
        String oldVendorApiInfix = this.vendorApiInfix;
        boolean oldVendorApiInfixESet = this.vendorApiInfixESet;
        this.vendorApiInfix = VENDOR_API_INFIX_EDEFAULT;
        this.vendorApiInfixESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 40, (Object)oldVendorApiInfix, (Object)VENDOR_API_INFIX_EDEFAULT, oldVendorApiInfixESet));
        }
    }

    @Override
    public boolean isSetVendorApiInfix() {
        return this.vendorApiInfixESet;
    }

    @Override
    public ModuleDef getVendorSpecificModuleDef() {
        if (this.vendorSpecificModuleDef != null && this.vendorSpecificModuleDef.eIsProxy()) {
            InternalEObject oldVendorSpecificModuleDef = (InternalEObject)this.vendorSpecificModuleDef;
            this.vendorSpecificModuleDef = (ModuleDef)this.eResolveProxy(oldVendorSpecificModuleDef);
            if (this.vendorSpecificModuleDef != oldVendorSpecificModuleDef && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 41, (Object)oldVendorSpecificModuleDef, (Object)this.vendorSpecificModuleDef));
            }
        }
        return this.vendorSpecificModuleDef;
    }

    public ModuleDef basicGetVendorSpecificModuleDef() {
        return this.vendorSpecificModuleDef;
    }

    @Override
    public void setVendorSpecificModuleDef(ModuleDef newVendorSpecificModuleDef) {
        ModuleDef oldVendorSpecificModuleDef = this.vendorSpecificModuleDef;
        this.vendorSpecificModuleDef = newVendorSpecificModuleDef;
        AutosarObjectUtil.setDest((EObject)this, (int)41, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 41, (Object)oldVendorSpecificModuleDef, (Object)this.vendorSpecificModuleDef));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 33: {
                return this.getArMajorVersion();
            }
            case 34: {
                return this.getArMinorVersion();
            }
            case 35: {
                return this.getArPatchVersion();
            }
            case 36: {
                if (resolve) {
                    return this.getBehavior();
                }
                return this.basicGetBehavior();
            }
            case 37: {
                if (resolve) {
                    return this.getPreconfiguredConfiguration();
                }
                return this.basicGetPreconfiguredConfiguration();
            }
            case 38: {
                if (resolve) {
                    return this.getRecommendedConfiguration();
                }
                return this.basicGetRecommendedConfiguration();
            }
            case 39: {
                return this.getRequiredHWs();
            }
            case 40: {
                return this.getVendorApiInfix();
            }
            case 41: {
                if (resolve) {
                    return this.getVendorSpecificModuleDef();
                }
                return this.basicGetVendorSpecificModuleDef();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 33: {
                this.setArMajorVersion((Integer)newValue);
                return;
            }
            case 34: {
                this.setArMinorVersion((Integer)newValue);
                return;
            }
            case 35: {
                this.setArPatchVersion((Integer)newValue);
                return;
            }
            case 36: {
                this.setBehavior((BswBehavior)newValue);
                return;
            }
            case 37: {
                this.setPreconfiguredConfiguration((ModuleConfiguration)newValue);
                return;
            }
            case 38: {
                this.setRecommendedConfiguration((ModuleConfiguration)newValue);
                return;
            }
            case 39: {
                this.getRequiredHWs().clear();
                this.getRequiredHWs().addAll((Collection)newValue);
                return;
            }
            case 40: {
                this.setVendorApiInfix((String)newValue);
                return;
            }
            case 41: {
                this.setVendorSpecificModuleDef((ModuleDef)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 33: {
                this.unsetArMajorVersion();
                return;
            }
            case 34: {
                this.unsetArMinorVersion();
                return;
            }
            case 35: {
                this.unsetArPatchVersion();
                return;
            }
            case 36: {
                this.setBehavior(null);
                return;
            }
            case 37: {
                this.setPreconfiguredConfiguration(null);
                return;
            }
            case 38: {
                this.setRecommendedConfiguration(null);
                return;
            }
            case 39: {
                this.getRequiredHWs().clear();
                return;
            }
            case 40: {
                this.unsetVendorApiInfix();
                return;
            }
            case 41: {
                this.setVendorSpecificModuleDef(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 33: {
                return this.isSetArMajorVersion();
            }
            case 34: {
                return this.isSetArMinorVersion();
            }
            case 35: {
                return this.isSetArPatchVersion();
            }
            case 36: {
                return this.behavior != null;
            }
            case 37: {
                return this.preconfiguredConfiguration != null;
            }
            case 38: {
                return this.recommendedConfiguration != null;
            }
            case 39: {
                return this.requiredHWs != null && !this.requiredHWs.isEmpty();
            }
            case 40: {
                return this.isSetVendorApiInfix();
            }
            case 41: {
                return this.vendorSpecificModuleDef != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    @Override
    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    @Override
    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    @Override
    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (arMajorVersion: ");
        if (this.arMajorVersionESet) {
            result.append(this.arMajorVersion);
        } else {
            result.append("<unset>");
        }
        result.append(", arMinorVersion: ");
        if (this.arMinorVersionESet) {
            result.append(this.arMinorVersion);
        } else {
            result.append("<unset>");
        }
        result.append(", arPatchVersion: ");
        if (this.arPatchVersionESet) {
            result.append(this.arPatchVersion);
        } else {
            result.append("<unset>");
        }
        result.append(", vendorApiInfix: ");
        if (this.vendorApiInfixESet) {
            result.append(this.vendorApiInfix);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

