/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration
 *  gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.modedeclaration.impl;

import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroup;
import autosar40.commonstructure.modedeclaration.ModedeclarationPackage;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup;
import java.util.Collection;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModeDeclarationGroupImpl
extends ARElementImpl
implements ModeDeclarationGroup,
IReferringClass {
    protected static final String SHORT_NAME_PATTERN_EDEFAULT = "";
    protected String shortNamePattern = "";
    protected boolean shortNamePatternESet;
    protected ModeDeclaration initialMode;
    protected EList<ModeDeclaration> modeDeclarations;
    protected static final PositiveIntegerDatatype ON_TRANSITION_VALUE_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype onTransitionValue = ON_TRANSITION_VALUE_EDEFAULT.clone();
    protected boolean onTransitionValueESet;

    protected ModeDeclarationGroupImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ModedeclarationPackage.Literals.MODE_DECLARATION_GROUP;
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

    public EList<GModeDeclaration> gGetModeDeclarations() {
        EList<ModeDeclaration> untypedList = this.getModeDeclarations();
        return untypedList;
    }

    public GModeDeclaration gGetInitialMode() {
        return this.getInitialMode();
    }

    public void gSetInitialMode(GModeDeclaration newGInitialMode) {
        this.setInitialMode((ModeDeclaration)newGInitialMode);
    }

    @Override
    public ModeDeclaration getInitialMode() {
        if (this.initialMode != null && this.initialMode.eIsProxy()) {
            InternalEObject oldInitialMode = (InternalEObject)this.initialMode;
            this.initialMode = (ModeDeclaration)this.eResolveProxy(oldInitialMode);
            if (this.initialMode != oldInitialMode && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldInitialMode, (Object)this.initialMode));
            }
        }
        return this.initialMode;
    }

    public ModeDeclaration basicGetInitialMode() {
        return this.initialMode;
    }

    @Override
    public void setInitialMode(ModeDeclaration newInitialMode) {
        ModeDeclaration oldInitialMode = this.initialMode;
        this.initialMode = newInitialMode;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldInitialMode, (Object)this.initialMode));
        }
    }

    @Override
    public EList<ModeDeclaration> getModeDeclarations() {
        if (this.modeDeclarations == null) {
            this.modeDeclarations = new EObjectContainmentWithInverseEList(ModeDeclaration.class, (InternalEObject)this, 25, 19);
        }
        return this.modeDeclarations;
    }

    @Override
    public Long getOnTransitionValue() {
        return (Long)this.onTransitionValue.basicGetValue();
    }

    @Override
    public void setOnTransitionValue(Long newOnTransitionValue) {
        Long oldOnTransitionValue = (Long)this.onTransitionValue.basicGetValue();
        this.onTransitionValue.basicSetValue((Object)newOnTransitionValue);
        boolean oldOnTransitionValueESet = this.onTransitionValueESet;
        this.onTransitionValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldOnTransitionValue, (Object)newOnTransitionValue, !oldOnTransitionValueESet));
        }
    }

    @Override
    public void unsetOnTransitionValue() {
        Long oldOnTransitionValue = (Long)this.onTransitionValue.basicGetValue();
        boolean oldOnTransitionValueESet = this.onTransitionValueESet;
        this.onTransitionValue = ON_TRANSITION_VALUE_EDEFAULT.clone();
        this.onTransitionValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldOnTransitionValue, (Object)ON_TRANSITION_VALUE_EDEFAULT, oldOnTransitionValueESet));
        }
    }

    @Override
    public boolean isSetOnTransitionValue() {
        return this.onTransitionValueESet;
    }

    @Override
    public PositiveIntegerDatatype getOnTransitionValueData() {
        return this.onTransitionValue.clone();
    }

    @Override
    public void setOnTransitionValueData(PositiveIntegerDatatype newOnTransitionValue) {
        this.onTransitionValue.setRadix((int)newOnTransitionValue.getRadix());
        this.onTransitionValue.setNoOfDigits((int)newOnTransitionValue.getNoOfDigits());
        this.setOnTransitionValue(newOnTransitionValue.getValue());
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return ((InternalEList)this.getModeDeclarations()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return ((InternalEList)this.getModeDeclarations()).basicRemove((Object)otherEnd, msgs);
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
                return this.gGetModeDeclarations();
            }
            case 23: {
                return this.gGetInitialMode();
            }
            case 24: {
                if (resolve) {
                    return this.getInitialMode();
                }
                return this.basicGetInitialMode();
            }
            case 25: {
                return this.getModeDeclarations();
            }
            case 26: {
                return this.getOnTransitionValue();
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
                this.gGetModeDeclarations().clear();
                this.gGetModeDeclarations().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.gSetInitialMode((GModeDeclaration)newValue);
                return;
            }
            case 24: {
                this.setInitialMode((ModeDeclaration)newValue);
                return;
            }
            case 25: {
                this.getModeDeclarations().clear();
                this.getModeDeclarations().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.setOnTransitionValue((Long)newValue);
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
                this.gGetModeDeclarations().clear();
                return;
            }
            case 23: {
                this.gSetInitialMode(null);
                return;
            }
            case 24: {
                this.setInitialMode(null);
                return;
            }
            case 25: {
                this.getModeDeclarations().clear();
                return;
            }
            case 26: {
                this.unsetOnTransitionValue();
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
                return !this.gGetModeDeclarations().isEmpty();
            }
            case 23: {
                return this.gGetInitialMode() != null;
            }
            case 24: {
                return this.initialMode != null;
            }
            case 25: {
                return this.modeDeclarations != null && !this.modeDeclarations.isEmpty();
            }
            case 26: {
                return this.isSetOnTransitionValue();
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
        if (baseClass == GModeDeclarationGroup.class) {
            switch (derivedFeatureID) {
                case 22: {
                    return 7;
                }
                case 23: {
                    return 8;
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
        if (baseClass == GModeDeclarationGroup.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 22;
                }
                case 8: {
                    return 23;
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
        result.append(" (shortNamePattern: ");
        if (this.shortNamePatternESet) {
            result.append(this.shortNamePattern);
        } else {
            result.append("<unset>");
        }
        result.append(", onTransitionValue: ");
        if (this.onTransitionValueESet) {
            result.append(this.onTransitionValue);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

