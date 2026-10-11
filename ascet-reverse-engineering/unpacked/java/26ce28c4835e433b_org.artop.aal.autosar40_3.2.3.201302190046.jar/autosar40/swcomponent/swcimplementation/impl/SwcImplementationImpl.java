/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcimplementation.GSwcImplementation
 *  gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior
 *  org.artop.aal.common.util.AutosarObjectUtil
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
package autosar40.swcomponent.swcimplementation.impl;

import autosar40.commonstructure.implementation.impl.ImplementationImpl;
import autosar40.swcomponent.swcimplementation.PerInstanceMemorySize;
import autosar40.swcomponent.swcimplementation.SwcImplementation;
import autosar40.swcomponent.swcimplementation.SwcimplementationPackage;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import gautosar.gswcomponents.gswcimplementation.GSwcImplementation;
import gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior;
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
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwcImplementationImpl
extends ImplementationImpl
implements SwcImplementation,
IReferringClass {
    protected SwcInternalBehavior behavior;
    protected EList<PerInstanceMemorySize> perInstanceMemorySizes;
    protected static final String REQUIRED_RTE_VENDOR_EDEFAULT = "";
    protected String requiredRTEVendor = "";
    protected boolean requiredRTEVendorESet;

    protected SwcImplementationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwcimplementationPackage.Literals.SWC_IMPLEMENTATION;
    }

    public GSwcInternalBehavior gGetBehavior() {
        return this.getBehavior();
    }

    public void gSetBehavior(GSwcInternalBehavior newGBehavior) {
        this.setBehavior((SwcInternalBehavior)newGBehavior);
    }

    @Override
    public SwcInternalBehavior getBehavior() {
        if (this.behavior != null && this.behavior.eIsProxy()) {
            InternalEObject oldBehavior = (InternalEObject)this.behavior;
            this.behavior = (SwcInternalBehavior)this.eResolveProxy(oldBehavior);
            if (this.behavior != oldBehavior && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 38, (Object)oldBehavior, (Object)this.behavior));
            }
        }
        return this.behavior;
    }

    public SwcInternalBehavior basicGetBehavior() {
        return this.behavior;
    }

    @Override
    public void setBehavior(SwcInternalBehavior newBehavior) {
        SwcInternalBehavior oldBehavior = this.behavior;
        this.behavior = newBehavior;
        AutosarObjectUtil.setDest((EObject)this, (int)38, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 38, (Object)oldBehavior, (Object)this.behavior));
        }
    }

    @Override
    public EList<PerInstanceMemorySize> getPerInstanceMemorySizes() {
        if (this.perInstanceMemorySizes == null) {
            this.perInstanceMemorySizes = new EObjectContainmentWithInverseEList(PerInstanceMemorySize.class, (InternalEObject)this, 39, 4);
        }
        return this.perInstanceMemorySizes;
    }

    @Override
    public String getRequiredRTEVendor() {
        return this.requiredRTEVendor;
    }

    @Override
    public void setRequiredRTEVendor(String newRequiredRTEVendor) {
        String oldRequiredRTEVendor = this.requiredRTEVendor;
        this.requiredRTEVendor = newRequiredRTEVendor;
        boolean oldRequiredRTEVendorESet = this.requiredRTEVendorESet;
        this.requiredRTEVendorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 40, (Object)oldRequiredRTEVendor, (Object)this.requiredRTEVendor, !oldRequiredRTEVendorESet));
        }
    }

    @Override
    public void unsetRequiredRTEVendor() {
        String oldRequiredRTEVendor = this.requiredRTEVendor;
        boolean oldRequiredRTEVendorESet = this.requiredRTEVendorESet;
        this.requiredRTEVendor = REQUIRED_RTE_VENDOR_EDEFAULT;
        this.requiredRTEVendorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 40, (Object)oldRequiredRTEVendor, (Object)REQUIRED_RTE_VENDOR_EDEFAULT, oldRequiredRTEVendorESet));
        }
    }

    @Override
    public boolean isSetRequiredRTEVendor() {
        return this.requiredRTEVendorESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 39: {
                return ((InternalEList)this.getPerInstanceMemorySizes()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 39: {
                return ((InternalEList)this.getPerInstanceMemorySizes()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 37: {
                return this.gGetBehavior();
            }
            case 38: {
                if (resolve) {
                    return this.getBehavior();
                }
                return this.basicGetBehavior();
            }
            case 39: {
                return this.getPerInstanceMemorySizes();
            }
            case 40: {
                return this.getRequiredRTEVendor();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 37: {
                this.gSetBehavior((GSwcInternalBehavior)newValue);
                return;
            }
            case 38: {
                this.setBehavior((SwcInternalBehavior)newValue);
                return;
            }
            case 39: {
                this.getPerInstanceMemorySizes().clear();
                this.getPerInstanceMemorySizes().addAll((Collection)newValue);
                return;
            }
            case 40: {
                this.setRequiredRTEVendor((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 37: {
                this.gSetBehavior(null);
                return;
            }
            case 38: {
                this.setBehavior(null);
                return;
            }
            case 39: {
                this.getPerInstanceMemorySizes().clear();
                return;
            }
            case 40: {
                this.unsetRequiredRTEVendor();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 37: {
                return this.gGetBehavior() != null;
            }
            case 38: {
                return this.behavior != null;
            }
            case 39: {
                return this.perInstanceMemorySizes != null && !this.perInstanceMemorySizes.isEmpty();
            }
            case 40: {
                return this.isSetRequiredRTEVendor();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GSwcImplementation.class) {
            switch (derivedFeatureID) {
                case 37: {
                    return 9;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GSwcImplementation.class) {
            switch (baseFeatureID) {
                case 9: {
                    return 37;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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
        result.append(" (requiredRTEVendor: ");
        if (this.requiredRTEVendorESet) {
            result.append(this.requiredRTEVendor);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

