/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar40.genericstructure.generaltemplateclasses.arpackage.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ArpackagePackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ReferenceBase;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ReferenceBaseImpl
extends ARObjectImpl
implements ReferenceBase,
IReferringClass {
    protected static final String SHORT_LABEL_EDEFAULT = "";
    protected String shortLabel = "";
    protected boolean shortLabelESet;
    protected static final Boolean IS_DEFAULT_EDEFAULT = Boolean.FALSE;
    protected Boolean isDefault = IS_DEFAULT_EDEFAULT;
    protected boolean isDefaultESet;
    protected static final Boolean IS_GLOBAL_EDEFAULT = Boolean.FALSE;
    protected Boolean isGlobal = IS_GLOBAL_EDEFAULT;
    protected boolean isGlobalESet;
    protected static final Boolean BASE_IS_THIS_PACKAGE_EDEFAULT = Boolean.FALSE;
    protected Boolean baseIsThisPackage = BASE_IS_THIS_PACKAGE_EDEFAULT;
    protected boolean baseIsThisPackageESet;
    protected EList<String> globalElements;
    protected ARPackage package_;

    protected ReferenceBaseImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ArpackagePackage.Literals.REFERENCE_BASE;
    }

    @Override
    public ARPackage getARPackage() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ARPackage)this.eContainer();
    }

    public NotificationChain basicSetARPackage(ARPackage newARPackage, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newARPackage, 4, msgs);
        return msgs;
    }

    @Override
    public void setARPackage(ARPackage newARPackage) {
        if (newARPackage != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newARPackage != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newARPackage)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newARPackage != null) {
                msgs = ((InternalEObject)newARPackage).eInverseAdd((InternalEObject)this, 21, ARPackage.class, msgs);
            }
            if ((msgs = this.basicSetARPackage(newARPackage, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newARPackage, (Object)newARPackage));
        }
    }

    @Override
    public String getShortLabel() {
        return this.shortLabel;
    }

    @Override
    public void setShortLabel(String newShortLabel) {
        String oldShortLabel = this.shortLabel;
        this.shortLabel = newShortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabelESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldShortLabel, (Object)this.shortLabel, !oldShortLabelESet));
        }
    }

    @Override
    public void unsetShortLabel() {
        String oldShortLabel = this.shortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabel = SHORT_LABEL_EDEFAULT;
        this.shortLabelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldShortLabel, (Object)SHORT_LABEL_EDEFAULT, oldShortLabelESet));
        }
    }

    @Override
    public boolean isSetShortLabel() {
        return this.shortLabelESet;
    }

    @Override
    public Boolean getIsDefault() {
        return this.isDefault;
    }

    @Override
    public void setIsDefault(Boolean newIsDefault) {
        Boolean oldIsDefault = this.isDefault;
        this.isDefault = newIsDefault;
        boolean oldIsDefaultESet = this.isDefaultESet;
        this.isDefaultESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldIsDefault, (Object)this.isDefault, !oldIsDefaultESet));
        }
    }

    @Override
    public void unsetIsDefault() {
        Boolean oldIsDefault = this.isDefault;
        boolean oldIsDefaultESet = this.isDefaultESet;
        this.isDefault = IS_DEFAULT_EDEFAULT;
        this.isDefaultESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldIsDefault, (Object)IS_DEFAULT_EDEFAULT, oldIsDefaultESet));
        }
    }

    @Override
    public boolean isSetIsDefault() {
        return this.isDefaultESet;
    }

    @Override
    public Boolean getIsGlobal() {
        return this.isGlobal;
    }

    @Override
    public void setIsGlobal(Boolean newIsGlobal) {
        Boolean oldIsGlobal = this.isGlobal;
        this.isGlobal = newIsGlobal;
        boolean oldIsGlobalESet = this.isGlobalESet;
        this.isGlobalESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldIsGlobal, (Object)this.isGlobal, !oldIsGlobalESet));
        }
    }

    @Override
    public void unsetIsGlobal() {
        Boolean oldIsGlobal = this.isGlobal;
        boolean oldIsGlobalESet = this.isGlobalESet;
        this.isGlobal = IS_GLOBAL_EDEFAULT;
        this.isGlobalESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldIsGlobal, (Object)IS_GLOBAL_EDEFAULT, oldIsGlobalESet));
        }
    }

    @Override
    public boolean isSetIsGlobal() {
        return this.isGlobalESet;
    }

    @Override
    public Boolean getBaseIsThisPackage() {
        return this.baseIsThisPackage;
    }

    @Override
    public void setBaseIsThisPackage(Boolean newBaseIsThisPackage) {
        Boolean oldBaseIsThisPackage = this.baseIsThisPackage;
        this.baseIsThisPackage = newBaseIsThisPackage;
        boolean oldBaseIsThisPackageESet = this.baseIsThisPackageESet;
        this.baseIsThisPackageESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldBaseIsThisPackage, (Object)this.baseIsThisPackage, !oldBaseIsThisPackageESet));
        }
    }

    @Override
    public void unsetBaseIsThisPackage() {
        Boolean oldBaseIsThisPackage = this.baseIsThisPackage;
        boolean oldBaseIsThisPackageESet = this.baseIsThisPackageESet;
        this.baseIsThisPackage = BASE_IS_THIS_PACKAGE_EDEFAULT;
        this.baseIsThisPackageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldBaseIsThisPackage, (Object)BASE_IS_THIS_PACKAGE_EDEFAULT, oldBaseIsThisPackageESet));
        }
    }

    @Override
    public boolean isSetBaseIsThisPackage() {
        return this.baseIsThisPackageESet;
    }

    @Override
    public EList<String> getGlobalElements() {
        if (this.globalElements == null) {
            this.globalElements = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 9);
        }
        return this.globalElements;
    }

    @Override
    public void unsetGlobalElements() {
        if (this.globalElements != null) {
            ((InternalEList.Unsettable)this.globalElements).unset();
        }
    }

    @Override
    public boolean isSetGlobalElements() {
        return this.globalElements != null && ((InternalEList.Unsettable)this.globalElements).isSet();
    }

    @Override
    public ARPackage getPackage() {
        if (this.package_ != null && this.package_.eIsProxy()) {
            InternalEObject oldPackage = (InternalEObject)this.package_;
            this.package_ = (ARPackage)this.eResolveProxy(oldPackage);
            if (this.package_ != oldPackage && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 10, (Object)oldPackage, (Object)this.package_));
            }
        }
        return this.package_;
    }

    public ARPackage basicGetPackage() {
        return this.package_;
    }

    @Override
    public void setPackage(ARPackage newPackage) {
        ARPackage oldPackage = this.package_;
        this.package_ = newPackage;
        AutosarObjectUtil.setDest((EObject)this, (int)10, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldPackage, (Object)this.package_));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetARPackage((ARPackage)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetARPackage(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, ARPackage.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getARPackage();
            }
            case 5: {
                return this.getShortLabel();
            }
            case 6: {
                return this.getIsDefault();
            }
            case 7: {
                return this.getIsGlobal();
            }
            case 8: {
                return this.getBaseIsThisPackage();
            }
            case 9: {
                return this.getGlobalElements();
            }
            case 10: {
                if (resolve) {
                    return this.getPackage();
                }
                return this.basicGetPackage();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setARPackage((ARPackage)newValue);
                return;
            }
            case 5: {
                this.setShortLabel((String)newValue);
                return;
            }
            case 6: {
                this.setIsDefault((Boolean)newValue);
                return;
            }
            case 7: {
                this.setIsGlobal((Boolean)newValue);
                return;
            }
            case 8: {
                this.setBaseIsThisPackage((Boolean)newValue);
                return;
            }
            case 9: {
                this.getGlobalElements().clear();
                this.getGlobalElements().addAll((Collection)newValue);
                return;
            }
            case 10: {
                this.setPackage((ARPackage)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setARPackage(null);
                return;
            }
            case 5: {
                this.unsetShortLabel();
                return;
            }
            case 6: {
                this.unsetIsDefault();
                return;
            }
            case 7: {
                this.unsetIsGlobal();
                return;
            }
            case 8: {
                this.unsetBaseIsThisPackage();
                return;
            }
            case 9: {
                this.unsetGlobalElements();
                return;
            }
            case 10: {
                this.setPackage(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getARPackage() != null;
            }
            case 5: {
                return this.isSetShortLabel();
            }
            case 6: {
                return this.isSetIsDefault();
            }
            case 7: {
                return this.isSetIsGlobal();
            }
            case 8: {
                return this.isSetBaseIsThisPackage();
            }
            case 9: {
                return this.isSetGlobalElements();
            }
            case 10: {
                return this.package_ != null;
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (shortLabel: ");
        if (this.shortLabelESet) {
            result.append(this.shortLabel);
        } else {
            result.append("<unset>");
        }
        result.append(", isDefault: ");
        if (this.isDefaultESet) {
            result.append(this.isDefault);
        } else {
            result.append("<unset>");
        }
        result.append(", isGlobal: ");
        if (this.isGlobalESet) {
            result.append(this.isGlobal);
        } else {
            result.append("<unset>");
        }
        result.append(", baseIsThisPackage: ");
        if (this.baseIsThisPackageESet) {
            result.append(this.baseIsThisPackage);
        } else {
            result.append("<unset>");
        }
        result.append(", globalElements: ");
        result.append(this.globalElements);
        result.append(')');
        return result.toString();
    }
}

