/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.bswmodule.bswbehavior.impl;

import autosar40.bswmodule.bswbehavior.BswInterruptCategory;
import autosar40.bswmodule.bswbehavior.BswInterruptEntity;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswbehavior.impl.BswModuleEntityImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class BswInterruptEntityImpl
extends BswModuleEntityImpl
implements BswInterruptEntity {
    protected static final BswInterruptCategory INTERRUPT_CATEGORY_EDEFAULT = BswInterruptCategory.CAT1;
    protected BswInterruptCategory interruptCategory = INTERRUPT_CATEGORY_EDEFAULT;
    protected boolean interruptCategoryESet;
    protected static final String INTERRUPT_SOURCE_EDEFAULT = "";
    protected String interruptSource = "";
    protected boolean interruptSourceESet;

    protected BswInterruptEntityImpl() {
    }

    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.BSW_INTERRUPT_ENTITY;
    }

    public BswInterruptCategory getInterruptCategory() {
        return this.interruptCategory;
    }

    public void setInterruptCategory(BswInterruptCategory newInterruptCategory) {
        BswInterruptCategory oldInterruptCategory = this.interruptCategory;
        this.interruptCategory = newInterruptCategory == null ? INTERRUPT_CATEGORY_EDEFAULT : newInterruptCategory;
        boolean oldInterruptCategoryESet = this.interruptCategoryESet;
        this.interruptCategoryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldInterruptCategory, (Object)this.interruptCategory, !oldInterruptCategoryESet));
        }
    }

    public void unsetInterruptCategory() {
        BswInterruptCategory oldInterruptCategory = this.interruptCategory;
        boolean oldInterruptCategoryESet = this.interruptCategoryESet;
        this.interruptCategory = INTERRUPT_CATEGORY_EDEFAULT;
        this.interruptCategoryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldInterruptCategory, (Object)INTERRUPT_CATEGORY_EDEFAULT, oldInterruptCategoryESet));
        }
    }

    public boolean isSetInterruptCategory() {
        return this.interruptCategoryESet;
    }

    public String getInterruptSource() {
        return this.interruptSource;
    }

    public void setInterruptSource(String newInterruptSource) {
        String oldInterruptSource = this.interruptSource;
        this.interruptSource = newInterruptSource;
        boolean oldInterruptSourceESet = this.interruptSourceESet;
        this.interruptSourceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldInterruptSource, (Object)this.interruptSource, !oldInterruptSourceESet));
        }
    }

    public void unsetInterruptSource() {
        String oldInterruptSource = this.interruptSource;
        boolean oldInterruptSourceESet = this.interruptSourceESet;
        this.interruptSource = INTERRUPT_SOURCE_EDEFAULT;
        this.interruptSourceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldInterruptSource, (Object)INTERRUPT_SOURCE_EDEFAULT, oldInterruptSourceESet));
        }
    }

    public boolean isSetInterruptSource() {
        return this.interruptSourceESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 33: {
                return this.getInterruptCategory();
            }
            case 34: {
                return this.getInterruptSource();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 33: {
                this.setInterruptCategory((BswInterruptCategory)((Object)newValue));
                return;
            }
            case 34: {
                this.setInterruptSource((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 33: {
                this.unsetInterruptCategory();
                return;
            }
            case 34: {
                this.unsetInterruptSource();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 33: {
                return this.isSetInterruptCategory();
            }
            case 34: {
                return this.isSetInterruptSource();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (interruptCategory: ");
        if (this.interruptCategoryESet) {
            result.append((Object)this.interruptCategory);
        } else {
            result.append("<unset>");
        }
        result.append(", interruptSource: ");
        if (this.interruptSourceESet) {
            result.append(this.interruptSource);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

