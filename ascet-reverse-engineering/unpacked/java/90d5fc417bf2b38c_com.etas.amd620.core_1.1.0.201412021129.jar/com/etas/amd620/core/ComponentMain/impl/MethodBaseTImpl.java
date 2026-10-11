/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.GenericDataT;
import com.etas.amd620.core.ComponentMain.MethodBaseT;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

public class MethodBaseTImpl
extends MinimalEObjectImpl.Container
implements MethodBaseT {
    protected EList<GenericDataT> customerData;
    protected static final boolean AVAILABLE_FOR_OS_EDEFAULT = false;
    protected boolean availableForOS = false;
    protected boolean availableForOSESet;
    protected static final Object DEFAULT_EDEFAULT = null;
    protected Object default_ = DEFAULT_EDEFAULT;
    protected static final boolean DEFAULT_METHOD_EDEFAULT = false;
    protected boolean defaultMethod = false;
    protected boolean defaultMethodESet;
    protected static final boolean HIDDEN_EDEFAULT = false;
    protected boolean hidden = false;
    protected boolean hiddenESet;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;
    protected static final String OID_EDEFAULT = null;
    protected String oID = OID_EDEFAULT;
    protected static final boolean PUBLIC_EDEFAULT = false;
    protected boolean public_ = false;
    protected boolean publicESet;
    protected static final boolean REINITIALIZE_METHOD_EDEFAULT = false;
    protected boolean reinitializeMethod = false;
    protected boolean reinitializeMethodESet;
    protected static final String UUID_EDEFAULT = null;
    protected String uUID = UUID_EDEFAULT;

    protected MethodBaseTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.METHOD_BASE_T;
    }

    @Override
    public EList<GenericDataT> getCustomerData() {
        if (this.customerData == null) {
            this.customerData = new EObjectContainmentEList(GenericDataT.class, (InternalEObject)this, 0);
        }
        return this.customerData;
    }

    @Override
    public boolean isAvailableForOS() {
        return this.availableForOS;
    }

    @Override
    public void setAvailableForOS(boolean newAvailableForOS) {
        boolean oldAvailableForOS = this.availableForOS;
        this.availableForOS = newAvailableForOS;
        boolean oldAvailableForOSESet = this.availableForOSESet;
        this.availableForOSESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, oldAvailableForOS, this.availableForOS, !oldAvailableForOSESet));
        }
    }

    @Override
    public void unsetAvailableForOS() {
        boolean oldAvailableForOS = this.availableForOS;
        boolean oldAvailableForOSESet = this.availableForOSESet;
        this.availableForOS = false;
        this.availableForOSESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 1, oldAvailableForOS, false, oldAvailableForOSESet));
        }
    }

    @Override
    public boolean isSetAvailableForOS() {
        return this.availableForOSESet;
    }

    @Override
    public Object getDefault() {
        return this.default_;
    }

    @Override
    public void setDefault(Object newDefault) {
        Object oldDefault = this.default_;
        this.default_ = newDefault;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, oldDefault, this.default_));
        }
    }

    @Override
    public boolean isDefaultMethod() {
        return this.defaultMethod;
    }

    @Override
    public void setDefaultMethod(boolean newDefaultMethod) {
        boolean oldDefaultMethod = this.defaultMethod;
        this.defaultMethod = newDefaultMethod;
        boolean oldDefaultMethodESet = this.defaultMethodESet;
        this.defaultMethodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, oldDefaultMethod, this.defaultMethod, !oldDefaultMethodESet));
        }
    }

    @Override
    public void unsetDefaultMethod() {
        boolean oldDefaultMethod = this.defaultMethod;
        boolean oldDefaultMethodESet = this.defaultMethodESet;
        this.defaultMethod = false;
        this.defaultMethodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 3, oldDefaultMethod, false, oldDefaultMethodESet));
        }
    }

    @Override
    public boolean isSetDefaultMethod() {
        return this.defaultMethodESet;
    }

    @Override
    public boolean isHidden() {
        return this.hidden;
    }

    @Override
    public void setHidden(boolean newHidden) {
        boolean oldHidden = this.hidden;
        this.hidden = newHidden;
        boolean oldHiddenESet = this.hiddenESet;
        this.hiddenESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, oldHidden, this.hidden, !oldHiddenESet));
        }
    }

    @Override
    public void unsetHidden() {
        boolean oldHidden = this.hidden;
        boolean oldHiddenESet = this.hiddenESet;
        this.hidden = false;
        this.hiddenESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, oldHidden, false, oldHiddenESet));
        }
    }

    @Override
    public boolean isSetHidden() {
        return this.hiddenESet;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldName, (Object)this.name));
        }
    }

    @Override
    public String getOID() {
        return this.oID;
    }

    @Override
    public void setOID(String newOID) {
        String oldOID = this.oID;
        this.oID = newOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldOID, (Object)this.oID));
        }
    }

    @Override
    public boolean isPublic() {
        return this.public_;
    }

    @Override
    public void setPublic(boolean newPublic) {
        boolean oldPublic = this.public_;
        this.public_ = newPublic;
        boolean oldPublicESet = this.publicESet;
        this.publicESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, oldPublic, this.public_, !oldPublicESet));
        }
    }

    @Override
    public void unsetPublic() {
        boolean oldPublic = this.public_;
        boolean oldPublicESet = this.publicESet;
        this.public_ = false;
        this.publicESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, oldPublic, false, oldPublicESet));
        }
    }

    @Override
    public boolean isSetPublic() {
        return this.publicESet;
    }

    @Override
    public boolean isReinitializeMethod() {
        return this.reinitializeMethod;
    }

    @Override
    public void setReinitializeMethod(boolean newReinitializeMethod) {
        boolean oldReinitializeMethod = this.reinitializeMethod;
        this.reinitializeMethod = newReinitializeMethod;
        boolean oldReinitializeMethodESet = this.reinitializeMethodESet;
        this.reinitializeMethodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, oldReinitializeMethod, this.reinitializeMethod, !oldReinitializeMethodESet));
        }
    }

    @Override
    public void unsetReinitializeMethod() {
        boolean oldReinitializeMethod = this.reinitializeMethod;
        boolean oldReinitializeMethodESet = this.reinitializeMethodESet;
        this.reinitializeMethod = false;
        this.reinitializeMethodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, oldReinitializeMethod, false, oldReinitializeMethodESet));
        }
    }

    @Override
    public boolean isSetReinitializeMethod() {
        return this.reinitializeMethodESet;
    }

    @Override
    public String getUUID() {
        return this.uUID;
    }

    @Override
    public void setUUID(String newUUID) {
        String oldUUID = this.uUID;
        this.uUID = newUUID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldUUID, (Object)this.uUID));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getCustomerData()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getCustomerData();
            }
            case 1: {
                return this.isAvailableForOS();
            }
            case 2: {
                return this.getDefault();
            }
            case 3: {
                return this.isDefaultMethod();
            }
            case 4: {
                return this.isHidden();
            }
            case 5: {
                return this.getName();
            }
            case 6: {
                return this.getOID();
            }
            case 7: {
                return this.isPublic();
            }
            case 8: {
                return this.isReinitializeMethod();
            }
            case 9: {
                return this.getUUID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getCustomerData().clear();
                this.getCustomerData().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.setAvailableForOS((Boolean)newValue);
                return;
            }
            case 2: {
                this.setDefault(newValue);
                return;
            }
            case 3: {
                this.setDefaultMethod((Boolean)newValue);
                return;
            }
            case 4: {
                this.setHidden((Boolean)newValue);
                return;
            }
            case 5: {
                this.setName((String)newValue);
                return;
            }
            case 6: {
                this.setOID((String)newValue);
                return;
            }
            case 7: {
                this.setPublic((Boolean)newValue);
                return;
            }
            case 8: {
                this.setReinitializeMethod((Boolean)newValue);
                return;
            }
            case 9: {
                this.setUUID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getCustomerData().clear();
                return;
            }
            case 1: {
                this.unsetAvailableForOS();
                return;
            }
            case 2: {
                this.setDefault(DEFAULT_EDEFAULT);
                return;
            }
            case 3: {
                this.unsetDefaultMethod();
                return;
            }
            case 4: {
                this.unsetHidden();
                return;
            }
            case 5: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 6: {
                this.setOID(OID_EDEFAULT);
                return;
            }
            case 7: {
                this.unsetPublic();
                return;
            }
            case 8: {
                this.unsetReinitializeMethod();
                return;
            }
            case 9: {
                this.setUUID(UUID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.customerData != null && !this.customerData.isEmpty();
            }
            case 1: {
                return this.isSetAvailableForOS();
            }
            case 2: {
                return DEFAULT_EDEFAULT == null ? this.default_ != null : !DEFAULT_EDEFAULT.equals(this.default_);
            }
            case 3: {
                return this.isSetDefaultMethod();
            }
            case 4: {
                return this.isSetHidden();
            }
            case 5: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 6: {
                return OID_EDEFAULT == null ? this.oID != null : !OID_EDEFAULT.equals(this.oID);
            }
            case 7: {
                return this.isSetPublic();
            }
            case 8: {
                return this.isSetReinitializeMethod();
            }
            case 9: {
                return UUID_EDEFAULT == null ? this.uUID != null : !UUID_EDEFAULT.equals(this.uUID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (availableForOS: ");
        if (this.availableForOSESet) {
            result.append(this.availableForOS);
        } else {
            result.append("<unset>");
        }
        result.append(", default: ");
        result.append(this.default_);
        result.append(", defaultMethod: ");
        if (this.defaultMethodESet) {
            result.append(this.defaultMethod);
        } else {
            result.append("<unset>");
        }
        result.append(", hidden: ");
        if (this.hiddenESet) {
            result.append(this.hidden);
        } else {
            result.append("<unset>");
        }
        result.append(", name: ");
        result.append(this.name);
        result.append(", oID: ");
        result.append(this.oID);
        result.append(", public: ");
        if (this.publicESet) {
            result.append(this.public_);
        } else {
            result.append("<unset>");
        }
        result.append(", reinitializeMethod: ");
        if (this.reinitializeMethodESet) {
            result.append(this.reinitializeMethod);
        } else {
            result.append("<unset>");
        }
        result.append(", uUID: ");
        result.append(this.uUID);
        result.append(')');
        return result.toString();
    }
}

