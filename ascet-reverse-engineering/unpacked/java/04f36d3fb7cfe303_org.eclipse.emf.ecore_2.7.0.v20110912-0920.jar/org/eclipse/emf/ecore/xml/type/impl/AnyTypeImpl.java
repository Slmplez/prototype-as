/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 */
package org.eclipse.emf.ecore.xml.type.impl;

import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.ecore.xml.type.AnyType;
import org.eclipse.emf.ecore.xml.type.XMLTypePackage;

public class AnyTypeImpl
extends EObjectImpl
implements AnyType {
    protected FeatureMap mixed;
    protected FeatureMap anyAttribute;

    protected AnyTypeImpl() {
    }

    protected EClass eStaticClass() {
        return XMLTypePackage.Literals.ANY_TYPE;
    }

    public FeatureMap getMixed() {
        if (this.mixed == null) {
            this.mixed = new BasicFeatureMap(this, 0);
        }
        return this.mixed;
    }

    public FeatureMap getAny() {
        return (FeatureMap)this.getMixed().list(XMLTypePackage.Literals.ANY_TYPE__ANY);
    }

    public FeatureMap getAnyAttribute() {
        if (this.anyAttribute == null) {
            this.anyAttribute = new BasicFeatureMap(this, 2);
        }
        return this.anyAttribute;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)((Object)this.getMixed())).basicRemove(otherEnd, msgs);
            }
            case 1: {
                return ((InternalEList)((Object)this.getAny())).basicRemove(otherEnd, msgs);
            }
            case 2: {
                return ((InternalEList)((Object)this.getAnyAttribute())).basicRemove(otherEnd, msgs);
            }
        }
        return this.eDynamicInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                if (coreType) {
                    return this.getMixed();
                }
                return ((FeatureMap.Internal)this.getMixed()).getWrapper();
            }
            case 1: {
                if (coreType) {
                    return this.getAny();
                }
                return ((FeatureMap.Internal)this.getAny()).getWrapper();
            }
            case 2: {
                if (coreType) {
                    return this.getAnyAttribute();
                }
                return ((FeatureMap.Internal)this.getAnyAttribute()).getWrapper();
            }
        }
        return this.eDynamicGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                ((FeatureMap.Internal)this.getMixed()).set(newValue);
                return;
            }
            case 1: {
                ((FeatureMap.Internal)this.getAny()).set(newValue);
                return;
            }
            case 2: {
                ((FeatureMap.Internal)this.getAnyAttribute()).set(newValue);
                return;
            }
        }
        this.eDynamicSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getMixed().clear();
                return;
            }
            case 1: {
                this.getAny().clear();
                return;
            }
            case 2: {
                this.getAnyAttribute().clear();
                return;
            }
        }
        this.eDynamicUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.mixed != null && !this.mixed.isEmpty();
            }
            case 1: {
                return !this.getAny().isEmpty();
            }
            case 2: {
                return this.anyAttribute != null && !this.anyAttribute.isEmpty();
            }
        }
        return this.eDynamicIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (mixed: ");
        result.append(this.mixed);
        result.append(", anyAttribute: ");
        result.append(this.anyAttribute);
        result.append(')');
        return result.toString();
    }
}

