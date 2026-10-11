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
package autosar21.swcomponent.implementation.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.implementation.Compiler;
import autosar21.swcomponent.implementation.Implementation;
import autosar21.swcomponent.implementation.ImplementationPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CompilerImpl
extends IdentifiableImpl
implements Compiler {
    protected static final String NAME_EDEFAULT = "";
    protected String name = "";
    protected boolean nameESet;
    protected static final String VENDOR_EDEFAULT = "";
    protected String vendor = "";
    protected boolean vendorESet;
    protected static final String VERSION_EDEFAULT = "";
    protected String version = "";
    protected boolean versionESet;

    protected CompilerImpl() {
    }

    protected EClass eStaticClass() {
        return ImplementationPackage.Literals.COMPILER;
    }

    public Implementation getImplementation() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (Implementation)this.eContainer();
    }

    public NotificationChain basicSetImplementation(Implementation newImplementation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newImplementation, 16, msgs);
        return msgs;
    }

    public void setImplementation(Implementation newImplementation) {
        if (newImplementation != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newImplementation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newImplementation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newImplementation != null) {
                msgs = ((InternalEObject)newImplementation).eInverseAdd((InternalEObject)this, 24, Implementation.class, msgs);
            }
            if ((msgs = this.basicSetImplementation(newImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newImplementation, (Object)newImplementation));
        }
    }

    public String getName() {
        return this.name;
    }

    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        boolean oldNameESet = this.nameESet;
        this.nameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldName, (Object)this.name, !oldNameESet));
        }
    }

    public void unsetName() {
        String oldName = this.name;
        boolean oldNameESet = this.nameESet;
        this.name = "";
        this.nameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldName, (Object)"", oldNameESet));
        }
    }

    public boolean isSetName() {
        return this.nameESet;
    }

    public String getVendor() {
        return this.vendor;
    }

    public void setVendor(String newVendor) {
        String oldVendor = this.vendor;
        this.vendor = newVendor;
        boolean oldVendorESet = this.vendorESet;
        this.vendorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldVendor, (Object)this.vendor, !oldVendorESet));
        }
    }

    public void unsetVendor() {
        String oldVendor = this.vendor;
        boolean oldVendorESet = this.vendorESet;
        this.vendor = "";
        this.vendorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldVendor, (Object)"", oldVendorESet));
        }
    }

    public boolean isSetVendor() {
        return this.vendorESet;
    }

    public String getVersion() {
        return this.version;
    }

    public void setVersion(String newVersion) {
        String oldVersion = this.version;
        this.version = newVersion;
        boolean oldVersionESet = this.versionESet;
        this.versionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldVersion, (Object)this.version, !oldVersionESet));
        }
    }

    public void unsetVersion() {
        String oldVersion = this.version;
        boolean oldVersionESet = this.versionESet;
        this.version = "";
        this.versionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldVersion, (Object)"", oldVersionESet));
        }
    }

    public boolean isSetVersion() {
        return this.versionESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetImplementation((Implementation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetImplementation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, Implementation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getImplementation();
            }
            case 17: {
                return this.getName();
            }
            case 18: {
                return this.getVendor();
            }
            case 19: {
                return this.getVersion();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setImplementation((Implementation)newValue);
                return;
            }
            case 17: {
                this.setName((String)newValue);
                return;
            }
            case 18: {
                this.setVendor((String)newValue);
                return;
            }
            case 19: {
                this.setVersion((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setImplementation(null);
                return;
            }
            case 17: {
                this.unsetName();
                return;
            }
            case 18: {
                this.unsetVendor();
                return;
            }
            case 19: {
                this.unsetVersion();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getImplementation() != null;
            }
            case 17: {
                return this.isSetName();
            }
            case 18: {
                return this.isSetVendor();
            }
            case 19: {
                return this.isSetVersion();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (name: ");
        if (this.nameESet) {
            result.append(this.name);
        } else {
            result.append("<unset>");
        }
        result.append(", vendor: ");
        if (this.vendorESet) {
            result.append(this.vendor);
        } else {
            result.append("<unset>");
        }
        result.append(", version: ");
        if (this.versionESet) {
            result.append(this.version);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

