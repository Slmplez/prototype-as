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
package autosar40.standardization.blueprintdedicated.portprotoypeblueprint.impl;

import autosar40.standardization.abstractblueprintstructure.impl.AtpBlueprintMappingImpl;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprint;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprintMapping;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortprotoypeblueprintPackage;
import autosar40.swcomponent.components.PortPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class PortPrototypeBlueprintMappingImpl
extends AtpBlueprintMappingImpl
implements PortPrototypeBlueprintMapping,
IReferringClass {
    protected PortPrototypeBlueprint portPrototypeBlueprint;
    protected PortPrototype derivedPortPrototype;

    protected PortPrototypeBlueprintMappingImpl() {
    }

    protected EClass eStaticClass() {
        return PortprotoypeblueprintPackage.Literals.PORT_PROTOTYPE_BLUEPRINT_MAPPING;
    }

    public PortPrototypeBlueprint getPortPrototypeBlueprint() {
        if (this.portPrototypeBlueprint != null && this.portPrototypeBlueprint.eIsProxy()) {
            InternalEObject oldPortPrototypeBlueprint = (InternalEObject)this.portPrototypeBlueprint;
            this.portPrototypeBlueprint = (PortPrototypeBlueprint)this.eResolveProxy(oldPortPrototypeBlueprint);
            if (this.portPrototypeBlueprint != oldPortPrototypeBlueprint && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldPortPrototypeBlueprint, (Object)this.portPrototypeBlueprint));
            }
        }
        return this.portPrototypeBlueprint;
    }

    public PortPrototypeBlueprint basicGetPortPrototypeBlueprint() {
        return this.portPrototypeBlueprint;
    }

    public void setPortPrototypeBlueprint(PortPrototypeBlueprint newPortPrototypeBlueprint) {
        PortPrototypeBlueprint oldPortPrototypeBlueprint = this.portPrototypeBlueprint;
        this.portPrototypeBlueprint = newPortPrototypeBlueprint;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldPortPrototypeBlueprint, (Object)this.portPrototypeBlueprint));
        }
    }

    public PortPrototype getDerivedPortPrototype() {
        if (this.derivedPortPrototype != null && this.derivedPortPrototype.eIsProxy()) {
            InternalEObject oldDerivedPortPrototype = (InternalEObject)this.derivedPortPrototype;
            this.derivedPortPrototype = (PortPrototype)this.eResolveProxy(oldDerivedPortPrototype);
            if (this.derivedPortPrototype != oldDerivedPortPrototype && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldDerivedPortPrototype, (Object)this.derivedPortPrototype));
            }
        }
        return this.derivedPortPrototype;
    }

    public PortPrototype basicGetDerivedPortPrototype() {
        return this.derivedPortPrototype;
    }

    public void setDerivedPortPrototype(PortPrototype newDerivedPortPrototype) {
        PortPrototype oldDerivedPortPrototype = this.derivedPortPrototype;
        this.derivedPortPrototype = newDerivedPortPrototype;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDerivedPortPrototype, (Object)this.derivedPortPrototype));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                if (resolve) {
                    return this.getPortPrototypeBlueprint();
                }
                return this.basicGetPortPrototypeBlueprint();
            }
            case 6: {
                if (resolve) {
                    return this.getDerivedPortPrototype();
                }
                return this.basicGetDerivedPortPrototype();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setPortPrototypeBlueprint((PortPrototypeBlueprint)newValue);
                return;
            }
            case 6: {
                this.setDerivedPortPrototype((PortPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setPortPrototypeBlueprint(null);
                return;
            }
            case 6: {
                this.setDerivedPortPrototype(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.portPrototypeBlueprint != null;
            }
            case 6: {
                return this.derivedPortPrototype != null;
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

