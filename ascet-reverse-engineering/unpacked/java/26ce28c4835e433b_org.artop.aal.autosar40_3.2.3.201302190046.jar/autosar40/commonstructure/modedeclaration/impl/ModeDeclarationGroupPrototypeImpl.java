/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.modedeclaration.impl;

import autosar40.commonstructure.datadefproperties.SwCalibrationAccessEnum;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroup;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.commonstructure.modedeclaration.ModedeclarationPackage;
import autosar40.genericstructure.abstractstructure.impl.AtpPrototypeImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModeDeclarationGroupPrototypeImpl
extends AtpPrototypeImpl
implements ModeDeclarationGroupPrototype,
IReferringClass {
    protected static final SwCalibrationAccessEnum SW_CALIBRATION_ACCESS_EDEFAULT = SwCalibrationAccessEnum.READ_ONLY;
    protected SwCalibrationAccessEnum swCalibrationAccess = SW_CALIBRATION_ACCESS_EDEFAULT;
    protected boolean swCalibrationAccessESet;
    protected ModeDeclarationGroup type;
    protected VariationPoint variationPoint;

    protected ModeDeclarationGroupPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ModedeclarationPackage.Literals.MODE_DECLARATION_GROUP_PROTOTYPE;
    }

    public GModeDeclarationGroup gGetType() {
        return this.getType();
    }

    public void gSetType(GModeDeclarationGroup newGType) {
        this.setType((ModeDeclarationGroup)newGType);
    }

    @Override
    public SwCalibrationAccessEnum getSwCalibrationAccess() {
        return this.swCalibrationAccess;
    }

    @Override
    public void setSwCalibrationAccess(SwCalibrationAccessEnum newSwCalibrationAccess) {
        SwCalibrationAccessEnum oldSwCalibrationAccess = this.swCalibrationAccess;
        this.swCalibrationAccess = newSwCalibrationAccess == null ? SW_CALIBRATION_ACCESS_EDEFAULT : newSwCalibrationAccess;
        boolean oldSwCalibrationAccessESet = this.swCalibrationAccessESet;
        this.swCalibrationAccessESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldSwCalibrationAccess, (Object)this.swCalibrationAccess, !oldSwCalibrationAccessESet));
        }
    }

    @Override
    public void unsetSwCalibrationAccess() {
        SwCalibrationAccessEnum oldSwCalibrationAccess = this.swCalibrationAccess;
        boolean oldSwCalibrationAccessESet = this.swCalibrationAccessESet;
        this.swCalibrationAccess = SW_CALIBRATION_ACCESS_EDEFAULT;
        this.swCalibrationAccessESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldSwCalibrationAccess, (Object)SW_CALIBRATION_ACCESS_EDEFAULT, oldSwCalibrationAccessESet));
        }
    }

    @Override
    public boolean isSetSwCalibrationAccess() {
        return this.swCalibrationAccessESet;
    }

    @Override
    public ModeDeclarationGroup getType() {
        if (this.type != null && this.type.eIsProxy()) {
            InternalEObject oldType = (InternalEObject)this.type;
            this.type = (ModeDeclarationGroup)this.eResolveProxy(oldType);
            if (this.type != oldType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldType, (Object)this.type));
            }
        }
        return this.type;
    }

    public ModeDeclarationGroup basicGetType() {
        return this.type;
    }

    @Override
    public void setType(ModeDeclarationGroup newType) {
        ModeDeclarationGroup oldType = this.type;
        this.type = newType;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldType, (Object)this.type));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.gGetType();
            }
            case 20: {
                return this.getSwCalibrationAccess();
            }
            case 21: {
                if (resolve) {
                    return this.getType();
                }
                return this.basicGetType();
            }
            case 22: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.gSetType((GModeDeclarationGroup)newValue);
                return;
            }
            case 20: {
                this.setSwCalibrationAccess((SwCalibrationAccessEnum)((Object)newValue));
                return;
            }
            case 21: {
                this.setType((ModeDeclarationGroup)newValue);
                return;
            }
            case 22: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.gSetType(null);
                return;
            }
            case 20: {
                this.unsetSwCalibrationAccess();
                return;
            }
            case 21: {
                this.setType(null);
                return;
            }
            case 22: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.gGetType() != null;
            }
            case 20: {
                return this.isSetSwCalibrationAccess();
            }
            case 21: {
                return this.type != null;
            }
            case 22: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GModeDeclarationGroupPrototype.class) {
            switch (derivedFeatureID) {
                case 19: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GModeDeclarationGroupPrototype.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 19;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (swCalibrationAccess: ");
        if (this.swCalibrationAccessESet) {
            result.append((Object)this.swCalibrationAccess);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

