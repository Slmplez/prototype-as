/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.swcomponent.nvblockcomponent.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.nvblockcomponent.NvBlockDataMapping;
import autosar40.swcomponent.nvblockcomponent.NvBlockDescriptor;
import autosar40.swcomponent.nvblockcomponent.NvblockcomponentPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class NvBlockDataMappingImpl
extends ARObjectImpl
implements NvBlockDataMapping {
    protected AutosarVariableRef nvRamBlockElement;
    protected AutosarVariableRef readNvData;
    protected AutosarVariableRef writtenNvData;
    protected VariationPoint variationPoint;

    protected NvBlockDataMappingImpl() {
    }

    protected EClass eStaticClass() {
        return NvblockcomponentPackage.Literals.NV_BLOCK_DATA_MAPPING;
    }

    public NvBlockDescriptor getNvBlockDescriptor() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (NvBlockDescriptor)this.eContainer();
    }

    public NotificationChain basicSetNvBlockDescriptor(NvBlockDescriptor newNvBlockDescriptor, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newNvBlockDescriptor, 4, msgs);
        return msgs;
    }

    public void setNvBlockDescriptor(NvBlockDescriptor newNvBlockDescriptor) {
        if (newNvBlockDescriptor != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newNvBlockDescriptor != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newNvBlockDescriptor)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newNvBlockDescriptor != null) {
                msgs = ((InternalEObject)newNvBlockDescriptor).eInverseAdd((InternalEObject)this, 23, NvBlockDescriptor.class, msgs);
            }
            if ((msgs = this.basicSetNvBlockDescriptor(newNvBlockDescriptor, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newNvBlockDescriptor, (Object)newNvBlockDescriptor));
        }
    }

    public AutosarVariableRef getNvRamBlockElement() {
        return this.nvRamBlockElement;
    }

    public NotificationChain basicSetNvRamBlockElement(AutosarVariableRef newNvRamBlockElement, NotificationChain msgs) {
        AutosarVariableRef oldNvRamBlockElement = this.nvRamBlockElement;
        this.nvRamBlockElement = newNvRamBlockElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldNvRamBlockElement, (Object)newNvRamBlockElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setNvRamBlockElement(AutosarVariableRef newNvRamBlockElement) {
        if (newNvRamBlockElement != this.nvRamBlockElement) {
            NotificationChain msgs = null;
            if (this.nvRamBlockElement != null) {
                msgs = ((InternalEObject)this.nvRamBlockElement).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newNvRamBlockElement != null) {
                msgs = ((InternalEObject)newNvRamBlockElement).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetNvRamBlockElement(newNvRamBlockElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newNvRamBlockElement, (Object)newNvRamBlockElement));
        }
    }

    public AutosarVariableRef getReadNvData() {
        return this.readNvData;
    }

    public NotificationChain basicSetReadNvData(AutosarVariableRef newReadNvData, NotificationChain msgs) {
        AutosarVariableRef oldReadNvData = this.readNvData;
        this.readNvData = newReadNvData;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldReadNvData, (Object)newReadNvData);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setReadNvData(AutosarVariableRef newReadNvData) {
        if (newReadNvData != this.readNvData) {
            NotificationChain msgs = null;
            if (this.readNvData != null) {
                msgs = ((InternalEObject)this.readNvData).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newReadNvData != null) {
                msgs = ((InternalEObject)newReadNvData).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetReadNvData(newReadNvData, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newReadNvData, (Object)newReadNvData));
        }
    }

    public AutosarVariableRef getWrittenNvData() {
        return this.writtenNvData;
    }

    public NotificationChain basicSetWrittenNvData(AutosarVariableRef newWrittenNvData, NotificationChain msgs) {
        AutosarVariableRef oldWrittenNvData = this.writtenNvData;
        this.writtenNvData = newWrittenNvData;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldWrittenNvData, (Object)newWrittenNvData);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setWrittenNvData(AutosarVariableRef newWrittenNvData) {
        if (newWrittenNvData != this.writtenNvData) {
            NotificationChain msgs = null;
            if (this.writtenNvData != null) {
                msgs = ((InternalEObject)this.writtenNvData).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newWrittenNvData != null) {
                msgs = ((InternalEObject)newWrittenNvData).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetWrittenNvData(newWrittenNvData, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newWrittenNvData, (Object)newWrittenNvData));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetNvBlockDescriptor((NvBlockDescriptor)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetNvBlockDescriptor(null, msgs);
            }
            case 5: {
                return this.basicSetNvRamBlockElement(null, msgs);
            }
            case 6: {
                return this.basicSetReadNvData(null, msgs);
            }
            case 7: {
                return this.basicSetWrittenNvData(null, msgs);
            }
            case 8: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, NvBlockDescriptor.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getNvBlockDescriptor();
            }
            case 5: {
                return this.getNvRamBlockElement();
            }
            case 6: {
                return this.getReadNvData();
            }
            case 7: {
                return this.getWrittenNvData();
            }
            case 8: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setNvBlockDescriptor((NvBlockDescriptor)newValue);
                return;
            }
            case 5: {
                this.setNvRamBlockElement((AutosarVariableRef)newValue);
                return;
            }
            case 6: {
                this.setReadNvData((AutosarVariableRef)newValue);
                return;
            }
            case 7: {
                this.setWrittenNvData((AutosarVariableRef)newValue);
                return;
            }
            case 8: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setNvBlockDescriptor(null);
                return;
            }
            case 5: {
                this.setNvRamBlockElement(null);
                return;
            }
            case 6: {
                this.setReadNvData(null);
                return;
            }
            case 7: {
                this.setWrittenNvData(null);
                return;
            }
            case 8: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getNvBlockDescriptor() != null;
            }
            case 5: {
                return this.nvRamBlockElement != null;
            }
            case 6: {
                return this.readNvData != null;
            }
            case 7: {
                return this.writtenNvData != null;
            }
            case 8: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

