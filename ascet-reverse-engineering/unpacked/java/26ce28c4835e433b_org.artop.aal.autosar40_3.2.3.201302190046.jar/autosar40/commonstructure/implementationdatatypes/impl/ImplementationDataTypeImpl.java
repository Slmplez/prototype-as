/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARPackage
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.implementationdatatypes.impl;

import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.commonstructure.implementationdatatypes.ImplementationdatatypesPackage;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.standardization.abstractblueprintstructure.impl.AtpBlueprintImpl;
import autosar40.swcomponent.components.SymbolProps;
import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ImplementationDataTypeImpl
extends AtpBlueprintImpl
implements ImplementationDataType {
    protected VariationPoint variationPoint;
    protected SwDataDefProps swDataDefProps;
    protected EList<ImplementationDataTypeElement> subElements;
    protected SymbolProps symbolProps;
    protected static final String TYPE_EMITTER_EDEFAULT = "";
    protected String typeEmitter = "";
    protected boolean typeEmitterESet;

    protected ImplementationDataTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ImplementationdatatypesPackage.Literals.IMPLEMENTATION_DATA_TYPE;
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

    @Override
    public SwDataDefProps getSwDataDefProps() {
        return this.swDataDefProps;
    }

    public NotificationChain basicSetSwDataDefProps(SwDataDefProps newSwDataDefProps, NotificationChain msgs) {
        SwDataDefProps oldSwDataDefProps = this.swDataDefProps;
        this.swDataDefProps = newSwDataDefProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldSwDataDefProps, (Object)newSwDataDefProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwDataDefProps(SwDataDefProps newSwDataDefProps) {
        if (newSwDataDefProps != this.swDataDefProps) {
            NotificationChain msgs = null;
            if (this.swDataDefProps != null) {
                msgs = ((InternalEObject)this.swDataDefProps).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newSwDataDefProps != null) {
                msgs = ((InternalEObject)newSwDataDefProps).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetSwDataDefProps(newSwDataDefProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newSwDataDefProps, (Object)newSwDataDefProps));
        }
    }

    @Override
    public EList<ImplementationDataTypeElement> getSubElements() {
        if (this.subElements == null) {
            this.subElements = new EObjectContainmentEList(ImplementationDataTypeElement.class, (InternalEObject)this, 23);
        }
        return this.subElements;
    }

    @Override
    public SymbolProps getSymbolProps() {
        return this.symbolProps;
    }

    public NotificationChain basicSetSymbolProps(SymbolProps newSymbolProps, NotificationChain msgs) {
        SymbolProps oldSymbolProps = this.symbolProps;
        this.symbolProps = newSymbolProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldSymbolProps, (Object)newSymbolProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSymbolProps(SymbolProps newSymbolProps) {
        if (newSymbolProps != this.symbolProps) {
            NotificationChain msgs = null;
            if (this.symbolProps != null) {
                msgs = ((InternalEObject)this.symbolProps).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newSymbolProps != null) {
                msgs = ((InternalEObject)newSymbolProps).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetSymbolProps(newSymbolProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newSymbolProps, (Object)newSymbolProps));
        }
    }

    @Override
    public String getTypeEmitter() {
        return this.typeEmitter;
    }

    @Override
    public void setTypeEmitter(String newTypeEmitter) {
        String oldTypeEmitter = this.typeEmitter;
        this.typeEmitter = newTypeEmitter;
        boolean oldTypeEmitterESet = this.typeEmitterESet;
        this.typeEmitterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldTypeEmitter, (Object)this.typeEmitter, !oldTypeEmitterESet));
        }
    }

    @Override
    public void unsetTypeEmitter() {
        String oldTypeEmitter = this.typeEmitter;
        boolean oldTypeEmitterESet = this.typeEmitterESet;
        this.typeEmitter = TYPE_EMITTER_EDEFAULT;
        this.typeEmitterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldTypeEmitter, (Object)TYPE_EMITTER_EDEFAULT, oldTypeEmitterESet));
        }
    }

    @Override
    public boolean isSetTypeEmitter() {
        return this.typeEmitterESet;
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
            case 22: {
                return this.basicSetSwDataDefProps(null, msgs);
            }
            case 23: {
                return ((InternalEList)this.getSubElements()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return this.basicSetSymbolProps(null, msgs);
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
                return this.getSwDataDefProps();
            }
            case 23: {
                return this.getSubElements();
            }
            case 24: {
                return this.getSymbolProps();
            }
            case 25: {
                return this.getTypeEmitter();
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
                this.setSwDataDefProps((SwDataDefProps)newValue);
                return;
            }
            case 23: {
                this.getSubElements().clear();
                this.getSubElements().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.setSymbolProps((SymbolProps)newValue);
                return;
            }
            case 25: {
                this.setTypeEmitter((String)newValue);
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
                this.setSwDataDefProps(null);
                return;
            }
            case 23: {
                this.getSubElements().clear();
                return;
            }
            case 24: {
                this.setSymbolProps(null);
                return;
            }
            case 25: {
                this.unsetTypeEmitter();
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
                return this.swDataDefProps != null;
            }
            case 23: {
                return this.subElements != null && !this.subElements.isEmpty();
            }
            case 24: {
                return this.symbolProps != null;
            }
            case 25: {
                return this.isSetTypeEmitter();
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
        if (baseClass == AtpClassifier.class) {
            return -1;
        }
        if (baseClass == AtpType.class) {
            return -1;
        }
        if (baseClass == GAutosarDataType.class) {
            return -1;
        }
        if (baseClass == AutosarDataType.class) {
            switch (derivedFeatureID) {
                case 22: {
                    return 21;
                }
            }
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
        if (baseClass == AtpClassifier.class) {
            return -1;
        }
        if (baseClass == AtpType.class) {
            return -1;
        }
        if (baseClass == GAutosarDataType.class) {
            return -1;
        }
        if (baseClass == AutosarDataType.class) {
            switch (baseFeatureID) {
                case 21: {
                    return 22;
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
        result.append(" (typeEmitter: ");
        if (this.typeEmitterESet) {
            result.append(this.typeEmitter);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

