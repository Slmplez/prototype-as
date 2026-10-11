/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.commons.lang.StringUtils
 */
package com.etas.amd.core.component;

import com.etas.amd620.core.ComponentData.ComplexDataT;
import com.etas.amd620.core.ComponentData.ComponentDataFactory;
import com.etas.amd620.core.ComponentData.ComponentDataType;
import com.etas.amd620.core.ComponentData.DataEntryT;
import com.etas.amd620.core.ComponentData.DataSetT;
import com.etas.amd620.core.ComponentData.DataVariantT;
import com.etas.amd620.core.ComponentData.DimensionalTypeT;
import com.etas.amd620.core.ComponentData.DocumentRoot;
import com.etas.amd620.core.ComponentData.ScalarTypeT;
import org.apache.commons.lang.StringUtils;

public class AmdDataFragment {
    public static final String DEFAULT_DATASET_NAME = "Data";
    private ComponentDataType compData = ComponentDataFactory.eINSTANCE.createComponentDataType();

    public AmdDataFragment(String name) {
        this.compData.setToolVersion("V6.2.0");
        this.compData.setSchemaVersion("6.2.0.0");
        this.createDataSet(name, true);
        this.createDataSet(DEFAULT_DATASET_NAME);
    }

    public DocumentRoot getDocumentRoot() {
        DocumentRoot docRoot = ComponentDataFactory.eINSTANCE.createDocumentRoot();
        docRoot.setComponentData(this.compData);
        return docRoot;
    }

    public void addScalarEntry2DataSet(String dataSetName, String elemName, ScalarTypeT scalarValue) {
        DataSetT dataSet = this.getDataSet(dataSetName);
        if (dataSet == null) {
            dataSet = this.createDataSet(dataSetName);
        }
        DataVariantT dataVariant = ComponentDataFactory.eINSTANCE.createDataVariantT();
        dataVariant.setName("default");
        dataVariant.setScalarType(scalarValue);
        DataEntryT dsEntry = ComponentDataFactory.eINSTANCE.createDataEntryT();
        dsEntry.setElementName(elemName);
        dsEntry.setDataVariant(dataVariant);
        dataSet.getDataEntry().add((Object)dsEntry);
    }

    public void addDimEntry2DataSet(String dataSetName, String elemName, DimensionalTypeT dim) {
        DataSetT dataSet = this.getDataSet(dataSetName);
        if (dataSet == null) {
            dataSet = this.createDataSet(dataSetName);
        }
        DataVariantT dataVariant = ComponentDataFactory.eINSTANCE.createDataVariantT();
        dataVariant.setName("default");
        dataVariant.setDimensionalType(dim);
        DataEntryT dsEntry = ComponentDataFactory.eINSTANCE.createDataEntryT();
        dsEntry.setElementName(elemName);
        dsEntry.setDataVariant(dataVariant);
        dataSet.getDataEntry().add((Object)dsEntry);
    }

    public void addCompisiteEntry2DataSet(String dataSetName, String elemName, ComplexDataT compValue) {
        DataSetT dataSet = this.getDataSet(dataSetName);
        if (dataSet == null) {
            dataSet = this.createDataSet(dataSetName);
        }
        DataVariantT dataVariant = ComponentDataFactory.eINSTANCE.createDataVariantT();
        dataVariant.setName("default");
        dataVariant.setComplexType(compValue);
        DataEntryT dsEntry = ComponentDataFactory.eINSTANCE.createDataEntryT();
        dsEntry.setElementName(elemName);
        dsEntry.setDataVariant(dataVariant);
        dataSet.getDataEntry().add((Object)dsEntry);
    }

    private DataSetT createDataSet(String dataSetName) {
        return this.createDataSet(dataSetName, false);
    }

    private DataSetT createDataSet(String dataSetName, boolean classConfigForDataSet) {
        DataSetT set = ComponentDataFactory.eINSTANCE.createDataSetT();
        set.setName(dataSetName);
        set.setDefault(false);
        set.setClassConfig(classConfigForDataSet);
        this.compData.getDataSet().add((Object)set);
        return set;
    }

    private DataSetT getDataSet(String dataSetName) {
        for (DataSetT ds : this.compData.getDataSet()) {
            if (!StringUtils.equals((String)ds.getName(), (String)dataSetName)) continue;
            return ds;
        }
        return null;
    }
}

