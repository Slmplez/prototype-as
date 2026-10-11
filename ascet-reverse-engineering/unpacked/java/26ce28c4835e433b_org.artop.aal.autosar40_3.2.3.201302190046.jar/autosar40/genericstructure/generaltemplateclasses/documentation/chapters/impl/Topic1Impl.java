/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.ChapterEnumBreak;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.KeepWithPreviousEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.Topic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicContentOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Topic1Impl
extends IdentifiableImpl
implements Topic1 {
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
    protected TopicContentOrMsrQuery topicContent;
    protected VariationPoint variationPoint;

    protected Topic1Impl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ChaptersPackage.Literals.TOPIC1;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldSi, (Object)this.si, !oldSiESet));
        }
    }

    @Override
    public void unsetSi() {
        String oldSi = this.si;
        boolean oldSiESet = this.siESet;
        this.si = "";
        this.siESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldSi, (Object)"", oldSiESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldView, (Object)this.view, !oldViewESet));
        }
    }

    @Override
    public void unsetView() {
        String oldView = this.view;
        boolean oldViewESet = this.viewESet;
        this.view = "";
        this.viewESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldView, (Object)"", oldViewESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldBreak, (Object)this.break_, !oldBreakESet));
        }
    }

    @Override
    public void unsetBreak() {
        ChapterEnumBreak oldBreak = this.break_;
        boolean oldBreakESet = this.breakESet;
        this.break_ = BREAK_EDEFAULT;
        this.breakESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldBreak, (Object)BREAK_EDEFAULT, oldBreakESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldKeepWithPrevious, (Object)this.keepWithPrevious, !oldKeepWithPreviousESet));
        }
    }

    @Override
    public void unsetKeepWithPrevious() {
        KeepWithPreviousEnum oldKeepWithPrevious = this.keepWithPrevious;
        boolean oldKeepWithPreviousESet = this.keepWithPreviousESet;
        this.keepWithPrevious = KEEP_WITH_PREVIOUS_EDEFAULT;
        this.keepWithPreviousESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldKeepWithPrevious, (Object)KEEP_WITH_PREVIOUS_EDEFAULT, oldKeepWithPreviousESet));
        }
    }

    @Override
    public boolean isSetKeepWithPrevious() {
        return this.keepWithPreviousESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldHelpEntry, (Object)this.helpEntry, !oldHelpEntryESet));
        }
    }

    @Override
    public void unsetHelpEntry() {
        String oldHelpEntry = this.helpEntry;
        boolean oldHelpEntryESet = this.helpEntryESet;
        this.helpEntry = "";
        this.helpEntryESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldHelpEntry, (Object)"", oldHelpEntryESet));
        }
    }

    @Override
    public boolean isSetHelpEntry() {
        return this.helpEntryESet;
    }

    @Override
    public TopicContentOrMsrQuery getTopicContent() {
        return this.topicContent;
    }

    public NotificationChain basicSetTopicContent(TopicContentOrMsrQuery newTopicContent, NotificationChain msgs) {
        TopicContentOrMsrQuery oldTopicContent = this.topicContent;
        this.topicContent = newTopicContent;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldTopicContent, (Object)newTopicContent);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTopicContent(TopicContentOrMsrQuery newTopicContent) {
        if (newTopicContent != this.topicContent) {
            NotificationChain msgs = null;
            if (this.topicContent != null) {
                msgs = ((InternalEObject)this.topicContent).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newTopicContent != null) {
                msgs = ((InternalEObject)newTopicContent).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetTopicContent(newTopicContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newTopicContent, (Object)newTopicContent));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return this.basicSetTopicContent(null, msgs);
            }
            case 24: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getSi();
            }
            case 19: {
                return this.getView();
            }
            case 20: {
                return this.getBreak();
            }
            case 21: {
                return this.getKeepWithPrevious();
            }
            case 22: {
                return this.getHelpEntry();
            }
            case 23: {
                return this.getTopicContent();
            }
            case 24: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setSi((String)newValue);
                return;
            }
            case 19: {
                this.setView((String)newValue);
                return;
            }
            case 20: {
                this.setBreak((ChapterEnumBreak)((Object)newValue));
                return;
            }
            case 21: {
                this.setKeepWithPrevious((KeepWithPreviousEnum)((Object)newValue));
                return;
            }
            case 22: {
                this.setHelpEntry((String)newValue);
                return;
            }
            case 23: {
                this.setTopicContent((TopicContentOrMsrQuery)newValue);
                return;
            }
            case 24: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.unsetSi();
                return;
            }
            case 19: {
                this.unsetView();
                return;
            }
            case 20: {
                this.unsetBreak();
                return;
            }
            case 21: {
                this.unsetKeepWithPrevious();
                return;
            }
            case 22: {
                this.unsetHelpEntry();
                return;
            }
            case 23: {
                this.setTopicContent(null);
                return;
            }
            case 24: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.isSetSi();
            }
            case 19: {
                return this.isSetView();
            }
            case 20: {
                return this.isSetBreak();
            }
            case 21: {
                return this.isSetKeepWithPrevious();
            }
            case 22: {
                return this.isSetHelpEntry();
            }
            case 23: {
                return this.topicContent != null;
            }
            case 24: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == DocumentViewSelectable.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 4;
                }
                case 19: {
                    return 5;
                }
            }
            return -1;
        }
        if (baseClass == Paginateable.class) {
            switch (derivedFeatureID) {
                case 20: {
                    return 6;
                }
                case 21: {
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
                    return 18;
                }
                case 5: {
                    return 19;
                }
            }
            return -1;
        }
        if (baseClass == Paginateable.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 20;
                }
                case 7: {
                    return 21;
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

