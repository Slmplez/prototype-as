/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.genericstructure.commonpatterns.annotation.impl;

import autosar3x.genericstructure.commonpatterns.annotation.AnnotationPackage;
import autosar3x.genericstructure.commonpatterns.annotation.GeneralAnnotation;
import autosar3x.genericstructure.commonpatterns.annotation.Remark;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MlData4;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class GeneralAnnotationImpl
extends ARObjectImpl
implements GeneralAnnotation {
    protected static final String GANNOTATION_ORIGIN_EDEFAULT = null;
    protected MlData4 label;
    protected static final String ANNOTATION_ORIGIN_EDEFAULT = "";
    protected String annotationOrigin = "";
    protected boolean annotationOriginESet;
    protected Remark annotationText;

    protected GeneralAnnotationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return AnnotationPackage.Literals.GENERAL_ANNOTATION;
    }

    public String gGetAnnotationOrigin() {
        String tgtFeatureValue = this.getAnnotationOrigin();
        return tgtFeatureValue;
    }

    public void gSetAnnotationOrigin(String newGAnnotationOrigin) {
        this.setAnnotationOrigin(newGAnnotationOrigin);
    }

    public void gUnsetAnnotationOrigin() {
        this.unsetAnnotationOrigin();
    }

    public boolean gIsSetAnnotationOrigin() {
        return this.isSetAnnotationOrigin();
    }

    public GRemark gGetAnnotationText() {
        return this.getAnnotationText();
    }

    public void gSetAnnotationText(GRemark newGAnnotationText) {
        this.setAnnotationText((Remark)newGAnnotationText);
    }

    @Override
    public MlData4 getLabel() {
        return this.label;
    }

    public NotificationChain basicSetLabel(MlData4 newLabel, NotificationChain msgs) {
        MlData4 oldLabel = this.label;
        this.label = newLabel;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldLabel, (Object)newLabel);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLabel(MlData4 newLabel) {
        if (newLabel != this.label) {
            NotificationChain msgs = null;
            if (this.label != null) {
                msgs = ((InternalEObject)this.label).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newLabel != null) {
                msgs = ((InternalEObject)newLabel).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetLabel(newLabel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newLabel, (Object)newLabel));
        }
    }

    @Override
    public String getAnnotationOrigin() {
        return this.annotationOrigin;
    }

    @Override
    public void setAnnotationOrigin(String newAnnotationOrigin) {
        String oldAnnotationOrigin = this.annotationOrigin;
        this.annotationOrigin = newAnnotationOrigin;
        boolean oldAnnotationOriginESet = this.annotationOriginESet;
        this.annotationOriginESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldAnnotationOrigin, (Object)this.annotationOrigin, !oldAnnotationOriginESet));
        }
    }

    @Override
    public void unsetAnnotationOrigin() {
        String oldAnnotationOrigin = this.annotationOrigin;
        boolean oldAnnotationOriginESet = this.annotationOriginESet;
        this.annotationOrigin = ANNOTATION_ORIGIN_EDEFAULT;
        this.annotationOriginESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldAnnotationOrigin, (Object)ANNOTATION_ORIGIN_EDEFAULT, oldAnnotationOriginESet));
        }
    }

    @Override
    public boolean isSetAnnotationOrigin() {
        return this.annotationOriginESet;
    }

    @Override
    public Remark getAnnotationText() {
        return this.annotationText;
    }

    public NotificationChain basicSetAnnotationText(Remark newAnnotationText, NotificationChain msgs) {
        Remark oldAnnotationText = this.annotationText;
        this.annotationText = newAnnotationText;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldAnnotationText, (Object)newAnnotationText);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setAnnotationText(Remark newAnnotationText) {
        if (newAnnotationText != this.annotationText) {
            NotificationChain msgs = null;
            if (this.annotationText != null) {
                msgs = ((InternalEObject)this.annotationText).eInverseRemove((InternalEObject)this, 5, Remark.class, msgs);
            }
            if (newAnnotationText != null) {
                msgs = ((InternalEObject)newAnnotationText).eInverseAdd((InternalEObject)this, 5, Remark.class, msgs);
            }
            if ((msgs = this.basicSetAnnotationText(newAnnotationText, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newAnnotationText, (Object)newAnnotationText));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                if (this.annotationText != null) {
                    msgs = ((InternalEObject)this.annotationText).eInverseRemove((InternalEObject)this, -9, null, msgs);
                }
                return this.basicSetAnnotationText((Remark)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetLabel(null, msgs);
            }
            case 8: {
                return this.basicSetAnnotationText(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.gGetAnnotationOrigin();
            }
            case 5: {
                return this.gGetAnnotationText();
            }
            case 6: {
                return this.getLabel();
            }
            case 7: {
                return this.getAnnotationOrigin();
            }
            case 8: {
                return this.getAnnotationText();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.gSetAnnotationOrigin((String)newValue);
                return;
            }
            case 5: {
                this.gSetAnnotationText((GRemark)newValue);
                return;
            }
            case 6: {
                this.setLabel((MlData4)newValue);
                return;
            }
            case 7: {
                this.setAnnotationOrigin((String)newValue);
                return;
            }
            case 8: {
                this.setAnnotationText((Remark)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.gUnsetAnnotationOrigin();
                return;
            }
            case 5: {
                this.gSetAnnotationText(null);
                return;
            }
            case 6: {
                this.setLabel(null);
                return;
            }
            case 7: {
                this.unsetAnnotationOrigin();
                return;
            }
            case 8: {
                this.setAnnotationText(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.gIsSetAnnotationOrigin();
            }
            case 5: {
                return this.gGetAnnotationText() != null;
            }
            case 6: {
                return this.label != null;
            }
            case 7: {
                return this.isSetAnnotationOrigin();
            }
            case 8: {
                return this.annotationText != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GGeneralAnnotation.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
                case 5: {
                    return 3;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GGeneralAnnotation.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
                case 3: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (annotationOrigin: ");
        if (this.annotationOriginESet) {
            result.append(this.annotationOrigin);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

