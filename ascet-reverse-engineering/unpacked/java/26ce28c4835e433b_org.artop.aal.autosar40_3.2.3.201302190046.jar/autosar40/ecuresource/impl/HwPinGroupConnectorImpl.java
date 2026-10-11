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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.ecuresource.impl;

import autosar40.ecuresource.EcuresourcePackage;
import autosar40.ecuresource.HwElementConnector;
import autosar40.ecuresource.HwPinConnector;
import autosar40.ecuresource.HwPinGroup;
import autosar40.ecuresource.HwPinGroupConnector;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.DescribableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
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
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class HwPinGroupConnectorImpl
extends DescribableImpl
implements HwPinGroupConnector,
IReferringClass {
    protected EList<HwPinConnector> hwPinConnections;
    protected EList<HwPinGroup> hwPinGroups;
    protected VariationPoint variationPoint;

    protected HwPinGroupConnectorImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.HW_PIN_GROUP_CONNECTOR;
    }

    @Override
    public HwElementConnector getHwElementConnector() {
        if (this.eContainerFeatureID() != 6) {
            return null;
        }
        return (HwElementConnector)this.eContainer();
    }

    public NotificationChain basicSetHwElementConnector(HwElementConnector newHwElementConnector, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newHwElementConnector, 6, msgs);
        return msgs;
    }

    @Override
    public void setHwElementConnector(HwElementConnector newHwElementConnector) {
        if (newHwElementConnector != this.eInternalContainer() || this.eContainerFeatureID() != 6 && newHwElementConnector != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newHwElementConnector)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newHwElementConnector != null) {
                msgs = ((InternalEObject)newHwElementConnector).eInverseAdd((InternalEObject)this, 8, HwElementConnector.class, msgs);
            }
            if ((msgs = this.basicSetHwElementConnector(newHwElementConnector, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newHwElementConnector, (Object)newHwElementConnector));
        }
    }

    @Override
    public EList<HwPinConnector> getHwPinConnections() {
        if (this.hwPinConnections == null) {
            this.hwPinConnections = new EObjectContainmentEList(HwPinConnector.class, (InternalEObject)this, 7);
        }
        return this.hwPinConnections;
    }

    @Override
    public EList<HwPinGroup> getHwPinGroups() {
        if (this.hwPinGroups == null) {
            this.hwPinGroups = new EObjectResolvingReferringEList(HwPinGroup.class, (InternalEObject)this, 8);
        }
        return this.hwPinGroups;
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

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetHwElementConnector((HwElementConnector)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetHwElementConnector(null, msgs);
            }
            case 7: {
                return ((InternalEList)this.getHwPinConnections()).basicRemove((Object)otherEnd, msgs);
            }
            case 9: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 6: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 8, HwElementConnector.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getHwElementConnector();
            }
            case 7: {
                return this.getHwPinConnections();
            }
            case 8: {
                return this.getHwPinGroups();
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
            case 6: {
                this.setHwElementConnector((HwElementConnector)newValue);
                return;
            }
            case 7: {
                this.getHwPinConnections().clear();
                this.getHwPinConnections().addAll((Collection)newValue);
                return;
            }
            case 8: {
                this.getHwPinGroups().clear();
                this.getHwPinGroups().addAll((Collection)newValue);
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
            case 6: {
                this.setHwElementConnector(null);
                return;
            }
            case 7: {
                this.getHwPinConnections().clear();
                return;
            }
            case 8: {
                this.getHwPinGroups().clear();
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
            case 6: {
                return this.getHwElementConnector() != null;
            }
            case 7: {
                return this.hwPinConnections != null && !this.hwPinConnections.isEmpty();
            }
            case 8: {
                return this.hwPinGroups != null && !this.hwPinGroups.isEmpty();
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
}

