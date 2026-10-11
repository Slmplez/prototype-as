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
package autosar40.standardization.blueprintdedicated.portinterfaceblueprint.impl;

import autosar40.standardization.abstractblueprintstructure.impl.AtpBlueprintMappingImpl;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.PortInterfaceBlueprintMapping;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.PortinterfaceblueprintPackage;
import autosar40.swcomponent.portinterface.PortInterface;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class PortInterfaceBlueprintMappingImpl
extends AtpBlueprintMappingImpl
implements PortInterfaceBlueprintMapping,
IReferringClass {
    protected PortInterface portInterfaceBlueprint;
    protected PortInterface derivedPortInterface;

    protected PortInterfaceBlueprintMappingImpl() {
    }

    protected EClass eStaticClass() {
        return PortinterfaceblueprintPackage.Literals.PORT_INTERFACE_BLUEPRINT_MAPPING;
    }

    public PortInterface getPortInterfaceBlueprint() {
        if (this.portInterfaceBlueprint != null && this.portInterfaceBlueprint.eIsProxy()) {
            InternalEObject oldPortInterfaceBlueprint = (InternalEObject)this.portInterfaceBlueprint;
            this.portInterfaceBlueprint = (PortInterface)this.eResolveProxy(oldPortInterfaceBlueprint);
            if (this.portInterfaceBlueprint != oldPortInterfaceBlueprint && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldPortInterfaceBlueprint, (Object)this.portInterfaceBlueprint));
            }
        }
        return this.portInterfaceBlueprint;
    }

    public PortInterface basicGetPortInterfaceBlueprint() {
        return this.portInterfaceBlueprint;
    }

    public void setPortInterfaceBlueprint(PortInterface newPortInterfaceBlueprint) {
        PortInterface oldPortInterfaceBlueprint = this.portInterfaceBlueprint;
        this.portInterfaceBlueprint = newPortInterfaceBlueprint;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldPortInterfaceBlueprint, (Object)this.portInterfaceBlueprint));
        }
    }

    public PortInterface getDerivedPortInterface() {
        if (this.derivedPortInterface != null && this.derivedPortInterface.eIsProxy()) {
            InternalEObject oldDerivedPortInterface = (InternalEObject)this.derivedPortInterface;
            this.derivedPortInterface = (PortInterface)this.eResolveProxy(oldDerivedPortInterface);
            if (this.derivedPortInterface != oldDerivedPortInterface && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldDerivedPortInterface, (Object)this.derivedPortInterface));
            }
        }
        return this.derivedPortInterface;
    }

    public PortInterface basicGetDerivedPortInterface() {
        return this.derivedPortInterface;
    }

    public void setDerivedPortInterface(PortInterface newDerivedPortInterface) {
        PortInterface oldDerivedPortInterface = this.derivedPortInterface;
        this.derivedPortInterface = newDerivedPortInterface;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDerivedPortInterface, (Object)this.derivedPortInterface));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                if (resolve) {
                    return this.getPortInterfaceBlueprint();
                }
                return this.basicGetPortInterfaceBlueprint();
            }
            case 6: {
                if (resolve) {
                    return this.getDerivedPortInterface();
                }
                return this.basicGetDerivedPortInterface();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setPortInterfaceBlueprint((PortInterface)newValue);
                return;
            }
            case 6: {
                this.setDerivedPortInterface((PortInterface)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setPortInterfaceBlueprint(null);
                return;
            }
            case 6: {
                this.setDerivedPortInterface(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.portInterfaceBlueprint != null;
            }
            case 6: {
                return this.derivedPortInterface != null;
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

