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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.nvblockcomponent.impl;

import autosar40.commonstructure.constants.ConstantSpecificationMappingSet;
import autosar40.commonstructure.serviceneeds.NvBlockNeeds;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.NvBlockSwComponentType;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import autosar40.swcomponent.nvblockcomponent.NvBlockDataMapping;
import autosar40.swcomponent.nvblockcomponent.NvBlockDescriptor;
import autosar40.swcomponent.nvblockcomponent.NvblockcomponentPackage;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationDataDefProps;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPortAssignment;
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
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NvBlockDescriptorImpl
extends IdentifiableImpl
implements NvBlockDescriptor,
IReferringClass {
    protected EList<RoleBasedPortAssignment> clientServerPorts;
    protected EList<ConstantSpecificationMappingSet> constantValueMappings;
    protected EList<DataTypeMappingSet> dataTypeMappings;
    protected EList<InstantiationDataDefProps> instantiationDataDefProps;
    protected EList<NvBlockDataMapping> nvBlockDataMappings;
    protected NvBlockNeeds nvBlockNeeds;
    protected VariableDataPrototype ramBlock;
    protected ParameterDataPrototype romBlock;
    protected VariationPoint variationPoint;

    protected NvBlockDescriptorImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return NvblockcomponentPackage.Literals.NV_BLOCK_DESCRIPTOR;
    }

    @Override
    public NvBlockSwComponentType getNvBlockSwComponentType() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (NvBlockSwComponentType)this.eContainer();
    }

    public NotificationChain basicSetNvBlockSwComponentType(NvBlockSwComponentType newNvBlockSwComponentType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newNvBlockSwComponentType, 18, msgs);
        return msgs;
    }

    @Override
    public void setNvBlockSwComponentType(NvBlockSwComponentType newNvBlockSwComponentType) {
        if (newNvBlockSwComponentType != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newNvBlockSwComponentType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newNvBlockSwComponentType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newNvBlockSwComponentType != null) {
                msgs = ((InternalEObject)newNvBlockSwComponentType).eInverseAdd((InternalEObject)this, 28, NvBlockSwComponentType.class, msgs);
            }
            if ((msgs = this.basicSetNvBlockSwComponentType(newNvBlockSwComponentType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newNvBlockSwComponentType, (Object)newNvBlockSwComponentType));
        }
    }

    @Override
    public EList<RoleBasedPortAssignment> getClientServerPorts() {
        if (this.clientServerPorts == null) {
            this.clientServerPorts = new EObjectContainmentEList(RoleBasedPortAssignment.class, (InternalEObject)this, 19);
        }
        return this.clientServerPorts;
    }

    @Override
    public EList<ConstantSpecificationMappingSet> getConstantValueMappings() {
        if (this.constantValueMappings == null) {
            this.constantValueMappings = new EObjectResolvingReferringEList(ConstantSpecificationMappingSet.class, (InternalEObject)this, 20);
        }
        return this.constantValueMappings;
    }

    @Override
    public EList<DataTypeMappingSet> getDataTypeMappings() {
        if (this.dataTypeMappings == null) {
            this.dataTypeMappings = new EObjectResolvingReferringEList(DataTypeMappingSet.class, (InternalEObject)this, 21);
        }
        return this.dataTypeMappings;
    }

    @Override
    public EList<InstantiationDataDefProps> getInstantiationDataDefProps() {
        if (this.instantiationDataDefProps == null) {
            this.instantiationDataDefProps = new EObjectContainmentEList(InstantiationDataDefProps.class, (InternalEObject)this, 22);
        }
        return this.instantiationDataDefProps;
    }

    @Override
    public EList<NvBlockDataMapping> getNvBlockDataMappings() {
        if (this.nvBlockDataMappings == null) {
            this.nvBlockDataMappings = new EObjectContainmentWithInverseEList(NvBlockDataMapping.class, (InternalEObject)this, 23, 4);
        }
        return this.nvBlockDataMappings;
    }

    @Override
    public NvBlockNeeds getNvBlockNeeds() {
        return this.nvBlockNeeds;
    }

    public NotificationChain basicSetNvBlockNeeds(NvBlockNeeds newNvBlockNeeds, NotificationChain msgs) {
        NvBlockNeeds oldNvBlockNeeds = this.nvBlockNeeds;
        this.nvBlockNeeds = newNvBlockNeeds;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldNvBlockNeeds, (Object)newNvBlockNeeds);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setNvBlockNeeds(NvBlockNeeds newNvBlockNeeds) {
        if (newNvBlockNeeds != this.nvBlockNeeds) {
            NotificationChain msgs = null;
            if (this.nvBlockNeeds != null) {
                msgs = ((InternalEObject)this.nvBlockNeeds).eInverseRemove((InternalEObject)this, 18, NvBlockNeeds.class, msgs);
            }
            if (newNvBlockNeeds != null) {
                msgs = ((InternalEObject)newNvBlockNeeds).eInverseAdd((InternalEObject)this, 18, NvBlockNeeds.class, msgs);
            }
            if ((msgs = this.basicSetNvBlockNeeds(newNvBlockNeeds, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newNvBlockNeeds, (Object)newNvBlockNeeds));
        }
    }

    @Override
    public VariableDataPrototype getRamBlock() {
        return this.ramBlock;
    }

    public NotificationChain basicSetRamBlock(VariableDataPrototype newRamBlock, NotificationChain msgs) {
        VariableDataPrototype oldRamBlock = this.ramBlock;
        this.ramBlock = newRamBlock;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldRamBlock, (Object)newRamBlock);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setRamBlock(VariableDataPrototype newRamBlock) {
        if (newRamBlock != this.ramBlock) {
            NotificationChain msgs = null;
            if (this.ramBlock != null) {
                msgs = ((InternalEObject)this.ramBlock).eInverseRemove((InternalEObject)this, -26, null, msgs);
            }
            if (newRamBlock != null) {
                msgs = ((InternalEObject)newRamBlock).eInverseAdd((InternalEObject)this, -26, null, msgs);
            }
            if ((msgs = this.basicSetRamBlock(newRamBlock, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)newRamBlock, (Object)newRamBlock));
        }
    }

    @Override
    public ParameterDataPrototype getRomBlock() {
        return this.romBlock;
    }

    public NotificationChain basicSetRomBlock(ParameterDataPrototype newRomBlock, NotificationChain msgs) {
        ParameterDataPrototype oldRomBlock = this.romBlock;
        this.romBlock = newRomBlock;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldRomBlock, (Object)newRomBlock);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setRomBlock(ParameterDataPrototype newRomBlock) {
        if (newRomBlock != this.romBlock) {
            NotificationChain msgs = null;
            if (this.romBlock != null) {
                msgs = ((InternalEObject)this.romBlock).eInverseRemove((InternalEObject)this, -27, null, msgs);
            }
            if (newRomBlock != null) {
                msgs = ((InternalEObject)newRomBlock).eInverseAdd((InternalEObject)this, -27, null, msgs);
            }
            if ((msgs = this.basicSetRomBlock(newRomBlock, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)newRomBlock, (Object)newRomBlock));
        }
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -28, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -28, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetNvBlockSwComponentType((NvBlockSwComponentType)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getNvBlockDataMappings()).basicAdd((Object)otherEnd, msgs);
            }
            case 24: {
                if (this.nvBlockNeeds != null) {
                    msgs = ((InternalEObject)this.nvBlockNeeds).eInverseRemove((InternalEObject)this, -25, null, msgs);
                }
                return this.basicSetNvBlockNeeds((NvBlockNeeds)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetNvBlockSwComponentType(null, msgs);
            }
            case 19: {
                return ((InternalEList)this.getClientServerPorts()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getInstantiationDataDefProps()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getNvBlockDataMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return this.basicSetNvBlockNeeds(null, msgs);
            }
            case 25: {
                return this.basicSetRamBlock(null, msgs);
            }
            case 26: {
                return this.basicSetRomBlock(null, msgs);
            }
            case 27: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 28, NvBlockSwComponentType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getNvBlockSwComponentType();
            }
            case 19: {
                return this.getClientServerPorts();
            }
            case 20: {
                return this.getConstantValueMappings();
            }
            case 21: {
                return this.getDataTypeMappings();
            }
            case 22: {
                return this.getInstantiationDataDefProps();
            }
            case 23: {
                return this.getNvBlockDataMappings();
            }
            case 24: {
                return this.getNvBlockNeeds();
            }
            case 25: {
                return this.getRamBlock();
            }
            case 26: {
                return this.getRomBlock();
            }
            case 27: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setNvBlockSwComponentType((NvBlockSwComponentType)newValue);
                return;
            }
            case 19: {
                this.getClientServerPorts().clear();
                this.getClientServerPorts().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getConstantValueMappings().clear();
                this.getConstantValueMappings().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getDataTypeMappings().clear();
                this.getDataTypeMappings().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getInstantiationDataDefProps().clear();
                this.getInstantiationDataDefProps().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getNvBlockDataMappings().clear();
                this.getNvBlockDataMappings().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.setNvBlockNeeds((NvBlockNeeds)newValue);
                return;
            }
            case 25: {
                this.setRamBlock((VariableDataPrototype)newValue);
                return;
            }
            case 26: {
                this.setRomBlock((ParameterDataPrototype)newValue);
                return;
            }
            case 27: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setNvBlockSwComponentType(null);
                return;
            }
            case 19: {
                this.getClientServerPorts().clear();
                return;
            }
            case 20: {
                this.getConstantValueMappings().clear();
                return;
            }
            case 21: {
                this.getDataTypeMappings().clear();
                return;
            }
            case 22: {
                this.getInstantiationDataDefProps().clear();
                return;
            }
            case 23: {
                this.getNvBlockDataMappings().clear();
                return;
            }
            case 24: {
                this.setNvBlockNeeds(null);
                return;
            }
            case 25: {
                this.setRamBlock(null);
                return;
            }
            case 26: {
                this.setRomBlock(null);
                return;
            }
            case 27: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getNvBlockSwComponentType() != null;
            }
            case 19: {
                return this.clientServerPorts != null && !this.clientServerPorts.isEmpty();
            }
            case 20: {
                return this.constantValueMappings != null && !this.constantValueMappings.isEmpty();
            }
            case 21: {
                return this.dataTypeMappings != null && !this.dataTypeMappings.isEmpty();
            }
            case 22: {
                return this.instantiationDataDefProps != null && !this.instantiationDataDefProps.isEmpty();
            }
            case 23: {
                return this.nvBlockDataMappings != null && !this.nvBlockDataMappings.isEmpty();
            }
            case 24: {
                return this.nvBlockNeeds != null;
            }
            case 25: {
                return this.ramBlock != null;
            }
            case 26: {
                return this.romBlock != null;
            }
            case 27: {
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

