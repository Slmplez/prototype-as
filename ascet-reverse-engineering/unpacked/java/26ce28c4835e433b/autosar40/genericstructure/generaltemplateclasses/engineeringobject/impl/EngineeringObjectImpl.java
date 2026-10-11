/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar40.genericstructure.generaltemplateclasses.engineeringobject.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringObject;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringobjectPackage;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class EngineeringObjectImpl
extends ARObjectImpl
implements EngineeringObject {
    protected static final String SHORT_LABEL_EDEFAULT = "";
    protected String shortLabel = "";
    protected boolean shortLabelESet;
    protected static final String CATEGORY_EDEFAULT = "";
    protected String category = "";
    protected boolean categoryESet;
    protected EList<String> revisionLabels;
    protected static final String DOMAIN_EDEFAULT = "";
    protected String domain = "";
    protected boolean domainESet;

    protected EngineeringObjectImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EngineeringobjectPackage.Literals.ENGINEERING_OBJECT;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldShortLabel, (Object)this.shortLabel, !oldShortLabelESet));
        }
    }

    @Override
    public void unsetShortLabel() {
        String oldShortLabel = this.shortLabel;
        boolean oldShortLabelESet = this.shortLabelESet;
        this.shortLabel = "";
        this.shortLabelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldShortLabel, (Object)"", oldShortLabelESet));
        }
    }

    @Override
    public boolean isSetShortLabel() {
        return this.shortLabelESet;
    }

    @Override
    public String getCategory() {
        return this.category;
    }

    @Override
    public void setCategory(String newCategory) {
        String oldCategory = this.category;
        this.category = newCategory;
        boolean oldCategoryESet = this.categoryESet;
        this.categoryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCategory, (Object)this.category, !oldCategoryESet));
        }
    }

    @Override
    public void unsetCategory() {
        String oldCategory = this.category;
        boolean oldCategoryESet = this.categoryESet;
        this.category = "";
        this.categoryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldCategory, (Object)"", oldCategoryESet));
        }
    }

    @Override
    public boolean isSetCategory() {
        return this.categoryESet;
    }

    @Override
    public EList<String> getRevisionLabels() {
        if (this.revisionLabels == null) {
            this.revisionLabels = new EDataTypeUniqueEList.Unsettable(String.class, (InternalEObject)this, 6);
        }
        return this.revisionLabels;
    }

    @Override
    public void unsetRevisionLabels() {
        if (this.revisionLabels != null) {
            ((InternalEList.Unsettable)this.revisionLabels).unset();
        }
    }

    @Override
    public boolean isSetRevisionLabels() {
        return this.revisionLabels != null && ((InternalEList.Unsettable)this.revisionLabels).isSet();
    }

    @Override
    public String getDomain() {
        return this.domain;
    }

    @Override
    public void setDomain(String newDomain) {
        String oldDomain = this.domain;
        this.domain = newDomain;
        boolean oldDomainESet = this.domainESet;
        this.domainESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldDomain, (Object)this.domain, !oldDomainESet));
        }
    }

    @Override
    public void unsetDomain() {
        String oldDomain = this.domain;
        boolean oldDomainESet = this.domainESet;
        this.domain = "";
        this.domainESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldDomain, (Object)"", oldDomainESet));
        }
    }

    @Override
    public boolean isSetDomain() {
        return this.domainESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getShortLabel();
            }
            case 5: {
                return this.getCategory();
            }
            case 6: {
                return this.getRevisionLabels();
            }
            case 7: {
                return this.getDomain();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setShortLabel((String)newValue);
                return;
            }
            case 5: {
                this.setCategory((String)newValue);
                return;
            }
            case 6: {
                this.getRevisionLabels().clear();
                this.getRevisionLabels().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.setDomain((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetShortLabel();
                return;
            }
            case 5: {
                this.unsetCategory();
                return;
            }
            case 6: {
                this.unsetRevisionLabels();
                return;
            }
            case 7: {
                this.unsetDomain();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetShortLabel();
            }
            case 5: {
                return this.isSetCategory();
            }
            case 6: {
                return this.isSetRevisionLabels();
            }
            case 7: {
                return this.isSetDomain();
            }
        }
        return super.eIsSet(featureID);
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
        result.append(", category: ");
        if (this.categoryESet) {
            result.append(this.category);
        } else {
            result.append("<unset>");
        }
        result.append(", revisionLabels: ");
        result.append(this.revisionLabels);
        result.append(", domain: ");
        if (this.domainESet) {
            result.append(this.domain);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

