/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentImplementation.util;

import com.etas.amd620.core.ComponentImplementation.ColorT;
import com.etas.amd620.core.ComponentImplementation.ComplexImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComplexReferenceImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationType;
import com.etas.amd620.core.ComponentImplementation.DimensionalImplementationT;
import com.etas.amd620.core.ComponentImplementation.DimensionalReferenceImplementationT;
import com.etas.amd620.core.ComponentImplementation.DistributionImplementationType;
import com.etas.amd620.core.ComponentImplementation.DocumentRoot;
import com.etas.amd620.core.ComponentImplementation.ElementImplementationT;
import com.etas.amd620.core.ComponentImplementation.ElementImplementationType;
import com.etas.amd620.core.ComponentImplementation.FileReferenceT;
import com.etas.amd620.core.ComponentImplementation.FormattedTextT;
import com.etas.amd620.core.ComponentImplementation.GenericDataT;
import com.etas.amd620.core.ComponentImplementation.IconT;
import com.etas.amd620.core.ComponentImplementation.ImplementationCastImplementationType;
import com.etas.amd620.core.ComponentImplementation.ImplementationEntryT;
import com.etas.amd620.core.ComponentImplementation.ImplementationSetT;
import com.etas.amd620.core.ComponentImplementation.ImplementationSetType;
import com.etas.amd620.core.ComponentImplementation.ImplementationVariantT;
import com.etas.amd620.core.ComponentImplementation.IntervalT;
import com.etas.amd620.core.ComponentImplementation.ItemRefT;
import com.etas.amd620.core.ComponentImplementation.LogicImplementationT;
import com.etas.amd620.core.ComponentImplementation.MethodImplementationT;
import com.etas.amd620.core.ComponentImplementation.NoteType;
import com.etas.amd620.core.ComponentImplementation.NotesT;
import com.etas.amd620.core.ComponentImplementation.NumericImplementationBaseT;
import com.etas.amd620.core.ComponentImplementation.NumericImplementationT;
import com.etas.amd620.core.ComponentImplementation.OneDImplementationType;
import com.etas.amd620.core.ComponentImplementation.OptionT;
import com.etas.amd620.core.ComponentImplementation.PointT;
import com.etas.amd620.core.ComponentImplementation.PrimitiveImplementationT;
import com.etas.amd620.core.ComponentImplementation.ResourceImplementationT;
import com.etas.amd620.core.ComponentImplementation.ResourceImplementationType;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import com.etas.amd620.core.ComponentImplementation.SizeT;
import com.etas.amd620.core.ComponentImplementation.TemplateImplementationT;
import com.etas.amd620.core.ComponentImplementation.TimeStampT;
import com.etas.amd620.core.ComponentImplementation.TwoDImplementationType;
import com.etas.amd620.core.ComponentImplementation.ViewType;
import com.etas.amd620.core.ComponentImplementation.util.ComponentImplementationSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ComponentImplementationAdapterFactory
extends AdapterFactoryImpl {
    protected static ComponentImplementationPackage modelPackage;
    protected ComponentImplementationSwitch<Adapter> modelSwitch = new ComponentImplementationSwitch<Adapter>(){

        @Override
        public Adapter caseColorT(ColorT object) {
            return ComponentImplementationAdapterFactory.this.createColorTAdapter();
        }

        @Override
        public Adapter caseComplexImplementationT(ComplexImplementationT object) {
            return ComponentImplementationAdapterFactory.this.createComplexImplementationTAdapter();
        }

        @Override
        public Adapter caseComplexReferenceImplementationT(ComplexReferenceImplementationT object) {
            return ComponentImplementationAdapterFactory.this.createComplexReferenceImplementationTAdapter();
        }

        @Override
        public Adapter caseComponentImplementationType(ComponentImplementationType object) {
            return ComponentImplementationAdapterFactory.this.createComponentImplementationTypeAdapter();
        }

        @Override
        public Adapter caseDimensionalImplementationT(DimensionalImplementationT object) {
            return ComponentImplementationAdapterFactory.this.createDimensionalImplementationTAdapter();
        }

        @Override
        public Adapter caseDimensionalReferenceImplementationT(DimensionalReferenceImplementationT object) {
            return ComponentImplementationAdapterFactory.this.createDimensionalReferenceImplementationTAdapter();
        }

        @Override
        public Adapter caseDistributionImplementationType(DistributionImplementationType object) {
            return ComponentImplementationAdapterFactory.this.createDistributionImplementationTypeAdapter();
        }

        @Override
        public Adapter caseDocumentRoot(DocumentRoot object) {
            return ComponentImplementationAdapterFactory.this.createDocumentRootAdapter();
        }

        @Override
        public Adapter caseElementImplementationT(ElementImplementationT object) {
            return ComponentImplementationAdapterFactory.this.createElementImplementationTAdapter();
        }

        @Override
        public Adapter caseElementImplementationType(ElementImplementationType object) {
            return ComponentImplementationAdapterFactory.this.createElementImplementationTypeAdapter();
        }

        @Override
        public Adapter caseFileReferenceT(FileReferenceT object) {
            return ComponentImplementationAdapterFactory.this.createFileReferenceTAdapter();
        }

        @Override
        public Adapter caseFormattedTextT(FormattedTextT object) {
            return ComponentImplementationAdapterFactory.this.createFormattedTextTAdapter();
        }

        @Override
        public Adapter caseGenericDataT(GenericDataT object) {
            return ComponentImplementationAdapterFactory.this.createGenericDataTAdapter();
        }

        @Override
        public Adapter caseIconT(IconT object) {
            return ComponentImplementationAdapterFactory.this.createIconTAdapter();
        }

        @Override
        public Adapter caseImplementationCastImplementationType(ImplementationCastImplementationType object) {
            return ComponentImplementationAdapterFactory.this.createImplementationCastImplementationTypeAdapter();
        }

        @Override
        public Adapter caseImplementationEntryT(ImplementationEntryT object) {
            return ComponentImplementationAdapterFactory.this.createImplementationEntryTAdapter();
        }

        @Override
        public Adapter caseImplementationSetT(ImplementationSetT object) {
            return ComponentImplementationAdapterFactory.this.createImplementationSetTAdapter();
        }

        @Override
        public Adapter caseImplementationSetType(ImplementationSetType object) {
            return ComponentImplementationAdapterFactory.this.createImplementationSetTypeAdapter();
        }

        @Override
        public Adapter caseImplementationVariantT(ImplementationVariantT object) {
            return ComponentImplementationAdapterFactory.this.createImplementationVariantTAdapter();
        }

        @Override
        public Adapter caseIntervalT(IntervalT object) {
            return ComponentImplementationAdapterFactory.this.createIntervalTAdapter();
        }

        @Override
        public Adapter caseItemRefT(ItemRefT object) {
            return ComponentImplementationAdapterFactory.this.createItemRefTAdapter();
        }

        @Override
        public Adapter caseLogicImplementationT(LogicImplementationT object) {
            return ComponentImplementationAdapterFactory.this.createLogicImplementationTAdapter();
        }

        @Override
        public Adapter caseMethodImplementationT(MethodImplementationT object) {
            return ComponentImplementationAdapterFactory.this.createMethodImplementationTAdapter();
        }

        @Override
        public Adapter caseNotesT(NotesT object) {
            return ComponentImplementationAdapterFactory.this.createNotesTAdapter();
        }

        @Override
        public Adapter caseNoteType(NoteType object) {
            return ComponentImplementationAdapterFactory.this.createNoteTypeAdapter();
        }

        @Override
        public Adapter caseNumericImplementationBaseT(NumericImplementationBaseT object) {
            return ComponentImplementationAdapterFactory.this.createNumericImplementationBaseTAdapter();
        }

        @Override
        public Adapter caseNumericImplementationT(NumericImplementationT object) {
            return ComponentImplementationAdapterFactory.this.createNumericImplementationTAdapter();
        }

        @Override
        public Adapter caseOneDImplementationType(OneDImplementationType object) {
            return ComponentImplementationAdapterFactory.this.createOneDImplementationTypeAdapter();
        }

        @Override
        public Adapter caseOptionT(OptionT object) {
            return ComponentImplementationAdapterFactory.this.createOptionTAdapter();
        }

        @Override
        public Adapter casePointT(PointT object) {
            return ComponentImplementationAdapterFactory.this.createPointTAdapter();
        }

        @Override
        public Adapter casePrimitiveImplementationT(PrimitiveImplementationT object) {
            return ComponentImplementationAdapterFactory.this.createPrimitiveImplementationTAdapter();
        }

        @Override
        public Adapter caseResourceImplementationT(ResourceImplementationT object) {
            return ComponentImplementationAdapterFactory.this.createResourceImplementationTAdapter();
        }

        @Override
        public Adapter caseResourceImplementationType(ResourceImplementationType object) {
            return ComponentImplementationAdapterFactory.this.createResourceImplementationTypeAdapter();
        }

        @Override
        public Adapter caseScalarImplementationT(ScalarImplementationT object) {
            return ComponentImplementationAdapterFactory.this.createScalarImplementationTAdapter();
        }

        @Override
        public Adapter caseSizeT(SizeT object) {
            return ComponentImplementationAdapterFactory.this.createSizeTAdapter();
        }

        @Override
        public Adapter caseTemplateImplementationT(TemplateImplementationT object) {
            return ComponentImplementationAdapterFactory.this.createTemplateImplementationTAdapter();
        }

        @Override
        public Adapter caseTimeStampT(TimeStampT object) {
            return ComponentImplementationAdapterFactory.this.createTimeStampTAdapter();
        }

        @Override
        public Adapter caseTwoDImplementationType(TwoDImplementationType object) {
            return ComponentImplementationAdapterFactory.this.createTwoDImplementationTypeAdapter();
        }

        @Override
        public Adapter caseViewType(ViewType object) {
            return ComponentImplementationAdapterFactory.this.createViewTypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ComponentImplementationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ComponentImplementationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ComponentImplementationPackage.eINSTANCE;
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

    public Adapter createColorTAdapter() {
        return null;
    }

    public Adapter createComplexImplementationTAdapter() {
        return null;
    }

    public Adapter createComplexReferenceImplementationTAdapter() {
        return null;
    }

    public Adapter createComponentImplementationTypeAdapter() {
        return null;
    }

    public Adapter createDimensionalImplementationTAdapter() {
        return null;
    }

    public Adapter createDimensionalReferenceImplementationTAdapter() {
        return null;
    }

    public Adapter createDistributionImplementationTypeAdapter() {
        return null;
    }

    public Adapter createDocumentRootAdapter() {
        return null;
    }

    public Adapter createElementImplementationTAdapter() {
        return null;
    }

    public Adapter createElementImplementationTypeAdapter() {
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

    public Adapter createImplementationCastImplementationTypeAdapter() {
        return null;
    }

    public Adapter createImplementationEntryTAdapter() {
        return null;
    }

    public Adapter createImplementationSetTAdapter() {
        return null;
    }

    public Adapter createImplementationSetTypeAdapter() {
        return null;
    }

    public Adapter createImplementationVariantTAdapter() {
        return null;
    }

    public Adapter createIntervalTAdapter() {
        return null;
    }

    public Adapter createItemRefTAdapter() {
        return null;
    }

    public Adapter createLogicImplementationTAdapter() {
        return null;
    }

    public Adapter createMethodImplementationTAdapter() {
        return null;
    }

    public Adapter createNotesTAdapter() {
        return null;
    }

    public Adapter createNoteTypeAdapter() {
        return null;
    }

    public Adapter createNumericImplementationBaseTAdapter() {
        return null;
    }

    public Adapter createNumericImplementationTAdapter() {
        return null;
    }

    public Adapter createOneDImplementationTypeAdapter() {
        return null;
    }

    public Adapter createOptionTAdapter() {
        return null;
    }

    public Adapter createPointTAdapter() {
        return null;
    }

    public Adapter createPrimitiveImplementationTAdapter() {
        return null;
    }

    public Adapter createResourceImplementationTAdapter() {
        return null;
    }

    public Adapter createResourceImplementationTypeAdapter() {
        return null;
    }

    public Adapter createScalarImplementationTAdapter() {
        return null;
    }

    public Adapter createSizeTAdapter() {
        return null;
    }

    public Adapter createTemplateImplementationTAdapter() {
        return null;
    }

    public Adapter createTimeStampTAdapter() {
        return null;
    }

    public Adapter createTwoDImplementationTypeAdapter() {
        return null;
    }

    public Adapter createViewTypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

