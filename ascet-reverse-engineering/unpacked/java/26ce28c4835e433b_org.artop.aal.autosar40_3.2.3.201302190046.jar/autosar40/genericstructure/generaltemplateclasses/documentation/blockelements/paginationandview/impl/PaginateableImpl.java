/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.ChapterEnumBreak;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.KeepWithPreviousEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.PaginationandviewPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.DocumentViewSelectableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class PaginateableImpl
extends DocumentViewSelectableImpl
implements Paginateable {
    protected static final ChapterEnumBreak BREAK_EDEFAULT = ChapterEnumBreak.BREAK;
    protected ChapterEnumBreak break_ = BREAK_EDEFAULT;
    protected boolean breakESet;
    protected static final KeepWithPreviousEnum KEEP_WITH_PREVIOUS_EDEFAULT = KeepWithPreviousEnum.KEEP;
    protected KeepWithPreviousEnum keepWithPrevious = KEEP_WITH_PREVIOUS_EDEFAULT;
    protected boolean keepWithPreviousESet;

    protected PaginateableImpl() {
    }

    protected EClass eStaticClass() {
        return PaginationandviewPackage.Literals.PAGINATEABLE;
    }

    public ChapterEnumBreak getBreak() {
        return this.break_;
    }

    public void setBreak(ChapterEnumBreak newBreak) {
        ChapterEnumBreak oldBreak = this.break_;
        this.break_ = newBreak == null ? BREAK_EDEFAULT : newBreak;
        boolean oldBreakESet = this.breakESet;
        this.breakESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldBreak, (Object)this.break_, !oldBreakESet));
        }
    }

    public void unsetBreak() {
        ChapterEnumBreak oldBreak = this.break_;
        boolean oldBreakESet = this.breakESet;
        this.break_ = BREAK_EDEFAULT;
        this.breakESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldBreak, (Object)BREAK_EDEFAULT, oldBreakESet));
        }
    }

    public boolean isSetBreak() {
        return this.breakESet;
    }

    public KeepWithPreviousEnum getKeepWithPrevious() {
        return this.keepWithPrevious;
    }

    public void setKeepWithPrevious(KeepWithPreviousEnum newKeepWithPrevious) {
        KeepWithPreviousEnum oldKeepWithPrevious = this.keepWithPrevious;
        this.keepWithPrevious = newKeepWithPrevious == null ? KEEP_WITH_PREVIOUS_EDEFAULT : newKeepWithPrevious;
        boolean oldKeepWithPreviousESet = this.keepWithPreviousESet;
        this.keepWithPreviousESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldKeepWithPrevious, (Object)this.keepWithPrevious, !oldKeepWithPreviousESet));
        }
    }

    public void unsetKeepWithPrevious() {
        KeepWithPreviousEnum oldKeepWithPrevious = this.keepWithPrevious;
        boolean oldKeepWithPreviousESet = this.keepWithPreviousESet;
        this.keepWithPrevious = KEEP_WITH_PREVIOUS_EDEFAULT;
        this.keepWithPreviousESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldKeepWithPrevious, (Object)KEEP_WITH_PREVIOUS_EDEFAULT, oldKeepWithPreviousESet));
        }
    }

    public boolean isSetKeepWithPrevious() {
        return this.keepWithPreviousESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getBreak();
            }
            case 7: {
                return this.getKeepWithPrevious();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setBreak((ChapterEnumBreak)((Object)newValue));
                return;
            }
            case 7: {
                this.setKeepWithPrevious((KeepWithPreviousEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.unsetBreak();
                return;
            }
            case 7: {
                this.unsetKeepWithPrevious();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.isSetBreak();
            }
            case 7: {
                return this.isSetKeepWithPrevious();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (break: ");
        if (this.breakESet) {
            result.append((Object)this.break_);
        } else {
            result.append("<unset>");
        }
        result.append(", keepWithPrevious: ");
        if (this.keepWithPreviousESet) {
            result.append((Object)this.keepWithPrevious);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

