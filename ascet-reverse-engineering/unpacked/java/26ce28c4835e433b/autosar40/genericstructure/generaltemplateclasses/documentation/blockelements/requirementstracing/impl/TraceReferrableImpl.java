/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.RequirementstracingPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.TraceReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.MultilanguageReferrableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class TraceReferrableImpl
extends MultilanguageReferrableImpl
implements TraceReferrable {
    protected static final String CATEGORY_EDEFAULT = "";
    protected String category = "";
    protected boolean categoryESet;

    protected TraceReferrableImpl() {
    }

    protected EClass eStaticClass() {
        return RequirementstracingPackage.Literals.TRACE_REFERRABLE;
    }

    public String getCategory() {
        return this.category;
    }

    public void setCategory(String newCategory) {
        String oldCategory = this.category;
        this.category = newCategory;
        boolean oldCategoryESet = this.categoryESet;
        this.categoryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldCategory, (Object)this.category, !oldCategoryESet));
        }
    }

    public void unsetCategory() {
        String oldCategory = this.category;
        boolean oldCategoryESet = this.categoryESet;
        this.category = CATEGORY_EDEFAULT;
        this.categoryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldCategory, (Object)CATEGORY_EDEFAULT, oldCategoryESet));
        }
    }

    public boolean isSetCategory() {
        return this.categoryESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 7: {
                return this.getCategory();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 7: {
                this.setCategory((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 7: {
                this.unsetCategory();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 7: {
                return this.isSetCategory();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (category: ");
        if (this.categoryESet) {
            result.append(this.category);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

