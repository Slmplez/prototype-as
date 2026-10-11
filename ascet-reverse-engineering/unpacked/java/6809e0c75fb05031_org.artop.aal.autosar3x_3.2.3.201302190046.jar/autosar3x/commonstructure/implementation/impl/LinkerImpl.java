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
package autosar3x.commonstructure.implementation.impl;

import autosar3x.commonstructure.implementation.Implementation;
import autosar3x.commonstructure.implementation.ImplementationPackage;
import autosar3x.commonstructure.implementation.Linker;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class LinkerImpl
extends IdentifiableImpl
implements Linker {
    protected static final String NAME_EDEFAULT = "";
    protected String name = "";
    protected boolean nameESet;
    protected static final String OPTIONS_EDEFAULT = "";
    protected String options = "";
    protected boolean optionsESet;
    protected static final String VENDOR_EDEFAULT = "";
    protected String vendor = "";
    protected boolean vendorESet;
    protected static final String VERSION_EDEFAULT = "";
    protected String version = "";
    protected boolean versionESet;

    protected LinkerImpl() {
    }

    protected EClass eStaticClass() {
        return ImplementationPackage.Literals.LINKER;
    }

    public Implementation getImplementation() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (Implementation)this.eContainer();
    }

    public NotificationChain basicSetImplementation(Implementation newImplementation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newImplementation, 17, msgs);
        return msgs;
    }

    public void setImplementation(Implementation newImplementation) {
        if (newImplementation != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newImplementation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newImplementation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newImplementation != null) {
                msgs = ((InternalEObject)newImplementation).eInverseAdd((InternalEObject)this, 25, Implementation.class, msgs);
            }
            if ((msgs = this.basicSetImplementation(newImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newImplementation, (Object)newImplementation));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldName, (Object)this.name, !oldNameESet));
        }
    }

    public void unsetName() {
        String oldName = this.name;
        boolean oldNameESet = this.nameESet;
        this.name = "";
        this.nameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldName, (Object)"", oldNameESet));
        }
    }

    public boolean isSetName() {
        return this.nameESet;
    }

    public String getOptions() {
        return this.options;
    }

    public void setOptions(String newOptions) {
        String oldOptions = this.options;
        this.options = newOptions;
        boolean oldOptionsESet = this.optionsESet;
        this.optionsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldOptions, (Object)this.options, !oldOptionsESet));
        }
    }

    public void unsetOptions() {
        String oldOptions = this.options;
        boolean oldOptionsESet = this.optionsESet;
        this.options = "";
        this.optionsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldOptions, (Object)"", oldOptionsESet));
        }
    }

    public boolean isSetOptions() {
        return this.optionsESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldVendor, (Object)this.vendor, !oldVendorESet));
        }
    }

    public void unsetVendor() {
        String oldVendor = this.vendor;
        boolean oldVendorESet = this.vendorESet;
        this.vendor = "";
        this.vendorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldVendor, (Object)"", oldVendorESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldVersion, (Object)this.version, !oldVersionESet));
        }
    }

    public void unsetVersion() {
        String oldVersion = this.version;
        boolean oldVersionESet = this.versionESet;
        this.version = "";
        this.versionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldVersion, (Object)"", oldVersionESet));
        }
    }

    public boolean isSetVersion() {
        return this.versionESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
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
            case 17: {
                return this.basicSetImplementation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, Implementation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getImplementation();
            }
            case 18: {
                return this.getName();
            }
            case 19: {
                return this.getOptions();
            }
            case 20: {
                return this.getVendor();
            }
            case 21: {
                return this.getVersion();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setImplementation((Implementation)newValue);
                return;
            }
            case 18: {
                this.setName((String)newValue);
                return;
            }
            case 19: {
                this.setOptions((String)newValue);
                return;
            }
            case 20: {
                this.setVendor((String)newValue);
                return;
            }
            case 21: {
                this.setVersion((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setImplementation(null);
                return;
            }
            case 18: {
                this.unsetName();
                return;
            }
            case 19: {
                this.unsetOptions();
                return;
            }
            case 20: {
                this.unsetVendor();
                return;
            }
            case 21: {
                this.unsetVersion();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getImplementation() != null;
            }
            case 18: {
                return this.isSetName();
            }
            case 19: {
                return this.isSetOptions();
            }
            case 20: {
                return this.isSetVendor();
            }
            case 21: {
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
        result.append(", options: ");
        if (this.optionsESet) {
            result.append(this.options);
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

