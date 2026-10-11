/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.varianthandling.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.specialdata.Sdg;
import autosar40.genericstructure.varianthandling.ConditionByFormula;
import autosar40.genericstructure.varianthandling.PostBuildVariantCondition;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import autosar40.genericstructure.varianthandling.VariationPoint;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class VariationPointImpl
extends ARObjectImpl
implements VariationPoint {
    protected static final String SHORT_LABEL_EDEFAULT = "";
    protected String shortLabel = "";
    protected boolean shortLabelESet;
    protected MultiLanguageOverviewParagraph desc;
    protected DocumentationBlock blueprintCondition;
    protected ConditionByFormula swSyscond;
    protected EList<PostBuildVariantCondition> postBuildVariantConditions;
    protected Sdg sdg;

    protected VariationPointImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return VarianthandlingPackage.Literals.VARIATION_POINT;
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
        this.shortLabel = SHORT_LABEL_EDEFAULT;
        this.shortLabelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldShortLabel, (Object)SHORT_LABEL_EDEFAULT, oldShortLabelESet));
        }
    }

    @Override
    public boolean isSetShortLabel() {
        return this.shortLabelESet;
    }

    @Override
    public MultiLanguageOverviewParagraph getDesc() {
        return this.desc;
    }

    public NotificationChain basicSetDesc(MultiLanguageOverviewParagraph newDesc, NotificationChain msgs) {
        MultiLanguageOverviewParagraph oldDesc = this.desc;
        this.desc = newDesc;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDesc, (Object)newDesc);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDesc(MultiLanguageOverviewParagraph newDesc) {
        if (newDesc != this.desc) {
            NotificationChain msgs = null;
            if (this.desc != null) {
                msgs = ((InternalEObject)this.desc).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newDesc != null) {
                msgs = ((InternalEObject)newDesc).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetDesc(newDesc, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newDesc, (Object)newDesc));
        }
    }

    @Override
    public DocumentationBlock getBlueprintCondition() {
        return this.blueprintCondition;
    }

    public NotificationChain basicSetBlueprintCondition(DocumentationBlock newBlueprintCondition, NotificationChain msgs) {
        DocumentationBlock oldBlueprintCondition = this.blueprintCondition;
        this.blueprintCondition = newBlueprintCondition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldBlueprintCondition, (Object)newBlueprintCondition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setBlueprintCondition(DocumentationBlock newBlueprintCondition) {
        if (newBlueprintCondition != this.blueprintCondition) {
            NotificationChain msgs = null;
            if (this.blueprintCondition != null) {
                msgs = ((InternalEObject)this.blueprintCondition).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newBlueprintCondition != null) {
                msgs = ((InternalEObject)newBlueprintCondition).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetBlueprintCondition(newBlueprintCondition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newBlueprintCondition, (Object)newBlueprintCondition));
        }
    }

    @Override
    public ConditionByFormula getSwSyscond() {
        return this.swSyscond;
    }

    public NotificationChain basicSetSwSyscond(ConditionByFormula newSwSyscond, NotificationChain msgs) {
        ConditionByFormula oldSwSyscond = this.swSyscond;
        this.swSyscond = newSwSyscond;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSwSyscond, (Object)newSwSyscond);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwSyscond(ConditionByFormula newSwSyscond) {
        if (newSwSyscond != this.swSyscond) {
            NotificationChain msgs = null;
            if (this.swSyscond != null) {
                msgs = ((InternalEObject)this.swSyscond).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newSwSyscond != null) {
                msgs = ((InternalEObject)newSwSyscond).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetSwSyscond(newSwSyscond, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newSwSyscond, (Object)newSwSyscond));
        }
    }

    @Override
    public EList<PostBuildVariantCondition> getPostBuildVariantConditions() {
        if (this.postBuildVariantConditions == null) {
            this.postBuildVariantConditions = new EObjectContainmentWithInverseEList(PostBuildVariantCondition.class, (InternalEObject)this, 8, 4);
        }
        return this.postBuildVariantConditions;
    }

    @Override
    public Sdg getSdg() {
        return this.sdg;
    }

    public NotificationChain basicSetSdg(Sdg newSdg, NotificationChain msgs) {
        Sdg oldSdg = this.sdg;
        this.sdg = newSdg;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldSdg, (Object)newSdg);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSdg(Sdg newSdg) {
        if (newSdg != this.sdg) {
            NotificationChain msgs = null;
            if (this.sdg != null) {
                msgs = ((InternalEObject)this.sdg).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newSdg != null) {
                msgs = ((InternalEObject)newSdg).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetSdg(newSdg, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newSdg, (Object)newSdg));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return ((InternalEList)this.getPostBuildVariantConditions()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetDesc(null, msgs);
            }
            case 6: {
                return this.basicSetBlueprintCondition(null, msgs);
            }
            case 7: {
                return this.basicSetSwSyscond(null, msgs);
            }
            case 8: {
                return ((InternalEList)this.getPostBuildVariantConditions()).basicRemove((Object)otherEnd, msgs);
            }
            case 9: {
                return this.basicSetSdg(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getShortLabel();
            }
            case 5: {
                return this.getDesc();
            }
            case 6: {
                return this.getBlueprintCondition();
            }
            case 7: {
                return this.getSwSyscond();
            }
            case 8: {
                return this.getPostBuildVariantConditions();
            }
            case 9: {
                return this.getSdg();
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
                this.setDesc((MultiLanguageOverviewParagraph)newValue);
                return;
            }
            case 6: {
                this.setBlueprintCondition((DocumentationBlock)newValue);
                return;
            }
            case 7: {
                this.setSwSyscond((ConditionByFormula)newValue);
                return;
            }
            case 8: {
                this.getPostBuildVariantConditions().clear();
                this.getPostBuildVariantConditions().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.setSdg((Sdg)newValue);
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
                this.setDesc(null);
                return;
            }
            case 6: {
                this.setBlueprintCondition(null);
                return;
            }
            case 7: {
                this.setSwSyscond(null);
                return;
            }
            case 8: {
                this.getPostBuildVariantConditions().clear();
                return;
            }
            case 9: {
                this.setSdg(null);
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
                return this.desc != null;
            }
            case 6: {
                return this.blueprintCondition != null;
            }
            case 7: {
                return this.swSyscond != null;
            }
            case 8: {
                return this.postBuildVariantConditions != null && !this.postBuildVariantConditions.isEmpty();
            }
            case 9: {
                return this.sdg != null;
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
        result.append(')');
        return result.toString();
    }
}

