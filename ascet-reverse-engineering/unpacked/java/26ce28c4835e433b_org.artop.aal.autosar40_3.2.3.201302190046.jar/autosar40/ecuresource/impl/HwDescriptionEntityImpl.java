/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.ecuresource.impl;

import autosar40.ecuresource.EcuresourcePackage;
import autosar40.ecuresource.HwDescriptionEntity;
import autosar40.ecuresource.hwelementcategory.HwAttributeValue;
import autosar40.ecuresource.hwelementcategory.HwCategory;
import autosar40.ecuresource.hwelementcategory.HwType;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.ReferrableImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class HwDescriptionEntityImpl
extends ReferrableImpl
implements HwDescriptionEntity,
IReferringClass {
    protected HwType hwType;
    protected EList<HwCategory> hwCategories;
    protected EList<HwAttributeValue> hwAttributeValues;

    protected HwDescriptionEntityImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.HW_DESCRIPTION_ENTITY;
    }

    @Override
    public HwType getHwType() {
        if (this.hwType != null && this.hwType.eIsProxy()) {
            InternalEObject oldHwType = (InternalEObject)this.hwType;
            this.hwType = (HwType)this.eResolveProxy(oldHwType);
            if (this.hwType != oldHwType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldHwType, (Object)this.hwType));
            }
        }
        return this.hwType;
    }

    public HwType basicGetHwType() {
        return this.hwType;
    }

    @Override
    public void setHwType(HwType newHwType) {
        HwType oldHwType = this.hwType;
        this.hwType = newHwType;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldHwType, (Object)this.hwType));
        }
    }

    @Override
    public EList<HwCategory> getHwCategories() {
        if (this.hwCategories == null) {
            this.hwCategories = new EObjectResolvingReferringEList(HwCategory.class, (InternalEObject)this, 7);
        }
        return this.hwCategories;
    }

    @Override
    public EList<HwAttributeValue> getHwAttributeValues() {
        if (this.hwAttributeValues == null) {
            this.hwAttributeValues = new EObjectContainmentWithInverseEList(HwAttributeValue.class, (InternalEObject)this, 8, 4);
        }
        return this.hwAttributeValues;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return ((InternalEList)this.getHwAttributeValues()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return ((InternalEList)this.getHwAttributeValues()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                if (resolve) {
                    return this.getHwType();
                }
                return this.basicGetHwType();
            }
            case 7: {
                return this.getHwCategories();
            }
            case 8: {
                return this.getHwAttributeValues();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setHwType((HwType)newValue);
                return;
            }
            case 7: {
                this.getHwCategories().clear();
                this.getHwCategories().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.getHwAttributeValues().clear();
                this.getHwAttributeValues().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.setHwType(null);
                return;
            }
            case 7: {
                this.getHwCategories().clear();
                return;
            }
            case 8: {
                this.getHwAttributeValues().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.hwType != null;
            }
            case 7: {
                return this.hwCategories != null && !this.hwCategories.isEmpty();
            }
            case 8: {
                return this.hwAttributeValues != null && !this.hwAttributeValues.isEmpty();
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

