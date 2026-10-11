/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GPerInstanceMemory
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.swcomponent.internalbehavior.perinstancememory.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.internalbehavior.InternalBehavior;
import autosar21.swcomponent.internalbehavior.perinstancememory.PerInstanceMemory;
import autosar21.swcomponent.internalbehavior.perinstancememory.PerinstancememoryPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GPerInstanceMemory;
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
public class PerInstanceMemoryImpl
extends IdentifiableImpl
implements PerInstanceMemory {
    protected static final String GTYPE_EDEFAULT = null;
    protected static final String GTYPE_DEFINITION_EDEFAULT = null;
    protected static final String TYPE_EDEFAULT = "";
    protected String type = "";
    protected boolean typeESet;
    protected static final String TYPE_DEFINITION_EDEFAULT = "";
    protected String typeDefinition = "";
    protected boolean typeDefinitionESet;

    protected PerInstanceMemoryImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PerinstancememoryPackage.Literals.PER_INSTANCE_MEMORY;
    }

    public String gGetType() {
        String tgtFeatureValue = this.getType();
        return tgtFeatureValue;
    }

    public void gSetType(String newGType) {
        this.setType(newGType);
    }

    public void gUnsetType() {
        this.unsetType();
    }

    public boolean gIsSetType() {
        return this.isSetType();
    }

    public String gGetTypeDefinition() {
        String tgtFeatureValue = this.getTypeDefinition();
        return tgtFeatureValue;
    }

    public void gSetTypeDefinition(String newGTypeDefinition) {
        this.setTypeDefinition(newGTypeDefinition);
    }

    public void gUnsetTypeDefinition() {
        this.unsetTypeDefinition();
    }

    public boolean gIsSetTypeDefinition() {
        return this.isSetTypeDefinition();
    }

    @Override
    public InternalBehavior getInternalBehavior() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (InternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetInternalBehavior(InternalBehavior newInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newInternalBehavior, 18, msgs);
        return msgs;
    }

    @Override
    public void setInternalBehavior(InternalBehavior newInternalBehavior) {
        if (newInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newInternalBehavior != null) {
                msgs = ((InternalEObject)newInternalBehavior).eInverseAdd((InternalEObject)this, 30, InternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetInternalBehavior(newInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newInternalBehavior, (Object)newInternalBehavior));
        }
    }

    @Override
    public String getType() {
        return this.type;
    }

    @Override
    public void setType(String newType) {
        String oldType = this.type;
        this.type = newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    @Override
    public void unsetType() {
        String oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = "";
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldType, (Object)"", oldTypeESet));
        }
    }

    @Override
    public boolean isSetType() {
        return this.typeESet;
    }

    @Override
    public String getTypeDefinition() {
        return this.typeDefinition;
    }

    @Override
    public void setTypeDefinition(String newTypeDefinition) {
        String oldTypeDefinition = this.typeDefinition;
        this.typeDefinition = newTypeDefinition;
        boolean oldTypeDefinitionESet = this.typeDefinitionESet;
        this.typeDefinitionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldTypeDefinition, (Object)this.typeDefinition, !oldTypeDefinitionESet));
        }
    }

    @Override
    public void unsetTypeDefinition() {
        String oldTypeDefinition = this.typeDefinition;
        boolean oldTypeDefinitionESet = this.typeDefinitionESet;
        this.typeDefinition = "";
        this.typeDefinitionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldTypeDefinition, (Object)"", oldTypeDefinitionESet));
        }
    }

    @Override
    public boolean isSetTypeDefinition() {
        return this.typeDefinitionESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetInternalBehavior((InternalBehavior)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetInternalBehavior(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 30, InternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.gGetType();
            }
            case 17: {
                return this.gGetTypeDefinition();
            }
            case 18: {
                return this.getInternalBehavior();
            }
            case 19: {
                return this.getType();
            }
            case 20: {
                return this.getTypeDefinition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.gSetType((String)newValue);
                return;
            }
            case 17: {
                this.gSetTypeDefinition((String)newValue);
                return;
            }
            case 18: {
                this.setInternalBehavior((InternalBehavior)newValue);
                return;
            }
            case 19: {
                this.setType((String)newValue);
                return;
            }
            case 20: {
                this.setTypeDefinition((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.gUnsetType();
                return;
            }
            case 17: {
                this.gUnsetTypeDefinition();
                return;
            }
            case 18: {
                this.setInternalBehavior(null);
                return;
            }
            case 19: {
                this.unsetType();
                return;
            }
            case 20: {
                this.unsetTypeDefinition();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.gIsSetType();
            }
            case 17: {
                return this.gIsSetTypeDefinition();
            }
            case 18: {
                return this.getInternalBehavior() != null;
            }
            case 19: {
                return this.isSetType();
            }
            case 20: {
                return this.isSetTypeDefinition();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GPerInstanceMemory.class) {
            switch (derivedFeatureID) {
                case 16: {
                    return 6;
                }
                case 17: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GPerInstanceMemory.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 16;
                }
                case 7: {
                    return 17;
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
        result.append(" (type: ");
        if (this.typeESet) {
            result.append(this.type);
        } else {
            result.append("<unset>");
        }
        result.append(", typeDefinition: ");
        if (this.typeDefinitionESet) {
            result.append(this.typeDefinition);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

