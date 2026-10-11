/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.genericstructure.generaltemplateclasses.specialdata.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.specialdata.Sd;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SdgContents;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SpecialdataPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SdImpl
extends ARObjectImpl
implements Sd {
    protected static final String GID_EDEFAULT = "";
    protected String gid = "";
    protected boolean gidESet;
    protected static final String VALUE_EDEFAULT = "";
    protected String value = "";
    protected boolean valueESet;

    protected SdImpl() {
    }

    protected EClass eStaticClass() {
        return SpecialdataPackage.Literals.SD;
    }

    public SdgContents getSdgContents() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SdgContents)this.eContainer();
    }

    public NotificationChain basicSetSdgContents(SdgContents newSdgContents, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSdgContents, 4, msgs);
        return msgs;
    }

    public void setSdgContents(SdgContents newSdgContents) {
        if (newSdgContents != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSdgContents != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSdgContents)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSdgContents != null) {
                msgs = ((InternalEObject)newSdgContents).eInverseAdd((InternalEObject)this, 6, SdgContents.class, msgs);
            }
            if ((msgs = this.basicSetSdgContents(newSdgContents, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSdgContents, (Object)newSdgContents));
        }
    }

    public String getGid() {
        return this.gid;
    }

    public void setGid(String newGid) {
        String oldGid = this.gid;
        this.gid = newGid;
        boolean oldGidESet = this.gidESet;
        this.gidESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldGid, (Object)this.gid, !oldGidESet));
        }
    }

    public void unsetGid() {
        String oldGid = this.gid;
        boolean oldGidESet = this.gidESet;
        this.gid = "";
        this.gidESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldGid, (Object)"", oldGidESet));
        }
    }

    public boolean isSetGid() {
        return this.gidESet;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String newValue) {
        String oldValue = this.value;
        this.value = newValue;
        boolean oldValueESet = this.valueESet;
        this.valueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldValue, (Object)this.value, !oldValueESet));
        }
    }

    public void unsetValue() {
        String oldValue = this.value;
        boolean oldValueESet = this.valueESet;
        this.value = "";
        this.valueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldValue, (Object)"", oldValueESet));
        }
    }

    public boolean isSetValue() {
        return this.valueESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSdgContents((SdgContents)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSdgContents(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, SdgContents.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSdgContents();
            }
            case 5: {
                return this.getGid();
            }
            case 6: {
                return this.getValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSdgContents((SdgContents)newValue);
                return;
            }
            case 5: {
                this.setGid((String)newValue);
                return;
            }
            case 6: {
                this.setValue((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSdgContents(null);
                return;
            }
            case 5: {
                this.unsetGid();
                return;
            }
            case 6: {
                this.unsetValue();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSdgContents() != null;
            }
            case 5: {
                return this.isSetGid();
            }
            case 6: {
                return this.isSetValue();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (gid: ");
        if (this.gidESet) {
            result.append(this.gid);
        } else {
            result.append("<unset>");
        }
        result.append(", value: ");
        if (this.valueESet) {
            result.append(this.value);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

