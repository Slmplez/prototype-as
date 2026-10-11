/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.ISignal;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalGroup;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignalGroup;
import autosar40.system.fibex.fibexcore.impl.FibexElementImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ISignalGroupImpl
extends FibexElementImpl
implements ISignalGroup,
IReferringClass {
    protected EList<ISignal> iSignals;
    protected SystemSignalGroup systemSignalGroup;

    protected ISignalGroupImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.ISIGNAL_GROUP;
    }

    @Override
    public EList<ISignal> getISignals() {
        if (this.iSignals == null) {
            this.iSignals = new EObjectResolvingReferringEList(ISignal.class, (InternalEObject)this, 21);
        }
        return this.iSignals;
    }

    @Override
    public SystemSignalGroup getSystemSignalGroup() {
        if (this.systemSignalGroup != null && this.systemSignalGroup.eIsProxy()) {
            InternalEObject oldSystemSignalGroup = (InternalEObject)this.systemSignalGroup;
            this.systemSignalGroup = (SystemSignalGroup)this.eResolveProxy(oldSystemSignalGroup);
            if (this.systemSignalGroup != oldSystemSignalGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldSystemSignalGroup, (Object)this.systemSignalGroup));
            }
        }
        return this.systemSignalGroup;
    }

    public SystemSignalGroup basicGetSystemSignalGroup() {
        return this.systemSignalGroup;
    }

    @Override
    public void setSystemSignalGroup(SystemSignalGroup newSystemSignalGroup) {
        SystemSignalGroup oldSystemSignalGroup = this.systemSignalGroup;
        this.systemSignalGroup = newSystemSignalGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldSystemSignalGroup, (Object)this.systemSignalGroup));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getISignals();
            }
            case 22: {
                if (resolve) {
                    return this.getSystemSignalGroup();
                }
                return this.basicGetSystemSignalGroup();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.getISignals().clear();
                this.getISignals().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setSystemSignalGroup((SystemSignalGroup)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.getISignals().clear();
                return;
            }
            case 22: {
                this.setSystemSignalGroup(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.iSignals != null && !this.iSignals.isEmpty();
            }
            case 22: {
                return this.systemSignalGroup != null;
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

