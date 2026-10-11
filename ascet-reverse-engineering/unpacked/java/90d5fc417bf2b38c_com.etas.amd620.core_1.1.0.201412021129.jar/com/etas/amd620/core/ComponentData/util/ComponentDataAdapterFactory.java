/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentData.util;

import com.etas.amd620.core.ComponentData.ArrayT;
import com.etas.amd620.core.ComponentData.ColorT;
import com.etas.amd620.core.ComponentData.ComplexDataT;
import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.ComponentDataType;
import com.etas.amd620.core.ComponentData.DataEntryT;
import com.etas.amd620.core.ComponentData.DataSetT;
import com.etas.amd620.core.ComponentData.DataVariantT;
import com.etas.amd620.core.ComponentData.DependencyT;
import com.etas.amd620.core.ComponentData.DimensionalDataT;
import com.etas.amd620.core.ComponentData.DimensionalTypeT;
import com.etas.amd620.core.ComponentData.DistributionInfoT;
import com.etas.amd620.core.ComponentData.DocumentRoot;
import com.etas.amd620.core.ComponentData.EnumerationDataT;
import com.etas.amd620.core.ComponentData.FileReferenceT;
import com.etas.amd620.core.ComponentData.FormattedTextT;
import com.etas.amd620.core.ComponentData.GenericDataT;
import com.etas.amd620.core.ComponentData.IconT;
import com.etas.amd620.core.ComponentData.IntervalT;
import com.etas.amd620.core.ComponentData.ItemRefT;
import com.etas.amd620.core.ComponentData.LocalType;
import com.etas.amd620.core.ComponentData.LogicDataT;
import com.etas.amd620.core.ComponentData.MatrixT;
import com.etas.amd620.core.ComponentData.NoteType;
import com.etas.amd620.core.ComponentData.NotesT;
import com.etas.amd620.core.ComponentData.NumericDataT;
import com.etas.amd620.core.ComponentData.OneDType;
import com.etas.amd620.core.ComponentData.OptionT;
import com.etas.amd620.core.ComponentData.ParameterType;
import com.etas.amd620.core.ComponentData.PointT;
import com.etas.amd620.core.ComponentData.ReferenceDataT;
import com.etas.amd620.core.ComponentData.ScalarTypeT;
import com.etas.amd620.core.ComponentData.SizeT;
import com.etas.amd620.core.ComponentData.TimeStampT;
import com.etas.amd620.core.ComponentData.TwoDType;
import com.etas.amd620.core.ComponentData.ViewType;
import com.etas.amd620.core.ComponentData.util.ComponentDataSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ComponentDataAdapterFactory
extends AdapterFactoryImpl {
    protected static ComponentDataPackage modelPackage;
    protected ComponentDataSwitch<Adapter> modelSwitch = new ComponentDataSwitch<Adapter>(){

        @Override
        public Adapter caseArrayT(ArrayT object) {
            return ComponentDataAdapterFactory.this.createArrayTAdapter();
        }

        @Override
        public Adapter caseColorT(ColorT object) {
            return ComponentDataAdapterFactory.this.createColorTAdapter();
        }

        @Override
        public Adapter caseComplexDataT(ComplexDataT object) {
            return ComponentDataAdapterFactory.this.createComplexDataTAdapter();
        }

        @Override
        public Adapter caseComponentDataType(ComponentDataType object) {
            return ComponentDataAdapterFactory.this.createComponentDataTypeAdapter();
        }

        @Override
        public Adapter caseDataEntryT(DataEntryT object) {
            return ComponentDataAdapterFactory.this.createDataEntryTAdapter();
        }

        @Override
        public Adapter caseDataSetT(DataSetT object) {
            return ComponentDataAdapterFactory.this.createDataSetTAdapter();
        }

        @Override
        public Adapter caseDataVariantT(DataVariantT object) {
            return ComponentDataAdapterFactory.this.createDataVariantTAdapter();
        }

        @Override
        public Adapter caseDependencyT(DependencyT object) {
            return ComponentDataAdapterFactory.this.createDependencyTAdapter();
        }

        @Override
        public Adapter caseDimensionalDataT(DimensionalDataT object) {
            return ComponentDataAdapterFactory.this.createDimensionalDataTAdapter();
        }

        @Override
        public Adapter caseDimensionalTypeT(DimensionalTypeT object) {
            return ComponentDataAdapterFactory.this.createDimensionalTypeTAdapter();
        }

        @Override
        public Adapter caseDistributionInfoT(DistributionInfoT object) {
            return ComponentDataAdapterFactory.this.createDistributionInfoTAdapter();
        }

        @Override
        public Adapter caseDocumentRoot(DocumentRoot object) {
            return ComponentDataAdapterFactory.this.createDocumentRootAdapter();
        }

        @Override
        public Adapter caseEnumerationDataT(EnumerationDataT object) {
            return ComponentDataAdapterFactory.this.createEnumerationDataTAdapter();
        }

        @Override
        public Adapter caseFileReferenceT(FileReferenceT object) {
            return ComponentDataAdapterFactory.this.createFileReferenceTAdapter();
        }

        @Override
        public Adapter caseFormattedTextT(FormattedTextT object) {
            return ComponentDataAdapterFactory.this.createFormattedTextTAdapter();
        }

        @Override
        public Adapter caseGenericDataT(GenericDataT object) {
            return ComponentDataAdapterFactory.this.createGenericDataTAdapter();
        }

        @Override
        public Adapter caseIconT(IconT object) {
            return ComponentDataAdapterFactory.this.createIconTAdapter();
        }

        @Override
        public Adapter caseIntervalT(IntervalT object) {
            return ComponentDataAdapterFactory.this.createIntervalTAdapter();
        }

        @Override
        public Adapter caseItemRefT(ItemRefT object) {
            return ComponentDataAdapterFactory.this.createItemRefTAdapter();
        }

        @Override
        public Adapter caseLocalType(LocalType object) {
            return ComponentDataAdapterFactory.this.createLocalTypeAdapter();
        }

        @Override
        public Adapter caseLogicDataT(LogicDataT object) {
            return ComponentDataAdapterFactory.this.createLogicDataTAdapter();
        }

        @Override
        public Adapter caseMatrixT(MatrixT object) {
            return ComponentDataAdapterFactory.this.createMatrixTAdapter();
        }

        @Override
        public Adapter caseNotesT(NotesT object) {
            return ComponentDataAdapterFactory.this.createNotesTAdapter();
        }

        @Override
        public Adapter caseNoteType(NoteType object) {
            return ComponentDataAdapterFactory.this.createNoteTypeAdapter();
        }

        @Override
        public Adapter caseNumericDataT(NumericDataT object) {
            return ComponentDataAdapterFactory.this.createNumericDataTAdapter();
        }

        @Override
        public Adapter caseOneDType(OneDType object) {
            return ComponentDataAdapterFactory.this.createOneDTypeAdapter();
        }

        @Override
        public Adapter caseOptionT(OptionT object) {
            return ComponentDataAdapterFactory.this.createOptionTAdapter();
        }

        @Override
        public Adapter caseParameterType(ParameterType object) {
            return ComponentDataAdapterFactory.this.createParameterTypeAdapter();
        }

        @Override
        public Adapter casePointT(PointT object) {
            return ComponentDataAdapterFactory.this.createPointTAdapter();
        }

        @Override
        public Adapter caseReferenceDataT(ReferenceDataT object) {
            return ComponentDataAdapterFactory.this.createReferenceDataTAdapter();
        }

        @Override
        public Adapter caseScalarTypeT(ScalarTypeT object) {
            return ComponentDataAdapterFactory.this.createScalarTypeTAdapter();
        }

        @Override
        public Adapter caseSizeT(SizeT object) {
            return ComponentDataAdapterFactory.this.createSizeTAdapter();
        }

        @Override
        public Adapter caseTimeStampT(TimeStampT object) {
            return ComponentDataAdapterFactory.this.createTimeStampTAdapter();
        }

        @Override
        public Adapter caseTwoDType(TwoDType object) {
            return ComponentDataAdapterFactory.this.createTwoDTypeAdapter();
        }

        @Override
        public Adapter caseViewType(ViewType object) {
            return ComponentDataAdapterFactory.this.createViewTypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ComponentDataAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ComponentDataAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ComponentDataPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return (Adapter)this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createArrayTAdapter() {
        return null;
    }

    public Adapter createColorTAdapter() {
        return null;
    }

    public Adapter createComplexDataTAdapter() {
        return null;
    }

    public Adapter createComponentDataTypeAdapter() {
        return null;
    }

    public Adapter createDataEntryTAdapter() {
        return null;
    }

    public Adapter createDataSetTAdapter() {
        return null;
    }

    public Adapter createDataVariantTAdapter() {
        return null;
    }

    public Adapter createDependencyTAdapter() {
        return null;
    }

    public Adapter createDimensionalDataTAdapter() {
        return null;
    }

    public Adapter createDimensionalTypeTAdapter() {
        return null;
    }

    public Adapter createDistributionInfoTAdapter() {
        return null;
    }

    public Adapter createDocumentRootAdapter() {
        return null;
    }

    public Adapter createEnumerationDataTAdapter() {
        return null;
    }

    public Adapter createFileReferenceTAdapter() {
        return null;
    }

    public Adapter createFormattedTextTAdapter() {
        return null;
    }

    public Adapter createGenericDataTAdapter() {
        return null;
    }

    public Adapter createIconTAdapter() {
        return null;
    }

    public Adapter createIntervalTAdapter() {
        return null;
    }

    public Adapter createItemRefTAdapter() {
        return null;
    }

    public Adapter createLocalTypeAdapter() {
        return null;
    }

    public Adapter createLogicDataTAdapter() {
        return null;
    }

    public Adapter createMatrixTAdapter() {
        return null;
    }

    public Adapter createNotesTAdapter() {
        return null;
    }

    public Adapter createNoteTypeAdapter() {
        return null;
    }

    public Adapter createNumericDataTAdapter() {
        return null;
    }

    public Adapter createOneDTypeAdapter() {
        return null;
    }

    public Adapter createOptionTAdapter() {
        return null;
    }

    public Adapter createParameterTypeAdapter() {
        return null;
    }

    public Adapter createPointTAdapter() {
        return null;
    }

    public Adapter createReferenceDataTAdapter() {
        return null;
    }

    public Adapter createScalarTypeTAdapter() {
        return null;
    }

    public Adapter createSizeTAdapter() {
        return null;
    }

    public Adapter createTimeStampTAdapter() {
        return null;
    }

    public Adapter createTwoDTypeAdapter() {
        return null;
    }

    public Adapter createViewTypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

