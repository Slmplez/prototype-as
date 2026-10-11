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
package autosar40.system.datamapping.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.swcomponent.portinterface.ArgumentDataPrototype;
import autosar40.system.datamapping.ClientServerCompositeTypeMapping;
import autosar40.system.datamapping.DatamappingPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class ClientServerCompositeTypeMappingImpl
extends ARObjectImpl
implements ClientServerCompositeTypeMapping,
IReferringClass {
    protected ArgumentDataPrototype argument;

    protected ClientServerCompositeTypeMappingImpl() {
    }

    protected EClass eStaticClass() {
        return DatamappingPackage.Literals.CLIENT_SERVER_COMPOSITE_TYPE_MAPPING;
    }

    public ArgumentDataPrototype getArgument() {
        if (this.argument != null && this.argument.eIsProxy()) {
            InternalEObject oldArgument = (InternalEObject)this.argument;
            this.argument = (ArgumentDataPrototype)this.eResolveProxy(oldArgument);
            if (this.argument != oldArgument && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 4, (Object)oldArgument, (Object)this.argument));
            }
        }
        return this.argument;
    }

    public ArgumentDataPrototype basicGetArgument() {
        return this.argument;
    }

    public void setArgument(ArgumentDataPrototype newArgument) {
        ArgumentDataPrototype oldArgument = this.argument;
        this.argument = newArgument;
        AutosarObjectUtil.setDest((EObject)this, (int)4, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldArgument, (Object)this.argument));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (resolve) {
                    return this.getArgument();
                }
                return this.basicGetArgument();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setArgument((ArgumentDataPrototype)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setArgument(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.argument != null;
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

