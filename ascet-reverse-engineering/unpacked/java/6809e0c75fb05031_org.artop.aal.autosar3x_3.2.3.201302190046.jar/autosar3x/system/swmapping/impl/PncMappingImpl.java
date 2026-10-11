/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.system.swmapping.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.system.SystemMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduGroup;
import autosar3x.system.swmapping.PncMapping;
import autosar3x.system.swmapping.SwmappingPackage;
import autosar3x.system.swmapping.instanceref.PncMappingVfc;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PncMappingImpl
extends IdentifiableImpl
implements PncMapping,
IReferringClass {
    protected EList<IPduGroup> pncGroups;
    protected static final Integer PNC_IDENTIFIER_EDEFAULT = new Integer(0);
    protected Integer pncIdentifier = PNC_IDENTIFIER_EDEFAULT;
    protected boolean pncIdentifierESet;
    protected EList<PncMappingVfc> vfcs;
    protected EList<FrameTriggering> wakeupFrames;

    protected PncMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwmappingPackage.Literals.PNC_MAPPING;
    }

    @Override
    public SystemMapping getSystemMapping() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (SystemMapping)this.eContainer();
    }

    public NotificationChain basicSetSystemMapping(SystemMapping newSystemMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSystemMapping, 17, msgs);
        return msgs;
    }

    @Override
    public void setSystemMapping(SystemMapping newSystemMapping) {
        if (newSystemMapping != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newSystemMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSystemMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSystemMapping != null) {
                msgs = ((InternalEObject)newSystemMapping).eInverseAdd((InternalEObject)this, 21, SystemMapping.class, msgs);
            }
            if ((msgs = this.basicSetSystemMapping(newSystemMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newSystemMapping, (Object)newSystemMapping));
        }
    }

    @Override
    public EList<IPduGroup> getPncGroups() {
        if (this.pncGroups == null) {
            this.pncGroups = new EObjectResolvingReferringEList(IPduGroup.class, (InternalEObject)this, 18);
        }
        return this.pncGroups;
    }

    @Override
    public Integer getPncIdentifier() {
        return this.pncIdentifier;
    }

    @Override
    public void setPncIdentifier(Integer newPncIdentifier) {
        Integer oldPncIdentifier = this.pncIdentifier;
        this.pncIdentifier = newPncIdentifier;
        boolean oldPncIdentifierESet = this.pncIdentifierESet;
        this.pncIdentifierESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldPncIdentifier, (Object)this.pncIdentifier, !oldPncIdentifierESet));
        }
    }

    @Override
    public void unsetPncIdentifier() {
        Integer oldPncIdentifier = this.pncIdentifier;
        boolean oldPncIdentifierESet = this.pncIdentifierESet;
        this.pncIdentifier = PNC_IDENTIFIER_EDEFAULT;
        this.pncIdentifierESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldPncIdentifier, (Object)PNC_IDENTIFIER_EDEFAULT, oldPncIdentifierESet));
        }
    }

    @Override
    public boolean isSetPncIdentifier() {
        return this.pncIdentifierESet;
    }

    @Override
    public EList<PncMappingVfc> getVfcs() {
        if (this.vfcs == null) {
            this.vfcs = new EObjectContainmentWithInverseEList(PncMappingVfc.class, (InternalEObject)this, 20, 4);
        }
        return this.vfcs;
    }

    @Override
    public EList<FrameTriggering> getWakeupFrames() {
        if (this.wakeupFrames == null) {
            this.wakeupFrames = new EObjectResolvingReferringEList(FrameTriggering.class, (InternalEObject)this, 21);
        }
        return this.wakeupFrames;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSystemMapping((SystemMapping)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getVfcs()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetSystemMapping(null, msgs);
            }
            case 20: {
                return ((InternalEList)this.getVfcs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, SystemMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getSystemMapping();
            }
            case 18: {
                return this.getPncGroups();
            }
            case 19: {
                return this.getPncIdentifier();
            }
            case 20: {
                return this.getVfcs();
            }
            case 21: {
                return this.getWakeupFrames();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setSystemMapping((SystemMapping)newValue);
                return;
            }
            case 18: {
                this.getPncGroups().clear();
                this.getPncGroups().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.setPncIdentifier((Integer)newValue);
                return;
            }
            case 20: {
                this.getVfcs().clear();
                this.getVfcs().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getWakeupFrames().clear();
                this.getWakeupFrames().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setSystemMapping(null);
                return;
            }
            case 18: {
                this.getPncGroups().clear();
                return;
            }
            case 19: {
                this.unsetPncIdentifier();
                return;
            }
            case 20: {
                this.getVfcs().clear();
                return;
            }
            case 21: {
                this.getWakeupFrames().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getSystemMapping() != null;
            }
            case 18: {
                return this.pncGroups != null && !this.pncGroups.isEmpty();
            }
            case 19: {
                return this.isSetPncIdentifier();
            }
            case 20: {
                return this.vfcs != null && !this.vfcs.isEmpty();
            }
            case 21: {
                return this.wakeupFrames != null && !this.wakeupFrames.isEmpty();
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
        result.append(" (pncIdentifier: ");
        if (this.pncIdentifierESet) {
            result.append(this.pncIdentifier);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

