/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowContentEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceAliasNameEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceCategoryEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceLongNameEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceNumberEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourcePageEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceShortNameEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowResourceTypeEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.ShowSeeEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xref;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class XrefImpl
extends ARObjectImpl
implements Xref,
IReferringClass {
    protected SingleLanguageLongName label1;
    protected Referrable referrable;
    protected static final ShowContentEnum SHOW_CONTENT_EDEFAULT = ShowContentEnum.NO_SHOW_CONTENT;
    protected ShowContentEnum showContent = SHOW_CONTENT_EDEFAULT;
    protected boolean showContentESet;
    protected static final ShowResourceAliasNameEnum SHOW_RESOURCE_ALIAS_NAME_EDEFAULT = ShowResourceAliasNameEnum.SHOW_ALIAS_NAME;
    protected ShowResourceAliasNameEnum showResourceAliasName = SHOW_RESOURCE_ALIAS_NAME_EDEFAULT;
    protected boolean showResourceAliasNameESet;
    protected static final ShowResourceCategoryEnum SHOW_RESOURCE_CATEGORY_EDEFAULT = ShowResourceCategoryEnum.NO_SHOW_CATEGORY;
    protected ShowResourceCategoryEnum showResourceCategory = SHOW_RESOURCE_CATEGORY_EDEFAULT;
    protected boolean showResourceCategoryESet;
    protected static final ShowResourceLongNameEnum SHOW_RESOURCE_LONG_NAME_EDEFAULT = ShowResourceLongNameEnum.NO_SHOW_LONG_NAME;
    protected ShowResourceLongNameEnum showResourceLongName = SHOW_RESOURCE_LONG_NAME_EDEFAULT;
    protected boolean showResourceLongNameESet;
    protected static final ShowResourceNumberEnum SHOW_RESOURCE_NUMBER_EDEFAULT = ShowResourceNumberEnum.NO_SHOW_NUMBER;
    protected ShowResourceNumberEnum showResourceNumber = SHOW_RESOURCE_NUMBER_EDEFAULT;
    protected boolean showResourceNumberESet;
    protected static final ShowResourcePageEnum SHOW_RESOURCE_PAGE_EDEFAULT = ShowResourcePageEnum.NO_SHOW_PAGE;
    protected ShowResourcePageEnum showResourcePage = SHOW_RESOURCE_PAGE_EDEFAULT;
    protected boolean showResourcePageESet;
    protected static final ShowResourceShortNameEnum SHOW_RESOURCE_SHORT_NAME_EDEFAULT = ShowResourceShortNameEnum.NO_SHOW_SHORT_NAME;
    protected ShowResourceShortNameEnum showResourceShortName = SHOW_RESOURCE_SHORT_NAME_EDEFAULT;
    protected boolean showResourceShortNameESet;
    protected static final ShowResourceTypeEnum SHOW_RESOURCE_TYPE_EDEFAULT = ShowResourceTypeEnum.NO_SHOW_TYPE;
    protected ShowResourceTypeEnum showResourceType = SHOW_RESOURCE_TYPE_EDEFAULT;
    protected boolean showResourceTypeESet;
    protected static final ShowSeeEnum SHOW_SEE_EDEFAULT = ShowSeeEnum.NO_SHOW_SEE;
    protected ShowSeeEnum showSee = SHOW_SEE_EDEFAULT;
    protected boolean showSeeESet;

    protected XrefImpl() {
    }

    protected EClass eStaticClass() {
        return InlinetextelementsPackage.Literals.XREF;
    }

    public SingleLanguageLongName getLabel1() {
        return this.label1;
    }

    public NotificationChain basicSetLabel1(SingleLanguageLongName newLabel1, NotificationChain msgs) {
        SingleLanguageLongName oldLabel1 = this.label1;
        this.label1 = newLabel1;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldLabel1, (Object)newLabel1);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setLabel1(SingleLanguageLongName newLabel1) {
        if (newLabel1 != this.label1) {
            NotificationChain msgs = null;
            if (this.label1 != null) {
                msgs = ((InternalEObject)this.label1).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newLabel1 != null) {
                msgs = ((InternalEObject)newLabel1).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetLabel1(newLabel1, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newLabel1, (Object)newLabel1));
        }
    }

    public Referrable getReferrable() {
        if (this.referrable != null && this.referrable.eIsProxy()) {
            InternalEObject oldReferrable = (InternalEObject)this.referrable;
            this.referrable = (Referrable)this.eResolveProxy(oldReferrable);
            if (this.referrable != oldReferrable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldReferrable, (Object)this.referrable));
            }
        }
        return this.referrable;
    }

    public Referrable basicGetReferrable() {
        return this.referrable;
    }

    public void setReferrable(Referrable newReferrable) {
        Referrable oldReferrable = this.referrable;
        this.referrable = newReferrable;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldReferrable, (Object)this.referrable));
        }
    }

    public ShowContentEnum getShowContent() {
        return this.showContent;
    }

    public void setShowContent(ShowContentEnum newShowContent) {
        ShowContentEnum oldShowContent = this.showContent;
        this.showContent = newShowContent == null ? SHOW_CONTENT_EDEFAULT : newShowContent;
        boolean oldShowContentESet = this.showContentESet;
        this.showContentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldShowContent, (Object)this.showContent, !oldShowContentESet));
        }
    }

    public void unsetShowContent() {
        ShowContentEnum oldShowContent = this.showContent;
        boolean oldShowContentESet = this.showContentESet;
        this.showContent = SHOW_CONTENT_EDEFAULT;
        this.showContentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldShowContent, (Object)SHOW_CONTENT_EDEFAULT, oldShowContentESet));
        }
    }

    public boolean isSetShowContent() {
        return this.showContentESet;
    }

    public ShowResourceAliasNameEnum getShowResourceAliasName() {
        return this.showResourceAliasName;
    }

    public void setShowResourceAliasName(ShowResourceAliasNameEnum newShowResourceAliasName) {
        ShowResourceAliasNameEnum oldShowResourceAliasName = this.showResourceAliasName;
        this.showResourceAliasName = newShowResourceAliasName == null ? SHOW_RESOURCE_ALIAS_NAME_EDEFAULT : newShowResourceAliasName;
        boolean oldShowResourceAliasNameESet = this.showResourceAliasNameESet;
        this.showResourceAliasNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldShowResourceAliasName, (Object)this.showResourceAliasName, !oldShowResourceAliasNameESet));
        }
    }

    public void unsetShowResourceAliasName() {
        ShowResourceAliasNameEnum oldShowResourceAliasName = this.showResourceAliasName;
        boolean oldShowResourceAliasNameESet = this.showResourceAliasNameESet;
        this.showResourceAliasName = SHOW_RESOURCE_ALIAS_NAME_EDEFAULT;
        this.showResourceAliasNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldShowResourceAliasName, (Object)SHOW_RESOURCE_ALIAS_NAME_EDEFAULT, oldShowResourceAliasNameESet));
        }
    }

    public boolean isSetShowResourceAliasName() {
        return this.showResourceAliasNameESet;
    }

    public ShowResourceCategoryEnum getShowResourceCategory() {
        return this.showResourceCategory;
    }

    public void setShowResourceCategory(ShowResourceCategoryEnum newShowResourceCategory) {
        ShowResourceCategoryEnum oldShowResourceCategory = this.showResourceCategory;
        this.showResourceCategory = newShowResourceCategory == null ? SHOW_RESOURCE_CATEGORY_EDEFAULT : newShowResourceCategory;
        boolean oldShowResourceCategoryESet = this.showResourceCategoryESet;
        this.showResourceCategoryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldShowResourceCategory, (Object)this.showResourceCategory, !oldShowResourceCategoryESet));
        }
    }

    public void unsetShowResourceCategory() {
        ShowResourceCategoryEnum oldShowResourceCategory = this.showResourceCategory;
        boolean oldShowResourceCategoryESet = this.showResourceCategoryESet;
        this.showResourceCategory = SHOW_RESOURCE_CATEGORY_EDEFAULT;
        this.showResourceCategoryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldShowResourceCategory, (Object)SHOW_RESOURCE_CATEGORY_EDEFAULT, oldShowResourceCategoryESet));
        }
    }

    public boolean isSetShowResourceCategory() {
        return this.showResourceCategoryESet;
    }

    public ShowResourceLongNameEnum getShowResourceLongName() {
        return this.showResourceLongName;
    }

    public void setShowResourceLongName(ShowResourceLongNameEnum newShowResourceLongName) {
        ShowResourceLongNameEnum oldShowResourceLongName = this.showResourceLongName;
        this.showResourceLongName = newShowResourceLongName == null ? SHOW_RESOURCE_LONG_NAME_EDEFAULT : newShowResourceLongName;
        boolean oldShowResourceLongNameESet = this.showResourceLongNameESet;
        this.showResourceLongNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldShowResourceLongName, (Object)this.showResourceLongName, !oldShowResourceLongNameESet));
        }
    }

    public void unsetShowResourceLongName() {
        ShowResourceLongNameEnum oldShowResourceLongName = this.showResourceLongName;
        boolean oldShowResourceLongNameESet = this.showResourceLongNameESet;
        this.showResourceLongName = SHOW_RESOURCE_LONG_NAME_EDEFAULT;
        this.showResourceLongNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldShowResourceLongName, (Object)SHOW_RESOURCE_LONG_NAME_EDEFAULT, oldShowResourceLongNameESet));
        }
    }

    public boolean isSetShowResourceLongName() {
        return this.showResourceLongNameESet;
    }

    public ShowResourceNumberEnum getShowResourceNumber() {
        return this.showResourceNumber;
    }

    public void setShowResourceNumber(ShowResourceNumberEnum newShowResourceNumber) {
        ShowResourceNumberEnum oldShowResourceNumber = this.showResourceNumber;
        this.showResourceNumber = newShowResourceNumber == null ? SHOW_RESOURCE_NUMBER_EDEFAULT : newShowResourceNumber;
        boolean oldShowResourceNumberESet = this.showResourceNumberESet;
        this.showResourceNumberESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldShowResourceNumber, (Object)this.showResourceNumber, !oldShowResourceNumberESet));
        }
    }

    public void unsetShowResourceNumber() {
        ShowResourceNumberEnum oldShowResourceNumber = this.showResourceNumber;
        boolean oldShowResourceNumberESet = this.showResourceNumberESet;
        this.showResourceNumber = SHOW_RESOURCE_NUMBER_EDEFAULT;
        this.showResourceNumberESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldShowResourceNumber, (Object)SHOW_RESOURCE_NUMBER_EDEFAULT, oldShowResourceNumberESet));
        }
    }

    public boolean isSetShowResourceNumber() {
        return this.showResourceNumberESet;
    }

    public ShowResourcePageEnum getShowResourcePage() {
        return this.showResourcePage;
    }

    public void setShowResourcePage(ShowResourcePageEnum newShowResourcePage) {
        ShowResourcePageEnum oldShowResourcePage = this.showResourcePage;
        this.showResourcePage = newShowResourcePage == null ? SHOW_RESOURCE_PAGE_EDEFAULT : newShowResourcePage;
        boolean oldShowResourcePageESet = this.showResourcePageESet;
        this.showResourcePageESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldShowResourcePage, (Object)this.showResourcePage, !oldShowResourcePageESet));
        }
    }

    public void unsetShowResourcePage() {
        ShowResourcePageEnum oldShowResourcePage = this.showResourcePage;
        boolean oldShowResourcePageESet = this.showResourcePageESet;
        this.showResourcePage = SHOW_RESOURCE_PAGE_EDEFAULT;
        this.showResourcePageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldShowResourcePage, (Object)SHOW_RESOURCE_PAGE_EDEFAULT, oldShowResourcePageESet));
        }
    }

    public boolean isSetShowResourcePage() {
        return this.showResourcePageESet;
    }

    public ShowResourceShortNameEnum getShowResourceShortName() {
        return this.showResourceShortName;
    }

    public void setShowResourceShortName(ShowResourceShortNameEnum newShowResourceShortName) {
        ShowResourceShortNameEnum oldShowResourceShortName = this.showResourceShortName;
        this.showResourceShortName = newShowResourceShortName == null ? SHOW_RESOURCE_SHORT_NAME_EDEFAULT : newShowResourceShortName;
        boolean oldShowResourceShortNameESet = this.showResourceShortNameESet;
        this.showResourceShortNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldShowResourceShortName, (Object)this.showResourceShortName, !oldShowResourceShortNameESet));
        }
    }

    public void unsetShowResourceShortName() {
        ShowResourceShortNameEnum oldShowResourceShortName = this.showResourceShortName;
        boolean oldShowResourceShortNameESet = this.showResourceShortNameESet;
        this.showResourceShortName = SHOW_RESOURCE_SHORT_NAME_EDEFAULT;
        this.showResourceShortNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldShowResourceShortName, (Object)SHOW_RESOURCE_SHORT_NAME_EDEFAULT, oldShowResourceShortNameESet));
        }
    }

    public boolean isSetShowResourceShortName() {
        return this.showResourceShortNameESet;
    }

    public ShowResourceTypeEnum getShowResourceType() {
        return this.showResourceType;
    }

    public void setShowResourceType(ShowResourceTypeEnum newShowResourceType) {
        ShowResourceTypeEnum oldShowResourceType = this.showResourceType;
        this.showResourceType = newShowResourceType == null ? SHOW_RESOURCE_TYPE_EDEFAULT : newShowResourceType;
        boolean oldShowResourceTypeESet = this.showResourceTypeESet;
        this.showResourceTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldShowResourceType, (Object)this.showResourceType, !oldShowResourceTypeESet));
        }
    }

    public void unsetShowResourceType() {
        ShowResourceTypeEnum oldShowResourceType = this.showResourceType;
        boolean oldShowResourceTypeESet = this.showResourceTypeESet;
        this.showResourceType = SHOW_RESOURCE_TYPE_EDEFAULT;
        this.showResourceTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldShowResourceType, (Object)SHOW_RESOURCE_TYPE_EDEFAULT, oldShowResourceTypeESet));
        }
    }

    public boolean isSetShowResourceType() {
        return this.showResourceTypeESet;
    }

    public ShowSeeEnum getShowSee() {
        return this.showSee;
    }

    public void setShowSee(ShowSeeEnum newShowSee) {
        ShowSeeEnum oldShowSee = this.showSee;
        this.showSee = newShowSee == null ? SHOW_SEE_EDEFAULT : newShowSee;
        boolean oldShowSeeESet = this.showSeeESet;
        this.showSeeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldShowSee, (Object)this.showSee, !oldShowSeeESet));
        }
    }

    public void unsetShowSee() {
        ShowSeeEnum oldShowSee = this.showSee;
        boolean oldShowSeeESet = this.showSeeESet;
        this.showSee = SHOW_SEE_EDEFAULT;
        this.showSeeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldShowSee, (Object)SHOW_SEE_EDEFAULT, oldShowSeeESet));
        }
    }

    public boolean isSetShowSee() {
        return this.showSeeESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetLabel1(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getLabel1();
            }
            case 5: {
                if (resolve) {
                    return this.getReferrable();
                }
                return this.basicGetReferrable();
            }
            case 6: {
                return this.getShowContent();
            }
            case 7: {
                return this.getShowResourceAliasName();
            }
            case 8: {
                return this.getShowResourceCategory();
            }
            case 9: {
                return this.getShowResourceLongName();
            }
            case 10: {
                return this.getShowResourceNumber();
            }
            case 11: {
                return this.getShowResourcePage();
            }
            case 12: {
                return this.getShowResourceShortName();
            }
            case 13: {
                return this.getShowResourceType();
            }
            case 14: {
                return this.getShowSee();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setLabel1((SingleLanguageLongName)newValue);
                return;
            }
            case 5: {
                this.setReferrable((Referrable)newValue);
                return;
            }
            case 6: {
                this.setShowContent((ShowContentEnum)((Object)newValue));
                return;
            }
            case 7: {
                this.setShowResourceAliasName((ShowResourceAliasNameEnum)((Object)newValue));
                return;
            }
            case 8: {
                this.setShowResourceCategory((ShowResourceCategoryEnum)((Object)newValue));
                return;
            }
            case 9: {
                this.setShowResourceLongName((ShowResourceLongNameEnum)((Object)newValue));
                return;
            }
            case 10: {
                this.setShowResourceNumber((ShowResourceNumberEnum)((Object)newValue));
                return;
            }
            case 11: {
                this.setShowResourcePage((ShowResourcePageEnum)((Object)newValue));
                return;
            }
            case 12: {
                this.setShowResourceShortName((ShowResourceShortNameEnum)((Object)newValue));
                return;
            }
            case 13: {
                this.setShowResourceType((ShowResourceTypeEnum)((Object)newValue));
                return;
            }
            case 14: {
                this.setShowSee((ShowSeeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setLabel1(null);
                return;
            }
            case 5: {
                this.setReferrable(null);
                return;
            }
            case 6: {
                this.unsetShowContent();
                return;
            }
            case 7: {
                this.unsetShowResourceAliasName();
                return;
            }
            case 8: {
                this.unsetShowResourceCategory();
                return;
            }
            case 9: {
                this.unsetShowResourceLongName();
                return;
            }
            case 10: {
                this.unsetShowResourceNumber();
                return;
            }
            case 11: {
                this.unsetShowResourcePage();
                return;
            }
            case 12: {
                this.unsetShowResourceShortName();
                return;
            }
            case 13: {
                this.unsetShowResourceType();
                return;
            }
            case 14: {
                this.unsetShowSee();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.label1 != null;
            }
            case 5: {
                return this.referrable != null;
            }
            case 6: {
                return this.isSetShowContent();
            }
            case 7: {
                return this.isSetShowResourceAliasName();
            }
            case 8: {
                return this.isSetShowResourceCategory();
            }
            case 9: {
                return this.isSetShowResourceLongName();
            }
            case 10: {
                return this.isSetShowResourceNumber();
            }
            case 11: {
                return this.isSetShowResourcePage();
            }
            case 12: {
                return this.isSetShowResourceShortName();
            }
            case 13: {
                return this.isSetShowResourceType();
            }
            case 14: {
                return this.isSetShowSee();
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
        result.append(" (showContent: ");
        if (this.showContentESet) {
            result.append((Object)this.showContent);
        } else {
            result.append("<unset>");
        }
        result.append(", showResourceAliasName: ");
        if (this.showResourceAliasNameESet) {
            result.append((Object)this.showResourceAliasName);
        } else {
            result.append("<unset>");
        }
        result.append(", showResourceCategory: ");
        if (this.showResourceCategoryESet) {
            result.append((Object)this.showResourceCategory);
        } else {
            result.append("<unset>");
        }
        result.append(", showResourceLongName: ");
        if (this.showResourceLongNameESet) {
            result.append((Object)this.showResourceLongName);
        } else {
            result.append("<unset>");
        }
        result.append(", showResourceNumber: ");
        if (this.showResourceNumberESet) {
            result.append((Object)this.showResourceNumber);
        } else {
            result.append("<unset>");
        }
        result.append(", showResourcePage: ");
        if (this.showResourcePageESet) {
            result.append((Object)this.showResourcePage);
        } else {
            result.append("<unset>");
        }
        result.append(", showResourceShortName: ");
        if (this.showResourceShortNameESet) {
            result.append((Object)this.showResourceShortName);
        } else {
            result.append("<unset>");
        }
        result.append(", showResourceType: ");
        if (this.showResourceTypeESet) {
            result.append((Object)this.showResourceType);
        } else {
            result.append("<unset>");
        }
        result.append(", showSee: ");
        if (this.showSeeESet) {
            result.append((Object)this.showSee);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

