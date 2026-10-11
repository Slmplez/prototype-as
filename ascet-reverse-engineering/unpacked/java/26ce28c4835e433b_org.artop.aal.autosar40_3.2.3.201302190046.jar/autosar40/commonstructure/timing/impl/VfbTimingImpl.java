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
package autosar40.commonstructure.timing.impl;

import autosar40.commonstructure.timing.TimingPackage;
import autosar40.commonstructure.timing.VfbTiming;
import autosar40.commonstructure.timing.impl.TimingExtensionImpl;
import autosar40.swcomponent.components.SwComponentType;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class VfbTimingImpl
extends TimingExtensionImpl
implements VfbTiming,
IReferringClass {
    protected SwComponentType component;

    protected VfbTimingImpl() {
    }

    protected EClass eStaticClass() {
        return TimingPackage.Literals.VFB_TIMING;
    }

    public SwComponentType getComponent() {
        if (this.component != null && this.component.eIsProxy()) {
            InternalEObject oldComponent = (InternalEObject)this.component;
            this.component = (SwComponentType)this.eResolveProxy(oldComponent);
            if (this.component != oldComponent && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldComponent, (Object)this.component));
            }
        }
        return this.component;
    }

    public SwComponentType basicGetComponent() {
        return this.component;
    }

    public void setComponent(SwComponentType newComponent) {
        SwComponentType oldComponent = this.component;
        this.component = newComponent;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldComponent, (Object)this.component));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                if (resolve) {
                    return this.getComponent();
                }
                return this.basicGetComponent();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 24: {
                this.setComponent((SwComponentType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.setComponent(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.component != null;
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
}

