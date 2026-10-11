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
package autosar40.commonstructure.basetypes.impl;

import autosar40.commonstructure.basetypes.BaseType;
import autosar40.commonstructure.basetypes.BaseTypeDefinition;
import autosar40.commonstructure.basetypes.BasetypesPackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
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
    protected BaseTypeDefinition baseTypeDefinition;

    protected BaseTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BasetypesPackage.Literals.BASE_TYPE;
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldBaseTypeDefinition, (Object)newBaseTypeDefinition);
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
                msgs = ((InternalEObject)this.baseTypeDefinition).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newBaseTypeDefinition != null) {
                msgs = ((InternalEObject)newBaseTypeDefinition).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetBaseTypeDefinition(newBaseTypeDefinition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newBaseTypeDefinition, (Object)newBaseTypeDefinition));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetBaseTypeDefinition(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.gGetBaseTypeDefinitionType();
            }
            case 22: {
                return this.getBaseTypeDefinition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.gSetBaseTypeDefinitionType((GBaseTypeDefinition)newValue);
                return;
            }
            case 22: {
                this.setBaseTypeDefinition((BaseTypeDefinition)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.gSetBaseTypeDefinitionType(null);
                return;
            }
            case 22: {
                this.setBaseTypeDefinition(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.gGetBaseTypeDefinitionType() != null;
            }
            case 22: {
                return this.baseTypeDefinition != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GBaseType.class) {
            switch (derivedFeatureID) {
                case 21: {
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
                    return 21;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

