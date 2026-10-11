/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseType
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeDefinition
 *  gautosar.gcommonstructure.gbasetypes.GSwBaseType
 *  gautosar.ggenericstructure.ginfrastructure.GARPackage
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.basetypes.impl;

import autosar40.commonstructure.basetypes.BaseType;
import autosar40.commonstructure.basetypes.BaseTypeDefinition;
import autosar40.commonstructure.basetypes.BasetypesPackage;
import autosar40.commonstructure.basetypes.SwBaseType;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.standardization.abstractblueprintstructure.impl.AtpBlueprintImpl;
import gautosar.gcommonstructure.gbasetypes.GBaseType;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDefinition;
import gautosar.gcommonstructure.gbasetypes.GSwBaseType;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
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
public class SwBaseTypeImpl
extends AtpBlueprintImpl
implements SwBaseType {
    protected VariationPoint variationPoint;
    protected BaseTypeDefinition baseTypeDefinition;

    protected SwBaseTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BasetypesPackage.Literals.SW_BASE_TYPE;
    }

    public GARPackage gGetARPackage() {
        return this.getARPackage();
    }

    public void gSetARPackage(GARPackage newGARPackage) {
        this.setARPackage((ARPackage)newGARPackage);
    }

    @Override
    public ARPackage getARPackage() {
        if (this.eContainerFeatureID() != 20) {
            return null;
        }
        return (ARPackage)this.eContainer();
    }

    public NotificationChain basicSetARPackage(ARPackage newARPackage, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newARPackage, 20, msgs);
        return msgs;
    }

    @Override
    public void setARPackage(ARPackage newARPackage) {
        if (newARPackage != this.eInternalContainer() || this.eContainerFeatureID() != 20 && newARPackage != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newARPackage)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newARPackage != null) {
                msgs = ((InternalEObject)newARPackage).eInverseAdd((InternalEObject)this, 22, ARPackage.class, msgs);
            }
            if ((msgs = this.basicSetARPackage(newARPackage, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newARPackage, (Object)newARPackage));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public GBaseTypeDefinition gGetBaseTypeDefinitionType() {
        return this.getBaseTypeDefinition();
    }

    public void gSetBaseTypeDefinitionType(GBaseTypeDefinition newGBaseTypeDefinitionType) {
        this.setBaseTypeDefinition((BaseTypeDefinition)newGBaseTypeDefinitionType);
    }

    @Override
    public BaseTypeDefinition getBaseTypeDefinition() {
        return this.baseTypeDefinition;
    }

    public NotificationChain basicSetBaseTypeDefinition(BaseTypeDefinition newBaseTypeDefinition, NotificationChain msgs) {
        BaseTypeDefinition oldBaseTypeDefinition = this.baseTypeDefinition;
        this.baseTypeDefinition = newBaseTypeDefinition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldBaseTypeDefinition, (Object)newBaseTypeDefinition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setBaseTypeDefinition(BaseTypeDefinition newBaseTypeDefinition) {
        if (newBaseTypeDefinition != this.baseTypeDefinition) {
            NotificationChain msgs = null;
            if (this.baseTypeDefinition != null) {
                msgs = ((InternalEObject)this.baseTypeDefinition).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newBaseTypeDefinition != null) {
                msgs = ((InternalEObject)newBaseTypeDefinition).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetBaseTypeDefinition(newBaseTypeDefinition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newBaseTypeDefinition, (Object)newBaseTypeDefinition));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetARPackage((ARPackage)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetARPackage(null, msgs);
            }
            case 21: {
                return this.basicSetVariationPoint(null, msgs);
            }
            case 23: {
                return this.basicSetBaseTypeDefinition(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 20: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, ARPackage.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.gGetARPackage();
            }
            case 20: {
                return this.getARPackage();
            }
            case 21: {
                return this.getVariationPoint();
            }
            case 22: {
                return this.gGetBaseTypeDefinitionType();
            }
            case 23: {
                return this.getBaseTypeDefinition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.gSetARPackage((GARPackage)newValue);
                return;
            }
            case 20: {
                this.setARPackage((ARPackage)newValue);
                return;
            }
            case 21: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
            case 22: {
                this.gSetBaseTypeDefinitionType((GBaseTypeDefinition)newValue);
                return;
            }
            case 23: {
                this.setBaseTypeDefinition((BaseTypeDefinition)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.gSetARPackage(null);
                return;
            }
            case 20: {
                this.setARPackage(null);
                return;
            }
            case 21: {
                this.setVariationPoint(null);
                return;
            }
            case 22: {
                this.gSetBaseTypeDefinitionType(null);
                return;
            }
            case 23: {
                this.setBaseTypeDefinition(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.gGetARPackage() != null;
            }
            case 20: {
                return this.getARPackage() != null;
            }
            case 21: {
                return this.variationPoint != null;
            }
            case 22: {
                return this.gGetBaseTypeDefinitionType() != null;
            }
            case 23: {
                return this.baseTypeDefinition != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == AtpBlueprintable.class) {
            return -1;
        }
        if (baseClass == CollectableElement.class) {
            return -1;
        }
        if (baseClass == GPackageableElement.class) {
            switch (derivedFeatureID) {
                case 19: {
                    return 6;
                }
            }
            return -1;
        }
        if (baseClass == PackageableElement.class) {
            switch (derivedFeatureID) {
                case 20: {
                    return 19;
                }
                case 21: {
                    return 20;
                }
            }
            return -1;
        }
        if (baseClass == ARElement.class) {
            return -1;
        }
        if (baseClass == GBaseType.class) {
            switch (derivedFeatureID) {
                case 22: {
                    return 2;
                }
            }
            return -1;
        }
        if (baseClass == BaseType.class) {
            switch (derivedFeatureID) {
                case 23: {
                    return 22;
                }
            }
            return -1;
        }
        if (baseClass == GSwBaseType.class) {
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == AtpBlueprintable.class) {
            return -1;
        }
        if (baseClass == CollectableElement.class) {
            return -1;
        }
        if (baseClass == GPackageableElement.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 19;
                }
            }
            return -1;
        }
        if (baseClass == PackageableElement.class) {
            switch (baseFeatureID) {
                case 19: {
                    return 20;
                }
                case 20: {
                    return 21;
                }
            }
            return -1;
        }
        if (baseClass == ARElement.class) {
            return -1;
        }
        if (baseClass == GBaseType.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 22;
                }
            }
            return -1;
        }
        if (baseClass == BaseType.class) {
            switch (baseFeatureID) {
                case 22: {
                    return 23;
                }
            }
            return -1;
        }
        if (baseClass == GSwBaseType.class) {
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

