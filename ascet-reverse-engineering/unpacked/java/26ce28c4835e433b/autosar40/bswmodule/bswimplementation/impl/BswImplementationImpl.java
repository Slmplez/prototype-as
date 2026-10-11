/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.bswmodule.bswimplementation.impl;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswimplementation.BswDebugInfo;
import autosar40.bswmodule.bswimplementation.BswImplementation;
import autosar40.bswmodule.bswimplementation.BswimplementationPackage;
import autosar40.commonstructure.implementation.impl.ImplementationImpl;
import autosar40.ecucdescription.EcucModuleConfigurationValues;
import autosar40.ecucparameterdef.EcucModuleDef;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BswImplementationImpl
extends ImplementationImpl
implements BswImplementation,
IReferringClass {
    protected static final String AR_RELEASE_VERSION_EDEFAULT = "";
    protected String arReleaseVersion = "";
    protected boolean arReleaseVersionESet;
    protected BswInternalBehavior behavior;
    protected EList<BswDebugInfo> debugInfos;
    protected EList<EcucModuleConfigurationValues> preconfiguredConfigurations;
    protected EList<EcucModuleConfigurationValues> recommendedConfigurations;
    protected static final String VENDOR_API_INFIX_EDEFAULT = "";
    protected String vendorApiInfix = "";
    protected boolean vendorApiInfixESet;
    protected EList<EcucModuleDef> vendorSpecificModuleDefs;

    protected BswImplementationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BswimplementationPackage.Literals.BSW_IMPLEMENTATION;
    }

    @Override
    public String getArReleaseVersion() {
        return this.arReleaseVersion;
    }

    @Override
    public void setArReleaseVersion(String newArReleaseVersion) {
        String oldArReleaseVersion = this.arReleaseVersion;
        this.arReleaseVersion = newArReleaseVersion;
        boolean oldArReleaseVersionESet = this.arReleaseVersionESet;
        this.arReleaseVersionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldArReleaseVersion, (Object)this.arReleaseVersion, !oldArReleaseVersionESet));
        }
    }

    @Override
    public void unsetArReleaseVersion() {
        String oldArReleaseVersion = this.arReleaseVersion;
        boolean oldArReleaseVersionESet = this.arReleaseVersionESet;
        this.arReleaseVersion = "";
        this.arReleaseVersionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 37, (Object)oldArReleaseVersion, (Object)"", oldArReleaseVersionESet));
        }
    }

    @Override
    public boolean isSetArReleaseVersion() {
        return this.arReleaseVersionESet;
    }

    @Override
    public BswInternalBehavior getBehavior() {
        if (this.behavior != null && this.behavior.eIsProxy()) {
            InternalEObject oldBehavior = (InternalEObject)this.behavior;
            this.behavior = (BswInternalBehavior)this.eResolveProxy(oldBehavior);
            if (this.behavior != oldBehavior && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 38, (Object)oldBehavior, (Object)this.behavior));
            }
        }
        return this.behavior;
    }

    public BswInternalBehavior basicGetBehavior() {
        return this.behavior;
    }

    @Override
    public void setBehavior(BswInternalBehavior newBehavior) {
        BswInternalBehavior oldBehavior = this.behavior;
        this.behavior = newBehavior;
        AutosarObjectUtil.setDest((EObject)this, (int)38, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 38, (Object)oldBehavior, (Object)this.behavior));
        }
    }

    @Override
    public EList<BswDebugInfo> getDebugInfos() {
        if (this.debugInfos == null) {
            this.debugInfos = new EObjectContainmentWithInverseEList(BswDebugInfo.class, (InternalEObject)this, 39, 18);
        }
        return this.debugInfos;
    }

    @Override
    public EList<EcucModuleConfigurationValues> getPreconfiguredConfigurations() {
        if (this.preconfiguredConfigurations == null) {
            this.preconfiguredConfigurations = new EObjectResolvingReferringEList(EcucModuleConfigurationValues.class, (InternalEObject)this, 40);
        }
        return this.preconfiguredConfigurations;
    }

    @Override
    public EList<EcucModuleConfigurationValues> getRecommendedConfigurations() {
        if (this.recommendedConfigurations == null) {
            this.recommendedConfigurations = new EObjectResolvingReferringEList(EcucModuleConfigurationValues.class, (InternalEObject)this, 41);
        }
        return this.recommendedConfigurations;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 42, (Object)oldVendorApiInfix, (Object)this.vendorApiInfix, !oldVendorApiInfixESet));
        }
    }

    @Override
    public void unsetVendorApiInfix() {
        String oldVendorApiInfix = this.vendorApiInfix;
        boolean oldVendorApiInfixESet = this.vendorApiInfixESet;
        this.vendorApiInfix = "";
        this.vendorApiInfixESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 42, (Object)oldVendorApiInfix, (Object)"", oldVendorApiInfixESet));
        }
    }

    @Override
    public boolean isSetVendorApiInfix() {
        return this.vendorApiInfixESet;
    }

    @Override
    public EList<EcucModuleDef> getVendorSpecificModuleDefs() {
        if (this.vendorSpecificModuleDefs == null) {
            this.vendorSpecificModuleDefs = new EObjectResolvingReferringEList(EcucModuleDef.class, (InternalEObject)this, 43);
        }
        return this.vendorSpecificModuleDefs;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 39: {
                return ((InternalEList)this.getDebugInfos()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 39: {
                return ((InternalEList)this.getDebugInfos()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 37: {
                return this.getArReleaseVersion();
            }
            case 38: {
                if (resolve) {
                    return this.getBehavior();
                }
                return this.basicGetBehavior();
            }
            case 39: {
                return this.getDebugInfos();
            }
            case 40: {
                return this.getPreconfiguredConfigurations();
            }
            case 41: {
                return this.getRecommendedConfigurations();
            }
            case 42: {
                return this.getVendorApiInfix();
            }
            case 43: {
                return this.getVendorSpecificModuleDefs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 37: {
                this.setArReleaseVersion((String)newValue);
                return;
            }
            case 38: {
                this.setBehavior((BswInternalBehavior)newValue);
                return;
            }
            case 39: {
                this.getDebugInfos().clear();
                this.getDebugInfos().addAll((Collection)newValue);
                return;
            }
            case 40: {
                this.getPreconfiguredConfigurations().clear();
                this.getPreconfiguredConfigurations().addAll((Collection)newValue);
                return;
            }
            case 41: {
                this.getRecommendedConfigurations().clear();
                this.getRecommendedConfigurations().addAll((Collection)newValue);
                return;
            }
            case 42: {
                this.setVendorApiInfix((String)newValue);
                return;
            }
            case 43: {
                this.getVendorSpecificModuleDefs().clear();
                this.getVendorSpecificModuleDefs().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 37: {
                this.unsetArReleaseVersion();
                return;
            }
            case 38: {
                this.setBehavior(null);
                return;
            }
            case 39: {
                this.getDebugInfos().clear();
                return;
            }
            case 40: {
                this.getPreconfiguredConfigurations().clear();
                return;
            }
            case 41: {
                this.getRecommendedConfigurations().clear();
                return;
            }
            case 42: {
                this.unsetVendorApiInfix();
                return;
            }
            case 43: {
                this.getVendorSpecificModuleDefs().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 37: {
                return this.isSetArReleaseVersion();
            }
            case 38: {
                return this.behavior != null;
            }
            case 39: {
                return this.debugInfos != null && !this.debugInfos.isEmpty();
            }
            case 40: {
                return this.preconfiguredConfigurations != null && !this.preconfiguredConfigurations.isEmpty();
            }
            case 41: {
                return this.recommendedConfigurations != null && !this.recommendedConfigurations.isEmpty();
            }
            case 42: {
                return this.isSetVendorApiInfix();
            }
            case 43: {
                return this.vendorSpecificModuleDefs != null && !this.vendorSpecificModuleDefs.isEmpty();
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
        result.append(" (arReleaseVersion: ");
        if (this.arReleaseVersionESet) {
            result.append(this.arReleaseVersion);
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

