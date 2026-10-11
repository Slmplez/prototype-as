/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
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
package autosar40.system.pncmapping.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.SystemMapping;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPduGroup;
import autosar40.system.instancerefs.PortGroupInSystemInstanceRef;
import autosar40.system.pncmapping.PncMapping;
import autosar40.system.pncmapping.PncmappingPackage;
import java.util.Collection;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
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
extends ARObjectImpl
implements PncMapping,
IReferringClass {
    protected EList<ISignalIPduGroup> pncGroups;
    protected static final PositiveIntegerDatatype PNC_IDENTIFIER_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype pncIdentifier = PNC_IDENTIFIER_EDEFAULT.clone();
    protected boolean pncIdentifierESet;
    protected EList<PortGroupInSystemInstanceRef> vfcs;
    protected EList<FrameTriggering> wakeupFrames;
    protected VariationPoint variationPoint;

    protected PncMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PncmappingPackage.Literals.PNC_MAPPING;
    }

    @Override
    public SystemMapping getSystemMapping() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (SystemMapping)this.eContainer();
    }

    public NotificationChain basicSetSystemMapping(SystemMapping newSystemMapping, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSystemMapping, 4, msgs);
        return msgs;
    }

    @Override
    public void setSystemMapping(SystemMapping newSystemMapping) {
        if (newSystemMapping != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newSystemMapping != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSystemMapping)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSystemMapping != null) {
                msgs = ((InternalEObject)newSystemMapping).eInverseAdd((InternalEObject)this, 22, SystemMapping.class, msgs);
            }
            if ((msgs = this.basicSetSystemMapping(newSystemMapping, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSystemMapping, (Object)newSystemMapping));
        }
    }

    @Override
    public EList<ISignalIPduGroup> getPncGroups() {
        if (this.pncGroups == null) {
            this.pncGroups = new EObjectResolvingReferringEList(ISignalIPduGroup.class, (InternalEObject)this, 5);
        }
        return this.pncGroups;
    }

    @Override
    public Long getPncIdentifier() {
        return (Long)this.pncIdentifier.basicGetValue();
    }

    @Override
    public void setPncIdentifier(Long newPncIdentifier) {
        Long oldPncIdentifier = (Long)this.pncIdentifier.basicGetValue();
        this.pncIdentifier.basicSetValue((Object)newPncIdentifier);
        boolean oldPncIdentifierESet = this.pncIdentifierESet;
        this.pncIdentifierESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldPncIdentifier, (Object)newPncIdentifier, !oldPncIdentifierESet));
        }
    }

    @Override
    public void unsetPncIdentifier() {
        Long oldPncIdentifier = (Long)this.pncIdentifier.basicGetValue();
        boolean oldPncIdentifierESet = this.pncIdentifierESet;
        this.pncIdentifier = PNC_IDENTIFIER_EDEFAULT.clone();
        this.pncIdentifierESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldPncIdentifier, (Object)PNC_IDENTIFIER_EDEFAULT, oldPncIdentifierESet));
        }
    }

    @Override
    public boolean isSetPncIdentifier() {
        return this.pncIdentifierESet;
    }

    @Override
    public EList<PortGroupInSystemInstanceRef> getVfcs() {
        if (this.vfcs == null) {
            this.vfcs = new EObjectContainmentWithInverseEList(PortGroupInSystemInstanceRef.class, (InternalEObject)this, 7, 4);
        }
        return this.vfcs;
    }

    @Override
    public EList<FrameTriggering> getWakeupFrames() {
        if (this.wakeupFrames == null) {
            this.wakeupFrames = new EObjectResolvingReferringEList(FrameTriggering.class, (InternalEObject)this, 8);
        }
        return this.wakeupFrames;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public PositiveIntegerDatatype getPncIdentifierData() {
        return this.pncIdentifier.clone();
    }

    @Override
    public void setPncIdentifierData(PositiveIntegerDatatype newPncIdentifier) {
        this.pncIdentifier.setRadix((int)newPncIdentifier.getRadix());
        this.pncIdentifier.setNoOfDigits((int)newPncIdentifier.getNoOfDigits());
        this.setPncIdentifier(newPncIdentifier.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSystemMapping((SystemMapping)otherEnd, msgs);
            }
            case 7: {
                return ((InternalEList)this.getVfcs()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSystemMapping(null, msgs);
            }
            case 7: {
                return ((InternalEList)this.getVfcs()).basicRemove((Object)otherEnd, msgs);
            }
            case 9: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, SystemMapping.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSystemMapping();
            }
            case 5: {
                return this.getPncGroups();
            }
            case 6: {
                return this.getPncIdentifier();
            }
            case 7: {
                return this.getVfcs();
            }
            case 8: {
                return this.getWakeupFrames();
            }
            case 9: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSystemMapping((SystemMapping)newValue);
                return;
            }
            case 5: {
                this.getPncGroups().clear();
                this.getPncGroups().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setPncIdentifier((Long)newValue);
                return;
            }
            case 7: {
                this.getVfcs().clear();
                this.getVfcs().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.getWakeupFrames().clear();
                this.getWakeupFrames().addAll((Collection)newValue);
                return;
            }
            case 9: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSystemMapping(null);
                return;
            }
            case 5: {
                this.getPncGroups().clear();
                return;
            }
            case 6: {
                this.unsetPncIdentifier();
                return;
            }
            case 7: {
                this.getVfcs().clear();
                return;
            }
            case 8: {
                this.getWakeupFrames().clear();
                return;
            }
            case 9: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getSystemMapping() != null;
            }
            case 5: {
                return this.pncGroups != null && !this.pncGroups.isEmpty();
            }
            case 6: {
                return this.isSetPncIdentifier();
            }
            case 7: {
                return this.vfcs != null && !this.vfcs.isEmpty();
            }
            case 8: {
                return this.wakeupFrames != null && !this.wakeupFrames.isEmpty();
            }
            case 9: {
                return this.variationPoint != null;
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

