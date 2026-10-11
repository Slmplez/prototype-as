/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.signalpaths.impl;

import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;
import autosar40.system.signalpaths.ForbiddenSignalPath;
import autosar40.system.signalpaths.SignalpathsPackage;
import autosar40.system.signalpaths.SwcToSwcOperationArguments;
import autosar40.system.signalpaths.SwcToSwcSignal;
import autosar40.system.signalpaths.impl.SignalPathConstraintImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ForbiddenSignalPathImpl
extends SignalPathConstraintImpl
implements ForbiddenSignalPath,
IReferringClass {
    protected EList<SwcToSwcOperationArguments> operations;
    protected EList<PhysicalChannel> physicalChannels;
    protected EList<SwcToSwcSignal> signals;

    protected ForbiddenSignalPathImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SignalpathsPackage.Literals.FORBIDDEN_SIGNAL_PATH;
    }

    @Override
    public EList<SwcToSwcOperationArguments> getOperations() {
        if (this.operations == null) {
            this.operations = new EObjectContainmentEList(SwcToSwcOperationArguments.class, (InternalEObject)this, 7);
        }
        return this.operations;
    }

    @Override
    public EList<PhysicalChannel> getPhysicalChannels() {
        if (this.physicalChannels == null) {
            this.physicalChannels = new EObjectResolvingReferringEList(PhysicalChannel.class, (InternalEObject)this, 8);
        }
        return this.physicalChannels;
    }

    @Override
    public EList<SwcToSwcSignal> getSignals() {
        if (this.signals == null) {
            this.signals = new EObjectContainmentEList(SwcToSwcSignal.class, (InternalEObject)this, 9);
        }
        return this.signals;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return ((InternalEList)this.getOperations()).basicRemove((Object)otherEnd, msgs);
            }
            case 9: {
                return ((InternalEList)this.getSignals()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 7: {
                return this.getOperations();
            }
            case 8: {
                return this.getPhysicalChannels();
            }
            case 9: {
                return this.getSignals();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 7: {
                this.getOperations().clear();
                this.getOperations().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.getPhysicalChannels().clear();
                this.getPhysicalChannels().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.getSignals().clear();
                this.getSignals().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 7: {
                this.getOperations().clear();
                return;
            }
            case 8: {
                this.getPhysicalChannels().clear();
                return;
            }
            case 9: {
                this.getSignals().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 7: {
                return this.operations != null && !this.operations.isEmpty();
            }
            case 8: {
                return this.physicalChannels != null && !this.physicalChannels.isEmpty();
            }
            case 9: {
                return this.signals != null && !this.signals.isEmpty();
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
}

