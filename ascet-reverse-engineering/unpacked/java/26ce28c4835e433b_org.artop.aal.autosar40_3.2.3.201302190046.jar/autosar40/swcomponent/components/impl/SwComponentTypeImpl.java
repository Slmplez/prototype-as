/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GPortPrototype
 *  gautosar.gswcomponents.gcomponents.GSwComponentType
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.components.impl;

import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.components.PortGroup;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.softwarecomponentdocumentation.SwComponentDocumentation;
import gautosar.gswcomponents.gcomponents.GPortPrototype;
import gautosar.gswcomponents.gcomponents.GSwComponentType;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwComponentTypeImpl
extends ARElementImpl
implements SwComponentType {
    protected static final String SHORT_NAME_PATTERN_EDEFAULT = "";
    protected String shortNamePattern = "";
    protected boolean shortNamePatternESet;
    protected EList<SwComponentDocumentation> swComponentDocumentations;
    protected EList<PortPrototype> ports;
    protected EList<PortGroup> portGroups;

    protected SwComponentTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.SW_COMPONENT_TYPE;
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

    public EList<GPortPrototype> gGetPorts() {
        EList<PortPrototype> untypedList = this.getPorts();
        return untypedList;
    }

    @Override
    public EList<SwComponentDocumentation> getSwComponentDocumentations() {
        if (this.swComponentDocumentations == null) {
            this.swComponentDocumentations = new EObjectContainmentEList(SwComponentDocumentation.class, (InternalEObject)this, 23);
        }
        return this.swComponentDocumentations;
    }

    @Override
    public EList<PortPrototype> getPorts() {
        if (this.ports == null) {
            this.ports = new EObjectContainmentWithInverseEList(PortPrototype.class, (InternalEObject)this, 24, 19);
        }
        return this.ports;
    }

    @Override
    public EList<PortGroup> getPortGroups() {
        if (this.portGroups == null) {
            this.portGroups = new EObjectContainmentWithInverseEList(PortGroup.class, (InternalEObject)this, 25, 19);
        }
        return this.portGroups;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                return ((InternalEList)this.getPorts()).basicAdd((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getPortGroups()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getSwComponentDocumentations()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getPorts()).basicRemove((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getPortGroups()).basicRemove((Object)otherEnd, msgs);
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
                return this.gGetPorts();
            }
            case 23: {
                return this.getSwComponentDocumentations();
            }
            case 24: {
                return this.getPorts();
            }
            case 25: {
                return this.getPortGroups();
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
                this.gGetPorts().clear();
                this.gGetPorts().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getSwComponentDocumentations().clear();
                this.getSwComponentDocumentations().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getPorts().clear();
                this.getPorts().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.getPortGroups().clear();
                this.getPortGroups().addAll((Collection)newValue);
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
                this.gGetPorts().clear();
                return;
            }
            case 23: {
                this.getSwComponentDocumentations().clear();
                return;
            }
            case 24: {
                this.getPorts().clear();
                return;
            }
            case 25: {
                this.getPortGroups().clear();
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
                return !this.gGetPorts().isEmpty();
            }
            case 23: {
                return this.swComponentDocumentations != null && !this.swComponentDocumentations.isEmpty();
            }
            case 24: {
                return this.ports != null && !this.ports.isEmpty();
            }
            case 25: {
                return this.portGroups != null && !this.portGroups.isEmpty();
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
        if (baseClass == AtpClassifier.class) {
            return -1;
        }
        if (baseClass == AtpType.class) {
            return -1;
        }
        if (baseClass == GSwComponentType.class) {
            switch (derivedFeatureID) {
                case 22: {
                    return 7;
                }
            }
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
        if (baseClass == AtpClassifier.class) {
            return -1;
        }
        if (baseClass == AtpType.class) {
            return -1;
        }
        if (baseClass == GSwComponentType.class) {
            switch (baseFeatureID) {
                case 7: {
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

