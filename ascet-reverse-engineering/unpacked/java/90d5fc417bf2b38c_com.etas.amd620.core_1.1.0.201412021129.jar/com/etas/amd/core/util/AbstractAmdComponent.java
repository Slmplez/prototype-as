/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.util;

import com.etas.amd.core.IArrayElementAttributes;
import com.etas.amd.core.IBaseElementAttributes;
import com.etas.amd.core.IElementAttributes;
import com.etas.amd.core.component.AmdDataFragment;
import com.etas.amd.core.component.AmdImplementationFragment;
import com.etas.amd.core.component.AmdSpecificationFragment;
import com.etas.amd.core.serializer.ComponentDataSerializer;
import com.etas.amd.core.serializer.ComponentImplSerializer;
import com.etas.amd.core.serializer.ComponentMainSerializer;
import com.etas.amd.core.serializer.ComponentSpecificationSerializer;
import com.etas.amd.core.type.AbstractAmdScalarType;
import com.etas.amd.core.type.AbstractAmdType;
import com.etas.amd.core.type.AmdArrayType;
import com.etas.amd.core.type.AmdEnumType;
import com.etas.amd.core.type.AmdLogicType;
import com.etas.amd.core.type.AmdNumericType;
import com.etas.amd.core.type.AmdRecordType;
import com.etas.amd.core.util.AbstractAmdItem;
import com.etas.amd.core.util.AmdFactory;
import com.etas.amd620.core.ComponentData.ComplexDataT;
import com.etas.amd620.core.ComponentData.DimensionalTypeT;
import com.etas.amd620.core.ComponentData.ScalarTypeT;
import com.etas.amd620.core.ComponentImplementation.ImplementationEntryT;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;
import com.etas.amd620.core.ComponentMain.ElementT;
import java.io.File;
import java.io.IOException;

public abstract class AbstractAmdComponent
extends AbstractAmdItem {
    private AmdImplementationFragment amdImplementationFragment;
    private AmdSpecificationFragment amdSpecificationFragment;
    private final AmdDataFragment amdDataFragment;

    public AbstractAmdComponent(String name) {
        this.amdImplementationFragment = new AmdImplementationFragment(name);
        this.amdDataFragment = new AmdDataFragment(name);
        this.amdSpecificationFragment = new AmdSpecificationFragment();
    }

    public void addElement(ElementT child) {
        this.getAmdMainFragment().addElement(child);
    }

    @Override
    public void save(String rootPath) {
        File folderPath = this.getFolderPath(rootPath);
        String fileName = this.getAmdMainFragment().getName();
        try {
            ComponentMainSerializer.save(folderPath, this.getAmdMainFragment().getDocumentRoot(), fileName);
            ComponentDataSerializer.save(folderPath, this.amdDataFragment.getDocumentRoot(), fileName);
            ComponentImplSerializer.save(folderPath, this.amdImplementationFragment.getDocumentRoot(), fileName);
            ComponentSpecificationSerializer.save(folderPath, this.getAmdSpecificationFragment().getDocumentRoot(), fileName);
        }
        catch (IOException ex) {
            throw new IllegalStateException(String.format("Problem occur during writing the file %s in %s", fileName, folderPath), ex);
        }
    }

    public void setImplementationForMethod(String name, String symbol) {
        this.amdImplementationFragment.setImplementationForMethod(name, symbol);
    }

    public void setServiceFlag(boolean isService) {
        this.amdImplementationFragment.setServiceFlag(isService);
    }

    @Override
    public void setPackageName(String name) {
        this.amdImplementationFragment.setPackageName(name);
    }

    public void addDimEntry2DataSet(String dataSetName, String elemName, DimensionalTypeT dim) {
        this.amdDataFragment.addDimEntry2DataSet(dataSetName, elemName, dim);
    }

    public void addScalarEntry2DataSet(String dataSetName, String elemName, ScalarTypeT scalarValue) {
        this.amdDataFragment.addScalarEntry2DataSet(dataSetName, elemName, scalarValue);
    }

    public void addCompisiteEntry2DataSet(String dataSetName, String elemName, ComplexDataT compValue) {
        this.amdDataFragment.addCompisiteEntry2DataSet(dataSetName, elemName, compValue);
    }

    public void addImplementation(ImplementationEntryT implEntry) {
        this.amdImplementationFragment.addImplementation(implEntry);
    }

    public AmdSpecificationFragment getAmdSpecificationFragment() {
        return this.amdSpecificationFragment;
    }

    public ElementAttributesT setElementAttributes(ElementT elem, IElementAttributes dataElement) {
        AbstractAmdType amdType = AbstractAmdComponent.createElementType(dataElement);
        if (amdType != null) {
            ElementAttributesT modelAttributes = amdType.createModelAttributes();
            elem.setElementAttributes(modelAttributes);
            ImplementationEntryT implAttributes = amdType.createImplAttributes(elem.getName());
            AmdFactory.setMemClass(implAttributes, dataElement.getAddrMethod());
            AmdFactory.setPolicy(implAttributes, dataElement.getImplPolicy());
            this.addImplementation(implAttributes);
            return modelAttributes;
        }
        return null;
    }

    public static AbstractAmdType createElementType(IElementAttributes element) {
        if (element.isBooleanType()) {
            return new AmdLogicType();
        }
        if (element.isEnumType()) {
            return new AmdEnumType(element.getTypeRef());
        }
        if (element.isNumericType()) {
            return AbstractAmdComponent.createScalarType(element);
        }
        if (element.isRecordType()) {
            return new AmdRecordType(element.getTypeRef());
        }
        if (element.isArrayType()) {
            String arraySize = element.getArraySize();
            return AbstractAmdComponent.createAmdArrayType(element, element.getArrayElement(), arraySize);
        }
        throw new IllegalStateException(String.format("element %s has an unsuported type %s", element.getName(), element.getTypeRef()));
    }

    private static AbstractAmdType createArrayElementType(IArrayElementAttributes element) {
        if (element.isBooleanType()) {
            return new AmdLogicType();
        }
        if (element.isNumericType()) {
            return AbstractAmdComponent.createScalarType(element);
        }
        throw new IllegalStateException(String.format("array has an unsuported base type %s", element.getTypeRef()));
    }

    private static AmdArrayType createAmdArrayType(IElementAttributes type, IArrayElementAttributes arrayElemType, String maxNumberOfElements) {
        Integer size = Integer.parseInt(maxNumberOfElements);
        AbstractAmdType arrayElementAttributes = AbstractAmdComponent.createArrayElementType(arrayElemType);
        if (arrayElementAttributes instanceof AbstractAmdScalarType) {
            return new AmdArrayType(size, (AbstractAmdScalarType)arrayElementAttributes);
        }
        return new AmdArrayType(1, AmdNumericType.createRealSingleType());
    }

    private static AbstractAmdType createScalarType(IBaseElementAttributes element) {
        return element.getAmdImplementationType();
    }
}

