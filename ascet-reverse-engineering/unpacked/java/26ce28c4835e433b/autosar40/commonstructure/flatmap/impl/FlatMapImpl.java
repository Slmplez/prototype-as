/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.flatmap.impl;

import autosar40.commonstructure.flatmap.FlatInstanceDescriptor;
import autosar40.commonstructure.flatmap.FlatMap;
import autosar40.commonstructure.flatmap.FlatmapPackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FlatMapImpl
extends ARElementImpl
implements FlatMap {
    protected static final String SHORT_NAME_PATTERN_EDEFAULT = "";
    protected String shortNamePattern = "";
    protected boolean shortNamePatternESet;
    protected EList<FlatInstanceDescriptor> instances;

    protected FlatMapImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return FlatmapPackage.Literals.FLAT_MAP;
    }

    @Override
    public String getShortNamePattern() {
        return this.shortNamePattern;
    }

    @Override
    public void setShortNamePattern(String newShortNamePattern) {
        String oldShortNamePattern = this.shortNamePattern;
        this.shortNamePattern = newShortNamePattern;
        boolean oldShortNamePatternESet = this.shortNamePatternESet;
        this.shortNamePatternESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldShortNamePattern, (Object)this.shortNamePattern, !oldShortNamePatternESet));
        }
    }

    @Override
    public void unsetShortNamePattern() {
        String oldShortNamePattern = this.shortNamePattern;
        boolean oldShortNamePatternESet = this.shortNamePatternESet;
        this.shortNamePattern = SHORT_NAME_PATTERN_EDEFAULT;
        this.shortNamePatternESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldShortNamePattern, (Object)SHORT_NAME_PATTERN_EDEFAULT, oldShortNamePatternESet));
        }
    }

    @Override
    public boolean isSetShortNamePattern() {
        return this.shortNamePatternESet;
    }

    @Override
    public EList<FlatInstanceDescriptor> getInstances() {
        if (this.instances == null) {
            this.instances = new EObjectContainmentWithInverseEList(FlatInstanceDescriptor.class, (InternalEObject)this, 22, 18);
        }
        return this.instances;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getInstances()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return ((InternalEList)this.getInstances()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getShortNamePattern();
            }
            case 22: {
                return this.getInstances();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setShortNamePattern((String)newValue);
                return;
            }
            case 22: {
                this.getInstances().clear();
                this.getInstances().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetShortNamePattern();
                return;
            }
            case 22: {
                this.getInstances().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetShortNamePattern();
            }
            case 22: {
                return this.instances != null && !this.instances.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == AtpBlueprint.class) {
            switch (derivedFeatureID) {
                case 21: {
                    return 18;
                }
            }
            return -1;
        }
        if (baseClass == AtpBlueprintable.class) {
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == AtpBlueprint.class) {
            switch (baseFeatureID) {
                case 18: {
                    return 21;
                }
            }
            return -1;
        }
        if (baseClass == AtpBlueprintable.class) {
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
        result.append(" (shortNamePattern: ");
        if (this.shortNamePatternESet) {
            result.append(this.shortNamePattern);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

