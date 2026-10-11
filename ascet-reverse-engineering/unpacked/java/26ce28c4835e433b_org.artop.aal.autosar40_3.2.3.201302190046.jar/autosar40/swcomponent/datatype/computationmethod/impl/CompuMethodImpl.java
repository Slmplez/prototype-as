/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod
 *  gautosar.gswcomponents.gdatatype.gunits.GUnit
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.datatype.computationmethod.impl;

import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.swcomponent.datatype.computationmethod.Compu;
import autosar40.swcomponent.datatype.computationmethod.CompuMethod;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar40.swcomponent.datatype.units.Unit;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod;
import gautosar.gswcomponents.gdatatype.gunits.GUnit;
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
public class CompuMethodImpl
extends ARElementImpl
implements CompuMethod,
IReferringClass {
    protected static final String SHORT_NAME_PATTERN_EDEFAULT = "";
    protected String shortNamePattern = "";
    protected boolean shortNamePatternESet;
    protected static final String DISPLAY_FORMAT_EDEFAULT = "";
    protected String displayFormat = "";
    protected boolean displayFormatESet;
    protected Unit unit;
    protected Compu compuInternalToPhys;
    protected Compu compuPhysToInternal;

    protected CompuMethodImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComputationmethodPackage.Literals.COMPU_METHOD;
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
        this.shortNamePattern = "";
        this.shortNamePatternESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldShortNamePattern, (Object)"", oldShortNamePatternESet));
        }
    }

    @Override
    public boolean isSetShortNamePattern() {
        return this.shortNamePatternESet;
    }

    public GCompu gGetCompuPhysToInternal() {
        return this.getCompuPhysToInternal();
    }

    public void gSetCompuPhysToInternal(GCompu newGCompuPhysToInternal) {
        this.setCompuPhysToInternal((Compu)newGCompuPhysToInternal);
    }

    public GCompu gGetCompuInternalToPhys() {
        return this.getCompuInternalToPhys();
    }

    public void gSetCompuInternalToPhys(GCompu newGCompuInternalToPhys) {
        this.setCompuInternalToPhys((Compu)newGCompuInternalToPhys);
    }

    public GUnit gGetUnit() {
        return this.getUnit();
    }

    public void gSetUnit(GUnit newGUnit) {
        this.setUnit((Unit)newGUnit);
    }

    @Override
    public String getDisplayFormat() {
        return this.displayFormat;
    }

    @Override
    public void setDisplayFormat(String newDisplayFormat) {
        String oldDisplayFormat = this.displayFormat;
        this.displayFormat = newDisplayFormat;
        boolean oldDisplayFormatESet = this.displayFormatESet;
        this.displayFormatESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldDisplayFormat, (Object)this.displayFormat, !oldDisplayFormatESet));
        }
    }

    @Override
    public void unsetDisplayFormat() {
        String oldDisplayFormat = this.displayFormat;
        boolean oldDisplayFormatESet = this.displayFormatESet;
        this.displayFormat = "";
        this.displayFormatESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldDisplayFormat, (Object)"", oldDisplayFormatESet));
        }
    }

    @Override
    public boolean isSetDisplayFormat() {
        return this.displayFormatESet;
    }

    @Override
    public Unit getUnit() {
        if (this.unit != null && this.unit.eIsProxy()) {
            InternalEObject oldUnit = (InternalEObject)this.unit;
            this.unit = (Unit)this.eResolveProxy(oldUnit);
            if (this.unit != oldUnit && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 26, (Object)oldUnit, (Object)this.unit));
            }
        }
        return this.unit;
    }

    public Unit basicGetUnit() {
        return this.unit;
    }

    @Override
    public void setUnit(Unit newUnit) {
        Unit oldUnit = this.unit;
        this.unit = newUnit;
        AutosarObjectUtil.setDest((EObject)this, (int)26, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldUnit, (Object)this.unit));
        }
    }

    @Override
    public Compu getCompuInternalToPhys() {
        return this.compuInternalToPhys;
    }

    public NotificationChain basicSetCompuInternalToPhys(Compu newCompuInternalToPhys, NotificationChain msgs) {
        Compu oldCompuInternalToPhys = this.compuInternalToPhys;
        this.compuInternalToPhys = newCompuInternalToPhys;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldCompuInternalToPhys, (Object)newCompuInternalToPhys);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCompuInternalToPhys(Compu newCompuInternalToPhys) {
        if (newCompuInternalToPhys != this.compuInternalToPhys) {
            NotificationChain msgs = null;
            if (this.compuInternalToPhys != null) {
                msgs = ((InternalEObject)this.compuInternalToPhys).eInverseRemove((InternalEObject)this, -28, null, msgs);
            }
            if (newCompuInternalToPhys != null) {
                msgs = ((InternalEObject)newCompuInternalToPhys).eInverseAdd((InternalEObject)this, -28, null, msgs);
            }
            if ((msgs = this.basicSetCompuInternalToPhys(newCompuInternalToPhys, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)newCompuInternalToPhys, (Object)newCompuInternalToPhys));
        }
    }

    @Override
    public Compu getCompuPhysToInternal() {
        return this.compuPhysToInternal;
    }

    public NotificationChain basicSetCompuPhysToInternal(Compu newCompuPhysToInternal, NotificationChain msgs) {
        Compu oldCompuPhysToInternal = this.compuPhysToInternal;
        this.compuPhysToInternal = newCompuPhysToInternal;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldCompuPhysToInternal, (Object)newCompuPhysToInternal);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCompuPhysToInternal(Compu newCompuPhysToInternal) {
        if (newCompuPhysToInternal != this.compuPhysToInternal) {
            NotificationChain msgs = null;
            if (this.compuPhysToInternal != null) {
                msgs = ((InternalEObject)this.compuPhysToInternal).eInverseRemove((InternalEObject)this, -29, null, msgs);
            }
            if (newCompuPhysToInternal != null) {
                msgs = ((InternalEObject)newCompuPhysToInternal).eInverseAdd((InternalEObject)this, -29, null, msgs);
            }
            if ((msgs = this.basicSetCompuPhysToInternal(newCompuPhysToInternal, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)newCompuPhysToInternal, (Object)newCompuPhysToInternal));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                return this.basicSetCompuInternalToPhys(null, msgs);
            }
            case 28: {
                return this.basicSetCompuPhysToInternal(null, msgs);
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
                return this.gGetCompuPhysToInternal();
            }
            case 23: {
                return this.gGetCompuInternalToPhys();
            }
            case 24: {
                return this.gGetUnit();
            }
            case 25: {
                return this.getDisplayFormat();
            }
            case 26: {
                if (resolve) {
                    return this.getUnit();
                }
                return this.basicGetUnit();
            }
            case 27: {
                return this.getCompuInternalToPhys();
            }
            case 28: {
                return this.getCompuPhysToInternal();
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
                this.gSetCompuPhysToInternal((GCompu)newValue);
                return;
            }
            case 23: {
                this.gSetCompuInternalToPhys((GCompu)newValue);
                return;
            }
            case 24: {
                this.gSetUnit((GUnit)newValue);
                return;
            }
            case 25: {
                this.setDisplayFormat((String)newValue);
                return;
            }
            case 26: {
                this.setUnit((Unit)newValue);
                return;
            }
            case 27: {
                this.setCompuInternalToPhys((Compu)newValue);
                return;
            }
            case 28: {
                this.setCompuPhysToInternal((Compu)newValue);
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
                this.gSetCompuPhysToInternal(null);
                return;
            }
            case 23: {
                this.gSetCompuInternalToPhys(null);
                return;
            }
            case 24: {
                this.gSetUnit(null);
                return;
            }
            case 25: {
                this.unsetDisplayFormat();
                return;
            }
            case 26: {
                this.setUnit(null);
                return;
            }
            case 27: {
                this.setCompuInternalToPhys(null);
                return;
            }
            case 28: {
                this.setCompuPhysToInternal(null);
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
                return this.gGetCompuPhysToInternal() != null;
            }
            case 23: {
                return this.gGetCompuInternalToPhys() != null;
            }
            case 24: {
                return this.gGetUnit() != null;
            }
            case 25: {
                return this.isSetDisplayFormat();
            }
            case 26: {
                return this.unit != null;
            }
            case 27: {
                return this.compuInternalToPhys != null;
            }
            case 28: {
                return this.compuPhysToInternal != null;
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
        if (baseClass == GCompuMethod.class) {
            switch (derivedFeatureID) {
                case 22: {
                    return 7;
                }
                case 23: {
                    return 8;
                }
                case 24: {
                    return 9;
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
        if (baseClass == GCompuMethod.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 22;
                }
                case 8: {
                    return 23;
                }
                case 9: {
                    return 24;
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
        result.append(", displayFormat: ");
        if (this.displayFormatESet) {
            result.append(this.displayFormat);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

