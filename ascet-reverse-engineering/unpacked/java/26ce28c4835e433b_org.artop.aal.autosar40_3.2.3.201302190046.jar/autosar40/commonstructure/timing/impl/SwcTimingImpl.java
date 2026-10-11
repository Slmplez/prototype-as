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

import autosar40.commonstructure.timing.SwcTiming;
import autosar40.commonstructure.timing.TimingPackage;
import autosar40.commonstructure.timing.impl.TimingExtensionImpl;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwcTimingImpl
extends TimingExtensionImpl
implements SwcTiming,
IReferringClass {
    protected SwcInternalBehavior behavior;
    protected SwComponentType component;

    protected SwcTimingImpl() {
    }

    protected EClass eStaticClass() {
        return TimingPackage.Literals.SWC_TIMING;
    }

    public SwcInternalBehavior getBehavior() {
        if (this.behavior != null && this.behavior.eIsProxy()) {
            InternalEObject oldBehavior = (InternalEObject)this.behavior;
            this.behavior = (SwcInternalBehavior)this.eResolveProxy(oldBehavior);
            if (this.behavior != oldBehavior && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldBehavior, (Object)this.behavior));
            }
        }
        return this.behavior;
    }

    public SwcInternalBehavior basicGetBehavior() {
        return this.behavior;
    }

    public void setBehavior(SwcInternalBehavior newBehavior) {
        SwcInternalBehavior oldBehavior = this.behavior;
        this.behavior = newBehavior;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldBehavior, (Object)this.behavior));
        }
    }

    public SwComponentType getComponent() {
        if (this.component != null && this.component.eIsProxy()) {
            InternalEObject oldComponent = (InternalEObject)this.component;
            this.component = (SwComponentType)this.eResolveProxy(oldComponent);
            if (this.component != oldComponent && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 25, (Object)oldComponent, (Object)this.component));
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
        AutosarObjectUtil.setDest((EObject)this, (int)25, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldComponent, (Object)this.component));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                if (resolve) {
                    return this.getBehavior();
                }
                return this.basicGetBehavior();
            }
            case 25: {
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
                this.setBehavior((SwcInternalBehavior)newValue);
                return;
            }
            case 25: {
                this.setComponent((SwComponentType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.setBehavior(null);
                return;
            }
            case 25: {
                this.setComponent(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.behavior != null;
            }
            case 25: {
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

