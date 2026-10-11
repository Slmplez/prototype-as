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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.DefItem;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.DefList;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.ChapterEnumBreak;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.KeepWithPreviousEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.MultilanguageReferrableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DefItemImpl
extends MultilanguageReferrableImpl
implements DefItem {
    protected static final String SI_EDEFAULT = "";
    protected String si = "";
    protected boolean siESet;
    protected static final String VIEW_EDEFAULT = "";
    protected String view = "";
    protected boolean viewESet;
    protected static final ChapterEnumBreak BREAK_EDEFAULT = ChapterEnumBreak.BREAK;
    protected ChapterEnumBreak break_ = BREAK_EDEFAULT;
    protected boolean breakESet;
    protected static final KeepWithPreviousEnum KEEP_WITH_PREVIOUS_EDEFAULT = KeepWithPreviousEnum.KEEP;
    protected KeepWithPreviousEnum keepWithPrevious = KEEP_WITH_PREVIOUS_EDEFAULT;
    protected boolean keepWithPreviousESet;
    protected static final String HELP_ENTRY_EDEFAULT = "";
    protected String helpEntry = "";
    protected boolean helpEntryESet;
    protected DocumentationBlock def;
    protected VariationPoint variationPoint;

    protected DefItemImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ListelementsPackage.Literals.DEF_ITEM;
    }

    @Override
    public String getSi() {
        return this.si;
    }

    @Override
    public void setSi(String newSi) {
        String oldSi = this.si;
        this.si = newSi;
        boolean oldSiESet = this.siESet;
        this.siESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSi, (Object)this.si, !oldSiESet));
        }
    }

    @Override
    public void unsetSi() {
        String oldSi = this.si;
        boolean oldSiESet = this.siESet;
        this.si = "";
        this.siESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldSi, (Object)"", oldSiESet));
        }
    }

    @Override
    public boolean isSetSi() {
        return this.siESet;
    }

    @Override
    public String getView() {
        return this.view;
    }

    @Override
    public void setView(String newView) {
        String oldView = this.view;
        this.view = newView;
        boolean oldViewESet = this.viewESet;
        this.viewESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldView, (Object)this.view, !oldViewESet));
        }
    }

    @Override
    public void unsetView() {
        String oldView = this.view;
        boolean oldViewESet = this.viewESet;
        this.view = "";
        this.viewESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldView, (Object)"", oldViewESet));
        }
    }

    @Override
    public boolean isSetView() {
        return this.viewESet;
    }

    @Override
    public ChapterEnumBreak getBreak() {
        return this.break_;
    }

    @Override
    public void setBreak(ChapterEnumBreak newBreak) {
        ChapterEnumBreak oldBreak = this.break_;
        this.break_ = newBreak == null ? BREAK_EDEFAULT : newBreak;
        boolean oldBreakESet = this.breakESet;
        this.breakESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldBreak, (Object)this.break_, !oldBreakESet));
        }
    }

    @Override
    public void unsetBreak() {
        ChapterEnumBreak oldBreak = this.break_;
        boolean oldBreakESet = this.breakESet;
        this.break_ = BREAK_EDEFAULT;
        this.breakESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldBreak, (Object)BREAK_EDEFAULT, oldBreakESet));
        }
    }

    @Override
    public boolean isSetBreak() {
        return this.breakESet;
    }

    @Override
    public KeepWithPreviousEnum getKeepWithPrevious() {
        return this.keepWithPrevious;
    }

    @Override
    public void setKeepWithPrevious(KeepWithPreviousEnum newKeepWithPrevious) {
        KeepWithPreviousEnum oldKeepWithPrevious = this.keepWithPrevious;
        this.keepWithPrevious = newKeepWithPrevious == null ? KEEP_WITH_PREVIOUS_EDEFAULT : newKeepWithPrevious;
        boolean oldKeepWithPreviousESet = this.keepWithPreviousESet;
        this.keepWithPreviousESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldKeepWithPrevious, (Object)this.keepWithPrevious, !oldKeepWithPreviousESet));
        }
    }

    @Override
    public void unsetKeepWithPrevious() {
        KeepWithPreviousEnum oldKeepWithPrevious = this.keepWithPrevious;
        boolean oldKeepWithPreviousESet = this.keepWithPreviousESet;
        this.keepWithPrevious = KEEP_WITH_PREVIOUS_EDEFAULT;
        this.keepWithPreviousESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldKeepWithPrevious, (Object)KEEP_WITH_PREVIOUS_EDEFAULT, oldKeepWithPreviousESet));
        }
    }

    @Override
    public boolean isSetKeepWithPrevious() {
        return this.keepWithPreviousESet;
    }

    @Override
    public DefList getDefList() {
        if (this.eContainerFeatureID() != 11) {
            return null;
        }
        return (DefList)this.eContainer();
    }

    public NotificationChain basicSetDefList(DefList newDefList, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDefList, 11, msgs);
        return msgs;
    }

    @Override
    public void setDefList(DefList newDefList) {
        if (newDefList != this.eInternalContainer() || this.eContainerFeatureID() != 11 && newDefList != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDefList)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDefList != null) {
                msgs = ((InternalEObject)newDefList).eInverseAdd((InternalEObject)this, 9, DefList.class, msgs);
            }
            if ((msgs = this.basicSetDefList(newDefList, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newDefList, (Object)newDefList));
        }
    }

    @Override
    public String getHelpEntry() {
        return this.helpEntry;
    }

    @Override
    public void setHelpEntry(String newHelpEntry) {
        String oldHelpEntry = this.helpEntry;
        this.helpEntry = newHelpEntry;
        boolean oldHelpEntryESet = this.helpEntryESet;
        this.helpEntryESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldHelpEntry, (Object)this.helpEntry, !oldHelpEntryESet));
        }
    }

    @Override
    public void unsetHelpEntry() {
        String oldHelpEntry = this.helpEntry;
        boolean oldHelpEntryESet = this.helpEntryESet;
        this.helpEntry = "";
        this.helpEntryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldHelpEntry, (Object)"", oldHelpEntryESet));
        }
    }

    @Override
    public boolean isSetHelpEntry() {
        return this.helpEntryESet;
    }

    @Override
    public DocumentationBlock getDef() {
        return this.def;
    }

    public NotificationChain basicSetDef(DocumentationBlock newDef, NotificationChain msgs) {
        DocumentationBlock oldDef = this.def;
        this.def = newDef;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldDef, (Object)newDef);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDef(DocumentationBlock newDef) {
        if (newDef != this.def) {
            NotificationChain msgs = null;
            if (this.def != null) {
                msgs = ((InternalEObject)this.def).eInverseRemove((InternalEObject)this, -14, null, msgs);
            }
            if (newDef != null) {
                msgs = ((InternalEObject)newDef).eInverseAdd((InternalEObject)this, -14, null, msgs);
            }
            if ((msgs = this.basicSetDef(newDef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)newDef, (Object)newDef));
        }
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -15, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -15, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 11: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDefList((DefList)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 11: {
                return this.basicSetDefList(null, msgs);
            }
            case 13: {
                return this.basicSetDef(null, msgs);
            }
            case 14: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 11: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 9, DefList.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 7: {
                return this.getSi();
            }
            case 8: {
                return this.getView();
            }
            case 9: {
                return this.getBreak();
            }
            case 10: {
                return this.getKeepWithPrevious();
            }
            case 11: {
                return this.getDefList();
            }
            case 12: {
                return this.getHelpEntry();
            }
            case 13: {
                return this.getDef();
            }
            case 14: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 7: {
                this.setSi((String)newValue);
                return;
            }
            case 8: {
                this.setView((String)newValue);
                return;
            }
            case 9: {
                this.setBreak((ChapterEnumBreak)((Object)newValue));
                return;
            }
            case 10: {
                this.setKeepWithPrevious((KeepWithPreviousEnum)((Object)newValue));
                return;
            }
            case 11: {
                this.setDefList((DefList)newValue);
                return;
            }
            case 12: {
                this.setHelpEntry((String)newValue);
                return;
            }
            case 13: {
                this.setDef((DocumentationBlock)newValue);
                return;
            }
            case 14: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 7: {
                this.unsetSi();
                return;
            }
            case 8: {
                this.unsetView();
                return;
            }
            case 9: {
                this.unsetBreak();
                return;
            }
            case 10: {
                this.unsetKeepWithPrevious();
                return;
            }
            case 11: {
                this.setDefList(null);
                return;
            }
            case 12: {
                this.unsetHelpEntry();
                return;
            }
            case 13: {
                this.setDef(null);
                return;
            }
            case 14: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 7: {
                return this.isSetSi();
            }
            case 8: {
                return this.isSetView();
            }
            case 9: {
                return this.isSetBreak();
            }
            case 10: {
                return this.isSetKeepWithPrevious();
            }
            case 11: {
                return this.getDefList() != null;
            }
            case 12: {
                return this.isSetHelpEntry();
            }
            case 13: {
                return this.def != null;
            }
            case 14: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == DocumentViewSelectable.class) {
            switch (derivedFeatureID) {
                case 7: {
                    return 4;
                }
                case 8: {
                    return 5;
                }
            }
            return -1;
        }
        if (baseClass == Paginateable.class) {
            switch (derivedFeatureID) {
                case 9: {
                    return 6;
                }
                case 10: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == DocumentViewSelectable.class) {
            switch (baseFeatureID) {
                case 4: {
                    return 7;
                }
                case 5: {
                    return 8;
                }
            }
            return -1;
        }
        if (baseClass == Paginateable.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 9;
                }
                case 7: {
                    return 10;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (si: ");
        if (this.siESet) {
            result.append(this.si);
        } else {
            result.append("<unset>");
        }
        result.append(", view: ");
        if (this.viewESet) {
            result.append(this.view);
        } else {
            result.append("<unset>");
        }
        result.append(", break: ");
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
        result.append(", helpEntry: ");
        if (this.helpEntryESet) {
            result.append(this.helpEntry);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

