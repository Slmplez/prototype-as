/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.ecuresource.hwelementcategory.impl;

import autosar40.ecuresource.hwelementcategory.HwAttributeDef;
import autosar40.ecuresource.hwelementcategory.HwCategory;
import autosar40.ecuresource.hwelementcategory.HwelementcategoryPackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class HwCategoryImpl
extends ARElementImpl
implements HwCategory {
    protected EList<HwAttributeDef> hwAttributeDefs;

    protected HwCategoryImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return HwelementcategoryPackage.Literals.HW_CATEGORY;
    }

    @Override
    public EList<HwAttributeDef> getHwAttributeDefs() {
        if (this.hwAttributeDefs == null) {
            this.hwAttributeDefs = new EObjectContainmentWithInverseEList(HwAttributeDef.class, (InternalEObject)this, 21, 18);
        }
        return this.hwAttributeDefs;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getHwAttributeDefs()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getHwAttributeDefs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getHwAttributeDefs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.getHwAttributeDefs().clear();
                this.getHwAttributeDefs().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.getHwAttributeDefs().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.hwAttributeDefs != null && !this.hwAttributeDefs.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

