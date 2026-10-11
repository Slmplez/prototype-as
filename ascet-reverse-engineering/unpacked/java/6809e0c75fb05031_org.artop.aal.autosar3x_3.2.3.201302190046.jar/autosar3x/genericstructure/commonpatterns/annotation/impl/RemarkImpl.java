/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.genericstructure.commonpatterns.annotation.impl;

import autosar3x.genericstructure.commonpatterns.annotation.AnnotationPackage;
import autosar3x.genericstructure.commonpatterns.annotation.GeneralAnnotation;
import autosar3x.genericstructure.commonpatterns.annotation.Remark;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData1;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData5;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RemarkImpl
extends ARObjectImpl
implements Remark {
    protected EList<MlData1> ps;
    protected EList<MlData5> verbatims;

    protected RemarkImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return AnnotationPackage.Literals.REMARK;
    }

    public EList<GMultiLanguageParagraph> gGetPs() {
        EList<MlData1> untypedList = this.getPs();
        return untypedList;
    }

    @Override
    public GeneralAnnotation getGeneralAnnotation() {
        if (this.eContainerFeatureID() != 5) {
            return null;
        }
        return (GeneralAnnotation)this.eContainer();
    }

    public NotificationChain basicSetGeneralAnnotation(GeneralAnnotation newGeneralAnnotation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newGeneralAnnotation, 5, msgs);
        return msgs;
    }

    @Override
    public void setGeneralAnnotation(GeneralAnnotation newGeneralAnnotation) {
        if (newGeneralAnnotation != this.eInternalContainer() || this.eContainerFeatureID() != 5 && newGeneralAnnotation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newGeneralAnnotation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newGeneralAnnotation != null) {
                msgs = ((InternalEObject)newGeneralAnnotation).eInverseAdd((InternalEObject)this, 8, GeneralAnnotation.class, msgs);
            }
            if ((msgs = this.basicSetGeneralAnnotation(newGeneralAnnotation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newGeneralAnnotation, (Object)newGeneralAnnotation));
        }
    }

    @Override
    public EList<MlData1> getPs() {
        if (this.ps == null) {
            this.ps = new EObjectContainmentEList(MlData1.class, (InternalEObject)this, 6);
        }
        return this.ps;
    }

    @Override
    public EList<MlData5> getVerbatims() {
        if (this.verbatims == null) {
            this.verbatims = new EObjectContainmentWithInverseEList(MlData5.class, (InternalEObject)this, 7, 5);
        }
        return this.verbatims;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetGeneralAnnotation((GeneralAnnotation)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getVerbatims()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetGeneralAnnotation(null, msgs);
            }
            case 6: {
                return ((InternalEList)this.getPs()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getVerbatims()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 5: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 8, GeneralAnnotation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetPs();
            }
            case 5: {
                return this.getGeneralAnnotation();
            }
            case 6: {
                return this.getPs();
            }
            case 7: {
                return this.getVerbatims();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gGetPs().clear();
                this.gGetPs().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.setGeneralAnnotation((GeneralAnnotation)newValue);
                return;
            }
            case 6: {
                this.getPs().clear();
                this.getPs().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getVerbatims().clear();
                this.getVerbatims().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gGetPs().clear();
                return;
            }
            case 5: {
                this.setGeneralAnnotation(null);
                return;
            }
            case 6: {
                this.getPs().clear();
                return;
            }
            case 7: {
                this.getVerbatims().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return !this.gGetPs().isEmpty();
            }
            case 5: {
                return this.getGeneralAnnotation() != null;
            }
            case 6: {
                return this.ps != null && !this.ps.isEmpty();
            }
            case 7: {
                return this.verbatims != null && !this.verbatims.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GRemark.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GRemark.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

