/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseType
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeDefinition
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.commonstructure.basetypes.impl;

import autosar3x.commonstructure.basetypes.BaseType;
import autosar3x.commonstructure.basetypes.BaseTypeDefinition;
import autosar3x.commonstructure.basetypes.BasetypesPackage;
import autosar3x.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import gautosar.gcommonstructure.gbasetypes.GBaseType;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDefinition;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class BaseTypeImpl
extends ARElementImpl
implements BaseType {
    protected BaseTypeDefinition baseTypeDefinitionType;

    protected BaseTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BasetypesPackage.Literals.BASE_TYPE;
    }

    public GBaseTypeDefinition gGetBaseTypeDefinitionType() {
        return this.getBaseTypeDefinitionType();
    }

    public void gSetBaseTypeDefinitionType(GBaseTypeDefinition newGBaseTypeDefinitionType) {
        this.setBaseTypeDefinitionType((BaseTypeDefinition)newGBaseTypeDefinitionType);
    }

    @Override
    public BaseTypeDefinition getBaseTypeDefinitionType() {
        return this.baseTypeDefinitionType;
    }

    public NotificationChain basicSetBaseTypeDefinitionType(BaseTypeDefinition newBaseTypeDefinitionType, NotificationChain msgs) {
        BaseTypeDefinition oldBaseTypeDefinitionType = this.baseTypeDefinitionType;
        this.baseTypeDefinitionType = newBaseTypeDefinitionType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldBaseTypeDefinitionType, (Object)newBaseTypeDefinitionType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setBaseTypeDefinitionType(BaseTypeDefinition newBaseTypeDefinitionType) {
        if (newBaseTypeDefinitionType != this.baseTypeDefinitionType) {
            NotificationChain msgs = null;
            if (this.baseTypeDefinitionType != null) {
                msgs = ((InternalEObject)this.baseTypeDefinitionType).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newBaseTypeDefinitionType != null) {
                msgs = ((InternalEObject)newBaseTypeDefinitionType).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetBaseTypeDefinitionType(newBaseTypeDefinitionType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newBaseTypeDefinitionType, (Object)newBaseTypeDefinitionType));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetBaseTypeDefinitionType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.gGetBaseTypeDefinitionType();
            }
            case 20: {
                return this.getBaseTypeDefinitionType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.gSetBaseTypeDefinitionType((GBaseTypeDefinition)newValue);
                return;
            }
            case 20: {
                this.setBaseTypeDefinitionType((BaseTypeDefinition)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.gSetBaseTypeDefinitionType(null);
                return;
            }
            case 20: {
                this.setBaseTypeDefinitionType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.gGetBaseTypeDefinitionType() != null;
            }
            case 20: {
                return this.baseTypeDefinitionType != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GBaseType.class) {
            switch (derivedFeatureID) {
                case 19: {
                    return 2;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GBaseType.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 19;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

