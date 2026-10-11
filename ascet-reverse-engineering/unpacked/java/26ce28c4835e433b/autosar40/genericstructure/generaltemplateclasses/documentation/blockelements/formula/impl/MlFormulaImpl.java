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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Caption;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.LGraphic;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.FormulaPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.MlFormula;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginateableImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguagePlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageVerbatim;
import autosar40.genericstructure.varianthandling.VariationPoint;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MlFormulaImpl
extends PaginateableImpl
implements MlFormula {
    protected Caption formulaCaption;
    protected EList<LGraphic> lGraphics;
    protected MultiLanguageVerbatim verbatim;
    protected MultiLanguagePlainText texMath;
    protected MultiLanguagePlainText genericMath;
    protected VariationPoint variationPoint;

    protected MlFormulaImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return FormulaPackage.Literals.ML_FORMULA;
    }

    @Override
    public Caption getFormulaCaption() {
        return this.formulaCaption;
    }

    public NotificationChain basicSetFormulaCaption(Caption newFormulaCaption, NotificationChain msgs) {
        Caption oldFormulaCaption = this.formulaCaption;
        this.formulaCaption = newFormulaCaption;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldFormulaCaption, (Object)newFormulaCaption);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setFormulaCaption(Caption newFormulaCaption) {
        if (newFormulaCaption != this.formulaCaption) {
            NotificationChain msgs = null;
            if (this.formulaCaption != null) {
                msgs = ((InternalEObject)this.formulaCaption).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newFormulaCaption != null) {
                msgs = ((InternalEObject)newFormulaCaption).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetFormulaCaption(newFormulaCaption, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newFormulaCaption, (Object)newFormulaCaption));
        }
    }

    @Override
    public EList<LGraphic> getLGraphics() {
        if (this.lGraphics == null) {
            this.lGraphics = new EObjectContainmentEList(LGraphic.class, (InternalEObject)this, 9);
        }
        return this.lGraphics;
    }

    @Override
    public MultiLanguageVerbatim getVerbatim() {
        return this.verbatim;
    }

    public NotificationChain basicSetVerbatim(MultiLanguageVerbatim newVerbatim, NotificationChain msgs) {
        MultiLanguageVerbatim oldVerbatim = this.verbatim;
        this.verbatim = newVerbatim;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldVerbatim, (Object)newVerbatim);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVerbatim(MultiLanguageVerbatim newVerbatim) {
        if (newVerbatim != this.verbatim) {
            NotificationChain msgs = null;
            if (this.verbatim != null) {
                msgs = ((InternalEObject)this.verbatim).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newVerbatim != null) {
                msgs = ((InternalEObject)newVerbatim).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetVerbatim(newVerbatim, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newVerbatim, (Object)newVerbatim));
        }
    }

    @Override
    public MultiLanguagePlainText getTexMath() {
        return this.texMath;
    }

    public NotificationChain basicSetTexMath(MultiLanguagePlainText newTexMath, NotificationChain msgs) {
        MultiLanguagePlainText oldTexMath = this.texMath;
        this.texMath = newTexMath;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldTexMath, (Object)newTexMath);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTexMath(MultiLanguagePlainText newTexMath) {
        if (newTexMath != this.texMath) {
            NotificationChain msgs = null;
            if (this.texMath != null) {
                msgs = ((InternalEObject)this.texMath).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newTexMath != null) {
                msgs = ((InternalEObject)newTexMath).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetTexMath(newTexMath, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newTexMath, (Object)newTexMath));
        }
    }

    @Override
    public MultiLanguagePlainText getGenericMath() {
        return this.genericMath;
    }

    public NotificationChain basicSetGenericMath(MultiLanguagePlainText newGenericMath, NotificationChain msgs) {
        MultiLanguagePlainText oldGenericMath = this.genericMath;
        this.genericMath = newGenericMath;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldGenericMath, (Object)newGenericMath);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setGenericMath(MultiLanguagePlainText newGenericMath) {
        if (newGenericMath != this.genericMath) {
            NotificationChain msgs = null;
            if (this.genericMath != null) {
                msgs = ((InternalEObject)this.genericMath).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newGenericMath != null) {
                msgs = ((InternalEObject)newGenericMath).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetGenericMath(newGenericMath, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newGenericMath, (Object)newGenericMath));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -14, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -14, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return this.basicSetFormulaCaption(null, msgs);
            }
            case 9: {
                return ((InternalEList)this.getLGraphics()).basicRemove((Object)otherEnd, msgs);
            }
            case 10: {
                return this.basicSetVerbatim(null, msgs);
            }
            case 11: {
                return this.basicSetTexMath(null, msgs);
            }
            case 12: {
                return this.basicSetGenericMath(null, msgs);
            }
            case 13: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getFormulaCaption();
            }
            case 9: {
                return this.getLGraphics();
            }
            case 10: {
                return this.getVerbatim();
            }
            case 11: {
                return this.getTexMath();
            }
            case 12: {
                return this.getGenericMath();
            }
            case 13: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setFormulaCaption((Caption)newValue);
                return;
            }
            case 9: {
                this.getLGraphics().clear();
                this.getLGraphics().addAll((Collection)newValue);
                return;
            }
            case 10: {
                this.setVerbatim((MultiLanguageVerbatim)newValue);
                return;
            }
            case 11: {
                this.setTexMath((MultiLanguagePlainText)newValue);
                return;
            }
            case 12: {
                this.setGenericMath((MultiLanguagePlainText)newValue);
                return;
            }
            case 13: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.setFormulaCaption(null);
                return;
            }
            case 9: {
                this.getLGraphics().clear();
                return;
            }
            case 10: {
                this.setVerbatim(null);
                return;
            }
            case 11: {
                this.setTexMath(null);
                return;
            }
            case 12: {
                this.setGenericMath(null);
                return;
            }
            case 13: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.formulaCaption != null;
            }
            case 9: {
                return this.lGraphics != null && !this.lGraphics.isEmpty();
            }
            case 10: {
                return this.verbatim != null;
            }
            case 11: {
                return this.texMath != null;
            }
            case 12: {
                return this.genericMath != null;
            }
            case 13: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

