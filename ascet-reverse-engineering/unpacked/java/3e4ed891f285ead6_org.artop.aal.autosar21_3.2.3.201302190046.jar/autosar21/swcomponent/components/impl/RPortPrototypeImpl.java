/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GRPortPrototype
 *  gautosar.gswcomponents.gportinterface.GPortInterface
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
package autosar21.swcomponent.components.impl;

import autosar21.swcomponent.communication.RPortComSpec;
import autosar21.swcomponent.components.ComponentsPackage;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.components.impl.PortPrototypeImpl;
import autosar21.swcomponent.portinterface.PortInterface;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gportinterface.GPortInterface;
import java.util.Collection;
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
public class RPortPrototypeImpl
extends PortPrototypeImpl
implements RPortPrototype,
IReferringClass {
    protected EList<RPortComSpec> requiredComSpecs;
    protected PortInterface requiredInterface;

    protected RPortPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.RPORT_PROTOTYPE;
    }

    public GPortInterface gGetRequiredInterface() {
        return this.getRequiredInterface();
    }

    public void gSetRequiredInterface(GPortInterface newGRequiredInterface) {
        this.setRequiredInterface((PortInterface)newGRequiredInterface);
    }

    @Override
    public EList<RPortComSpec> getRequiredComSpecs() {
        if (this.requiredComSpecs == null) {
            this.requiredComSpecs = new EObjectContainmentWithInverseEList(RPortComSpec.class, (InternalEObject)this, 19, 4);
        }
        return this.requiredComSpecs;
    }

    @Override
    public PortInterface getRequiredInterface() {
        if (this.requiredInterface != null && this.requiredInterface.eIsProxy()) {
            InternalEObject oldRequiredInterface = (InternalEObject)this.requiredInterface;
            this.requiredInterface = (PortInterface)this.eResolveProxy(oldRequiredInterface);
            if (this.requiredInterface != oldRequiredInterface && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldRequiredInterface, (Object)this.requiredInterface));
            }
        }
        return this.requiredInterface;
    }

    public PortInterface basicGetRequiredInterface() {
        return this.requiredInterface;
    }

    @Override
    public void setRequiredInterface(PortInterface newRequiredInterface) {
        PortInterface oldRequiredInterface = this.requiredInterface;
        this.requiredInterface = newRequiredInterface;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldRequiredInterface, (Object)this.requiredInterface));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getRequiredComSpecs()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getRequiredComSpecs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.gGetRequiredInterface();
            }
            case 19: {
                return this.getRequiredComSpecs();
            }
            case 20: {
                if (resolve) {
                    return this.getRequiredInterface();
                }
                return this.basicGetRequiredInterface();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.gSetRequiredInterface((GPortInterface)newValue);
                return;
            }
            case 19: {
                this.getRequiredComSpecs().clear();
                this.getRequiredComSpecs().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.setRequiredInterface((PortInterface)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.gSetRequiredInterface(null);
                return;
            }
            case 19: {
                this.getRequiredComSpecs().clear();
                return;
            }
            case 20: {
                this.setRequiredInterface(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.gGetRequiredInterface() != null;
            }
            case 19: {
                return this.requiredComSpecs != null && !this.requiredComSpecs.isEmpty();
            }
            case 20: {
                return this.requiredInterface != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GRPortPrototype.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GRPortPrototype.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 18;
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
}

