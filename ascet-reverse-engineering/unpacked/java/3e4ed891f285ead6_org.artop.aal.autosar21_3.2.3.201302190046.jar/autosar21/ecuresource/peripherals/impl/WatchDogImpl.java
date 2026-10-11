/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar21.ecuresource.peripherals.impl;

import autosar21.ecuresource.ecuelectronics.Oscillator;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.WatchDog;
import autosar21.ecuresource.peripherals.WatchDogModeEnum;
import autosar21.ecuresource.peripherals.impl.PeripheralImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class WatchDogImpl
extends PeripheralImpl
implements WatchDog,
IReferringClass {
    protected Oscillator clockSource;
    protected static final WatchDogModeEnum MODE_EDEFAULT = WatchDogModeEnum.NORMAL;
    protected WatchDogModeEnum mode = MODE_EDEFAULT;
    protected boolean modeESet;
    protected EList<Integer> thresholdValues;

    protected WatchDogImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.WATCH_DOG;
    }

    @Override
    public Oscillator getClockSource() {
        if (this.clockSource != null && this.clockSource.eIsProxy()) {
            InternalEObject oldClockSource = (InternalEObject)this.clockSource;
            this.clockSource = (Oscillator)this.eResolveProxy(oldClockSource);
            if (this.clockSource != oldClockSource && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 26, (Object)oldClockSource, (Object)this.clockSource));
            }
        }
        return this.clockSource;
    }

    public Oscillator basicGetClockSource() {
        return this.clockSource;
    }

    @Override
    public void setClockSource(Oscillator newClockSource) {
        Oscillator oldClockSource = this.clockSource;
        this.clockSource = newClockSource;
        AutosarObjectUtil.setDest((EObject)this, (int)26, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldClockSource, (Object)this.clockSource));
        }
    }

    @Override
    public WatchDogModeEnum getMode() {
        return this.mode;
    }

    @Override
    public void setMode(WatchDogModeEnum newMode) {
        WatchDogModeEnum oldMode = this.mode;
        this.mode = newMode == null ? MODE_EDEFAULT : newMode;
        boolean oldModeESet = this.modeESet;
        this.modeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldMode, (Object)this.mode, !oldModeESet));
        }
    }

    @Override
    public void unsetMode() {
        WatchDogModeEnum oldMode = this.mode;
        boolean oldModeESet = this.modeESet;
        this.mode = MODE_EDEFAULT;
        this.modeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldMode, (Object)MODE_EDEFAULT, oldModeESet));
        }
    }

    @Override
    public boolean isSetMode() {
        return this.modeESet;
    }

    @Override
    public EList<Integer> getThresholdValues() {
        if (this.thresholdValues == null) {
            this.thresholdValues = new EDataTypeUniqueEList.Unsettable(Integer.class, (InternalEObject)this, 28);
        }
        return this.thresholdValues;
    }

    @Override
    public void unsetThresholdValues() {
        if (this.thresholdValues != null) {
            ((InternalEList.Unsettable)this.thresholdValues).unset();
        }
    }

    @Override
    public boolean isSetThresholdValues() {
        return this.thresholdValues != null && ((InternalEList.Unsettable)this.thresholdValues).isSet();
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 26: {
                if (resolve) {
                    return this.getClockSource();
                }
                return this.basicGetClockSource();
            }
            case 27: {
                return this.getMode();
            }
            case 28: {
                return this.getThresholdValues();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 26: {
                this.setClockSource((Oscillator)newValue);
                return;
            }
            case 27: {
                this.setMode((WatchDogModeEnum)((Object)newValue));
                return;
            }
            case 28: {
                this.getThresholdValues().clear();
                this.getThresholdValues().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 26: {
                this.setClockSource(null);
                return;
            }
            case 27: {
                this.unsetMode();
                return;
            }
            case 28: {
                this.unsetThresholdValues();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 26: {
                return this.clockSource != null;
            }
            case 27: {
                return this.isSetMode();
            }
            case 28: {
                return this.isSetThresholdValues();
            }
        }
        return super.eIsSet(featureID);
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
        result.append(" (mode: ");
        if (this.modeESet) {
            result.append((Object)this.mode);
        } else {
            result.append("<unset>");
        }
        result.append(", thresholdValues: ");
        result.append(this.thresholdValues);
        result.append(')');
        return result.toString();
    }
}

