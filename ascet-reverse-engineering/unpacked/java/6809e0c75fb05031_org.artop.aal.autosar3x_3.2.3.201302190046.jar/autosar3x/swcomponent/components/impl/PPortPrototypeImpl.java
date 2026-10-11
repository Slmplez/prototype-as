/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GPPortPrototype
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
package autosar3x.swcomponent.components.impl;

import autosar3x.swcomponent.communication.PPortComSpec;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.PPortPrototype;
import autosar3x.swcomponent.components.impl.PortPrototypeImpl;
import autosar3x.swcomponent.portinterface.PortInterface;
import gautosar.gswcomponents.gcomponents.GPPortPrototype;
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
public class PPortPrototypeImpl
extends PortPrototypeImpl
implements PPortPrototype,
IReferringClass {
    protected EList<PPortComSpec> providedComSpecs;
    protected PortInterface providedInterface;

    protected PPortPrototypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.PPORT_PROTOTYPE;
    }

    public GPortInterface gGetProvidedInterface() {
        return this.getProvidedInterface();
    }

    public void gSetProvidedInterface(GPortInterface newGProvidedInterface) {
        this.setProvidedInterface((PortInterface)newGProvidedInterface);
    }

    @Override
    public EList<PPortComSpec> getProvidedComSpecs() {
        if (this.providedComSpecs == null) {
            this.providedComSpecs = new EObjectContainmentWithInverseEList(PPortComSpec.class, (InternalEObject)this, 23, 4);
        }
        return this.providedComSpecs;
    }

    @Override
    public PortInterface getProvidedInterface() {
        if (this.providedInterface != null && this.providedInterface.eIsProxy()) {
            InternalEObject oldProvidedInterface = (InternalEObject)this.providedInterface;
            this.providedInterface = (PortInterface)this.eResolveProxy(oldProvidedInterface);
            if (this.providedInterface != oldProvidedInterface && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldProvidedInterface, (Object)this.providedInterface));
            }
        }
        return this.providedInterface;
    }

    public PortInterface basicGetProvidedInterface() {
        return this.providedInterface;
    }

    @Override
    public void setProvidedInterface(PortInterface newProvidedInterface) {
        PortInterface oldProvidedInterface = this.providedInterface;
        this.providedInterface = newProvidedInterface;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldProvidedInterface, (Object)this.providedInterface));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getProvidedComSpecs()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getProvidedComSpecs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.gGetProvidedInterface();
            }
            case 23: {
                return this.getProvidedComSpecs();
            }
            case 24: {
                if (resolve) {
                    return this.getProvidedInterface();
                }
                return this.basicGetProvidedInterface();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.gSetProvidedInterface((GPortInterface)newValue);
                return;
            }
            case 23: {
                this.getProvidedComSpecs().clear();
                this.getProvidedComSpecs().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.setProvidedInterface((PortInterface)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.gSetProvidedInterface(null);
                return;
            }
            case 23: {
                this.getProvidedComSpecs().clear();
                return;
            }
            case 24: {
                this.setProvidedInterface(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.gGetProvidedInterface() != null;
            }
            case 23: {
                return this.providedComSpecs != null && !this.providedComSpecs.isEmpty();
            }
            case 24: {
                return this.providedInterface != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GPPortPrototype.class) {
            switch (derivedFeatureID) {
                case 22: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GPPortPrototype.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 22;
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

