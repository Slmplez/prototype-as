/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
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
package autosar40.commonstructure.swcbswmapping.impl;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.commonstructure.swcbswmapping.SwcBswMapping;
import autosar40.commonstructure.swcbswmapping.SwcBswRunnableMapping;
import autosar40.commonstructure.swcbswmapping.SwcBswSynchronizedModeGroupPrototype;
import autosar40.commonstructure.swcbswmapping.SwcBswSynchronizedTrigger;
import autosar40.commonstructure.swcbswmapping.SwcbswmappingPackage;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
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
public class SwcBswMappingImpl
extends ARElementImpl
implements SwcBswMapping,
IReferringClass {
    protected AtpClassifier atpClassifier;
    protected BswInternalBehavior bswBehavior;
    protected EList<SwcBswRunnableMapping> runnableMappings;
    protected SwcInternalBehavior swcBehavior;
    protected EList<SwcBswSynchronizedModeGroupPrototype> synchronizedModeGroups;
    protected EList<SwcBswSynchronizedTrigger> synchronizedTriggers;

    protected SwcBswMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwcbswmappingPackage.Literals.SWC_BSW_MAPPING;
    }

    @Override
    public AtpClassifier getAtpClassifier() {
        if (this.atpClassifier != null && this.atpClassifier.eIsProxy()) {
            InternalEObject oldAtpClassifier = (InternalEObject)this.atpClassifier;
            this.atpClassifier = (AtpClassifier)this.eResolveProxy(oldAtpClassifier);
            if (this.atpClassifier != oldAtpClassifier && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldAtpClassifier, (Object)this.atpClassifier));
            }
        }
        return this.atpClassifier;
    }

    public AtpClassifier basicGetAtpClassifier() {
        return this.atpClassifier;
    }

    @Override
    public void setAtpClassifier(AtpClassifier newAtpClassifier) {
        AtpClassifier oldAtpClassifier = this.atpClassifier;
        this.atpClassifier = newAtpClassifier;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldAtpClassifier, (Object)this.atpClassifier));
        }
    }

    @Override
    public BswInternalBehavior getBswBehavior() {
        if (this.bswBehavior != null && this.bswBehavior.eIsProxy()) {
            InternalEObject oldBswBehavior = (InternalEObject)this.bswBehavior;
            this.bswBehavior = (BswInternalBehavior)this.eResolveProxy(oldBswBehavior);
            if (this.bswBehavior != oldBswBehavior && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldBswBehavior, (Object)this.bswBehavior));
            }
        }
        return this.bswBehavior;
    }

    public BswInternalBehavior basicGetBswBehavior() {
        return this.bswBehavior;
    }

    @Override
    public void setBswBehavior(BswInternalBehavior newBswBehavior) {
        BswInternalBehavior oldBswBehavior = this.bswBehavior;
        this.bswBehavior = newBswBehavior;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldBswBehavior, (Object)this.bswBehavior));
        }
    }

    @Override
    public EList<SwcBswRunnableMapping> getRunnableMappings() {
        if (this.runnableMappings == null) {
            this.runnableMappings = new EObjectContainmentWithInverseEList(SwcBswRunnableMapping.class, (InternalEObject)this, 23, 4);
        }
        return this.runnableMappings;
    }

    @Override
    public SwcInternalBehavior getSwcBehavior() {
        if (this.swcBehavior != null && this.swcBehavior.eIsProxy()) {
            InternalEObject oldSwcBehavior = (InternalEObject)this.swcBehavior;
            this.swcBehavior = (SwcInternalBehavior)this.eResolveProxy(oldSwcBehavior);
            if (this.swcBehavior != oldSwcBehavior && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldSwcBehavior, (Object)this.swcBehavior));
            }
        }
        return this.swcBehavior;
    }

    public SwcInternalBehavior basicGetSwcBehavior() {
        return this.swcBehavior;
    }

    @Override
    public void setSwcBehavior(SwcInternalBehavior newSwcBehavior) {
        SwcInternalBehavior oldSwcBehavior = this.swcBehavior;
        this.swcBehavior = newSwcBehavior;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldSwcBehavior, (Object)this.swcBehavior));
        }
    }

    @Override
    public EList<SwcBswSynchronizedModeGroupPrototype> getSynchronizedModeGroups() {
        if (this.synchronizedModeGroups == null) {
            this.synchronizedModeGroups = new EObjectContainmentWithInverseEList(SwcBswSynchronizedModeGroupPrototype.class, (InternalEObject)this, 25, 4);
        }
        return this.synchronizedModeGroups;
    }

    @Override
    public EList<SwcBswSynchronizedTrigger> getSynchronizedTriggers() {
        if (this.synchronizedTriggers == null) {
            this.synchronizedTriggers = new EObjectContainmentWithInverseEList(SwcBswSynchronizedTrigger.class, (InternalEObject)this, 26, 4);
        }
        return this.synchronizedTriggers;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getRunnableMappings()).basicAdd((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getSynchronizedModeGroups()).basicAdd((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getSynchronizedTriggers()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getRunnableMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getSynchronizedModeGroups()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getSynchronizedTriggers()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                if (resolve) {
                    return this.getAtpClassifier();
                }
                return this.basicGetAtpClassifier();
            }
            case 22: {
                if (resolve) {
                    return this.getBswBehavior();
                }
                return this.basicGetBswBehavior();
            }
            case 23: {
                return this.getRunnableMappings();
            }
            case 24: {
                if (resolve) {
                    return this.getSwcBehavior();
                }
                return this.basicGetSwcBehavior();
            }
            case 25: {
                return this.getSynchronizedModeGroups();
            }
            case 26: {
                return this.getSynchronizedTriggers();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setAtpClassifier((AtpClassifier)newValue);
                return;
            }
            case 22: {
                this.setBswBehavior((BswInternalBehavior)newValue);
                return;
            }
            case 23: {
                this.getRunnableMappings().clear();
                this.getRunnableMappings().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.setSwcBehavior((SwcInternalBehavior)newValue);
                return;
            }
            case 25: {
                this.getSynchronizedModeGroups().clear();
                this.getSynchronizedModeGroups().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getSynchronizedTriggers().clear();
                this.getSynchronizedTriggers().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setAtpClassifier(null);
                return;
            }
            case 22: {
                this.setBswBehavior(null);
                return;
            }
            case 23: {
                this.getRunnableMappings().clear();
                return;
            }
            case 24: {
                this.setSwcBehavior(null);
                return;
            }
            case 25: {
                this.getSynchronizedModeGroups().clear();
                return;
            }
            case 26: {
                this.getSynchronizedTriggers().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.atpClassifier != null;
            }
            case 22: {
                return this.bswBehavior != null;
            }
            case 23: {
                return this.runnableMappings != null && !this.runnableMappings.isEmpty();
            }
            case 24: {
                return this.swcBehavior != null;
            }
            case 25: {
                return this.synchronizedModeGroups != null && !this.synchronizedModeGroups.isEmpty();
            }
            case 26: {
                return this.synchronizedTriggers != null && !this.synchronizedTriggers.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == AtpClassifier.class) {
            return -1;
        }
        if (baseClass == AtpFeature.class) {
            switch (derivedFeatureID) {
                case 21: {
                    return 18;
                }
            }
            return -1;
        }
        if (baseClass == AtpStructureElement.class) {
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == AtpClassifier.class) {
            return -1;
        }
        if (baseClass == AtpFeature.class) {
            switch (baseFeatureID) {
                case 18: {
                    return 21;
                }
            }
            return -1;
        }
        if (baseClass == AtpStructureElement.class) {
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

