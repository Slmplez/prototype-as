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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.ecuresource.hwelementcategory.impl;

import autosar40.ecuresource.HwDescriptionEntity;
import autosar40.ecuresource.hwelementcategory.HwAttributeDef;
import autosar40.ecuresource.hwelementcategory.HwAttributeValue;
import autosar40.ecuresource.hwelementcategory.HwelementcategoryPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class HwAttributeValueImpl
extends ARObjectImpl
implements HwAttributeValue,
IReferringClass {
    protected Annotation annotation;
    protected HwAttributeDef hwAttributeDef;
    protected NumericalValueVariationPoint v;
    protected static final String VT_EDEFAULT = "";
    protected String vt = "";
    protected boolean vtESet;
    protected VariationPoint variationPoint;

    protected HwAttributeValueImpl() {
    }

    protected EClass eStaticClass() {
        return HwelementcategoryPackage.Literals.HW_ATTRIBUTE_VALUE;
    }

    public HwDescriptionEntity getHwDescriptionEntity() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (HwDescriptionEntity)this.eContainer();
    }

    public NotificationChain basicSetHwDescriptionEntity(HwDescriptionEntity newHwDescriptionEntity, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newHwDescriptionEntity, 4, msgs);
        return msgs;
    }

    public void setHwDescriptionEntity(HwDescriptionEntity newHwDescriptionEntity) {
        if (newHwDescriptionEntity != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newHwDescriptionEntity != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newHwDescriptionEntity)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newHwDescriptionEntity != null) {
                msgs = ((InternalEObject)newHwDescriptionEntity).eInverseAdd((InternalEObject)this, 8, HwDescriptionEntity.class, msgs);
            }
            if ((msgs = this.basicSetHwDescriptionEntity(newHwDescriptionEntity, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newHwDescriptionEntity, (Object)newHwDescriptionEntity));
        }
    }

    public Annotation getAnnotation() {
        return this.annotation;
    }

    public NotificationChain basicSetAnnotation(Annotation newAnnotation, NotificationChain msgs) {
        Annotation oldAnnotation = this.annotation;
        this.annotation = newAnnotation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAnnotation, (Object)newAnnotation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setAnnotation(Annotation newAnnotation) {
        if (newAnnotation != this.annotation) {
            NotificationChain msgs = null;
            if (this.annotation != null) {
                msgs = ((InternalEObject)this.annotation).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newAnnotation != null) {
                msgs = ((InternalEObject)newAnnotation).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetAnnotation(newAnnotation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newAnnotation, (Object)newAnnotation));
        }
    }

    public HwAttributeDef getHwAttributeDef() {
        if (this.hwAttributeDef != null && this.hwAttributeDef.eIsProxy()) {
            InternalEObject oldHwAttributeDef = (InternalEObject)this.hwAttributeDef;
            this.hwAttributeDef = (HwAttributeDef)this.eResolveProxy(oldHwAttributeDef);
            if (this.hwAttributeDef != oldHwAttributeDef && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldHwAttributeDef, (Object)this.hwAttributeDef));
            }
        }
        return this.hwAttributeDef;
    }

    public HwAttributeDef basicGetHwAttributeDef() {
        return this.hwAttributeDef;
    }

    public void setHwAttributeDef(HwAttributeDef newHwAttributeDef) {
        HwAttributeDef oldHwAttributeDef = this.hwAttributeDef;
        this.hwAttributeDef = newHwAttributeDef;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldHwAttributeDef, (Object)this.hwAttributeDef));
        }
    }

    public NumericalValueVariationPoint getV() {
        return this.v;
    }

    public NotificationChain basicSetV(NumericalValueVariationPoint newV, NotificationChain msgs) {
        NumericalValueVariationPoint oldV = this.v;
        this.v = newV;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldV, (Object)newV);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setV(NumericalValueVariationPoint newV) {
        if (newV != this.v) {
            NotificationChain msgs = null;
            if (this.v != null) {
                msgs = ((InternalEObject)this.v).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newV != null) {
                msgs = ((InternalEObject)newV).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetV(newV, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newV, (Object)newV));
        }
    }

    public String getVt() {
        return this.vt;
    }

    public void setVt(String newVt) {
        String oldVt = this.vt;
        this.vt = newVt;
        boolean oldVtESet = this.vtESet;
        this.vtESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldVt, (Object)this.vt, !oldVtESet));
        }
    }

    public void unsetVt() {
        String oldVt = this.vt;
        boolean oldVtESet = this.vtESet;
        this.vt = VT_EDEFAULT;
        this.vtESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldVt, (Object)VT_EDEFAULT, oldVtESet));
        }
    }

    public boolean isSetVt() {
        return this.vtESet;
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetHwDescriptionEntity((HwDescriptionEntity)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetHwDescriptionEntity(null, msgs);
            }
            case 5: {
                return this.basicSetAnnotation(null, msgs);
            }
            case 7: {
                return this.basicSetV(null, msgs);
            }
            case 9: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 8, HwDescriptionEntity.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getHwDescriptionEntity();
            }
            case 5: {
                return this.getAnnotation();
            }
            case 6: {
                if (resolve) {
                    return this.getHwAttributeDef();
                }
                return this.basicGetHwAttributeDef();
            }
            case 7: {
                return this.getV();
            }
            case 8: {
                return this.getVt();
            }
            case 9: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setHwDescriptionEntity((HwDescriptionEntity)newValue);
                return;
            }
            case 5: {
                this.setAnnotation((Annotation)newValue);
                return;
            }
            case 6: {
                this.setHwAttributeDef((HwAttributeDef)newValue);
                return;
            }
            case 7: {
                this.setV((NumericalValueVariationPoint)newValue);
                return;
            }
            case 8: {
                this.setVt((String)newValue);
                return;
            }
            case 9: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setHwDescriptionEntity(null);
                return;
            }
            case 5: {
                this.setAnnotation(null);
                return;
            }
            case 6: {
                this.setHwAttributeDef(null);
                return;
            }
            case 7: {
                this.setV(null);
                return;
            }
            case 8: {
                this.unsetVt();
                return;
            }
            case 9: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getHwDescriptionEntity() != null;
            }
            case 5: {
                return this.annotation != null;
            }
            case 6: {
                return this.hwAttributeDef != null;
            }
            case 7: {
                return this.v != null;
            }
            case 8: {
                return this.isSetVt();
            }
            case 9: {
                return this.variationPoint != null;
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
        result.append(" (vt: ");
        if (this.vtESet) {
            result.append(this.vt);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

