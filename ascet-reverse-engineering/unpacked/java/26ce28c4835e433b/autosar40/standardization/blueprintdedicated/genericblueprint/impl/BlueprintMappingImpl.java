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
package autosar40.standardization.blueprintdedicated.genericblueprint.impl;

import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.standardization.abstractblueprintstructure.impl.AtpBlueprintMappingImpl;
import autosar40.standardization.blueprintdedicated.genericblueprint.BlueprintMapping;
import autosar40.standardization.blueprintdedicated.genericblueprint.GenericblueprintPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class BlueprintMappingImpl
extends AtpBlueprintMappingImpl
implements BlueprintMapping,
IReferringClass {
    protected AtpBlueprint blueprint;
    protected AtpBlueprintable derivedObject;

    protected BlueprintMappingImpl() {
    }

    protected EClass eStaticClass() {
        return GenericblueprintPackage.Literals.BLUEPRINT_MAPPING;
    }

    public AtpBlueprint getBlueprint() {
        if (this.blueprint != null && this.blueprint.eIsProxy()) {
            InternalEObject oldBlueprint = (InternalEObject)this.blueprint;
            this.blueprint = (AtpBlueprint)this.eResolveProxy(oldBlueprint);
            if (this.blueprint != oldBlueprint && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldBlueprint, (Object)this.blueprint));
            }
        }
        return this.blueprint;
    }

    public AtpBlueprint basicGetBlueprint() {
        return this.blueprint;
    }

    public void setBlueprint(AtpBlueprint newBlueprint) {
        AtpBlueprint oldBlueprint = this.blueprint;
        this.blueprint = newBlueprint;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldBlueprint, (Object)this.blueprint));
        }
    }

    public AtpBlueprintable getDerivedObject() {
        if (this.derivedObject != null && this.derivedObject.eIsProxy()) {
            InternalEObject oldDerivedObject = (InternalEObject)this.derivedObject;
            this.derivedObject = (AtpBlueprintable)this.eResolveProxy(oldDerivedObject);
            if (this.derivedObject != oldDerivedObject && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldDerivedObject, (Object)this.derivedObject));
            }
        }
        return this.derivedObject;
    }

    public AtpBlueprintable basicGetDerivedObject() {
        return this.derivedObject;
    }

    public void setDerivedObject(AtpBlueprintable newDerivedObject) {
        AtpBlueprintable oldDerivedObject = this.derivedObject;
        this.derivedObject = newDerivedObject;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDerivedObject, (Object)this.derivedObject));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                if (resolve) {
                    return this.getBlueprint();
                }
                return this.basicGetBlueprint();
            }
            case 6: {
                if (resolve) {
                    return this.getDerivedObject();
                }
                return this.basicGetDerivedObject();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setBlueprint((AtpBlueprint)newValue);
                return;
            }
            case 6: {
                this.setDerivedObject((AtpBlueprintable)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setBlueprint(null);
                return;
            }
            case 6: {
                this.setDerivedObject(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.blueprint != null;
            }
            case 6: {
                return this.derivedObject != null;
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

