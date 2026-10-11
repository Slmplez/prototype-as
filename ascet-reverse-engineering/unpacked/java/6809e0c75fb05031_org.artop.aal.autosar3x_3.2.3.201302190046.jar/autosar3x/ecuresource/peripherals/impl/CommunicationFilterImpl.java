/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.ecuresource.peripherals.impl;

import autosar3x.ecuresource.peripherals.CommunicationFilter;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CommunicationFilterImpl
extends ARObjectImpl
implements CommunicationFilter {
    protected static final Integer FILTER_COUNT_EDEFAULT = new Integer(0);
    protected Integer filterCount = FILTER_COUNT_EDEFAULT;
    protected boolean filterCountESet;
    protected static final Integer FILTER_WIDTH_EDEFAULT = new Integer(0);
    protected Integer filterWidth = FILTER_WIDTH_EDEFAULT;
    protected boolean filterWidthESet;
    protected static final Boolean WILD_CARDS_EDEFAULT = Boolean.FALSE;
    protected Boolean wildCards = WILD_CARDS_EDEFAULT;
    protected boolean wildCardsESet;

    protected CommunicationFilterImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.COMMUNICATION_FILTER;
    }

    public Integer getFilterCount() {
        return this.filterCount;
    }

    public void setFilterCount(Integer newFilterCount) {
        Integer oldFilterCount = this.filterCount;
        this.filterCount = newFilterCount;
        boolean oldFilterCountESet = this.filterCountESet;
        this.filterCountESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldFilterCount, (Object)this.filterCount, !oldFilterCountESet));
        }
    }

    public void unsetFilterCount() {
        Integer oldFilterCount = this.filterCount;
        boolean oldFilterCountESet = this.filterCountESet;
        this.filterCount = FILTER_COUNT_EDEFAULT;
        this.filterCountESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldFilterCount, (Object)FILTER_COUNT_EDEFAULT, oldFilterCountESet));
        }
    }

    public boolean isSetFilterCount() {
        return this.filterCountESet;
    }

    public Integer getFilterWidth() {
        return this.filterWidth;
    }

    public void setFilterWidth(Integer newFilterWidth) {
        Integer oldFilterWidth = this.filterWidth;
        this.filterWidth = newFilterWidth;
        boolean oldFilterWidthESet = this.filterWidthESet;
        this.filterWidthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldFilterWidth, (Object)this.filterWidth, !oldFilterWidthESet));
        }
    }

    public void unsetFilterWidth() {
        Integer oldFilterWidth = this.filterWidth;
        boolean oldFilterWidthESet = this.filterWidthESet;
        this.filterWidth = FILTER_WIDTH_EDEFAULT;
        this.filterWidthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldFilterWidth, (Object)FILTER_WIDTH_EDEFAULT, oldFilterWidthESet));
        }
    }

    public boolean isSetFilterWidth() {
        return this.filterWidthESet;
    }

    public Boolean getWildCards() {
        return this.wildCards;
    }

    public void setWildCards(Boolean newWildCards) {
        Boolean oldWildCards = this.wildCards;
        this.wildCards = newWildCards;
        boolean oldWildCardsESet = this.wildCardsESet;
        this.wildCardsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldWildCards, (Object)this.wildCards, !oldWildCardsESet));
        }
    }

    public void unsetWildCards() {
        Boolean oldWildCards = this.wildCards;
        boolean oldWildCardsESet = this.wildCardsESet;
        this.wildCards = WILD_CARDS_EDEFAULT;
        this.wildCardsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldWildCards, (Object)WILD_CARDS_EDEFAULT, oldWildCardsESet));
        }
    }

    public boolean isSetWildCards() {
        return this.wildCardsESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getFilterCount();
            }
            case 5: {
                return this.getFilterWidth();
            }
            case 6: {
                return this.getWildCards();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setFilterCount((Integer)newValue);
                return;
            }
            case 5: {
                this.setFilterWidth((Integer)newValue);
                return;
            }
            case 6: {
                this.setWildCards((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetFilterCount();
                return;
            }
            case 5: {
                this.unsetFilterWidth();
                return;
            }
            case 6: {
                this.unsetWildCards();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetFilterCount();
            }
            case 5: {
                return this.isSetFilterWidth();
            }
            case 6: {
                return this.isSetWildCards();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (filterCount: ");
        if (this.filterCountESet) {
            result.append(this.filterCount);
        } else {
            result.append("<unset>");
        }
        result.append(", filterWidth: ");
        if (this.filterWidthESet) {
            result.append(this.filterWidth);
        } else {
            result.append("<unset>");
        }
        result.append(", wildCards: ");
        if (this.wildCardsESet) {
            result.append(this.wildCards);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

