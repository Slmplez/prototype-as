/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package com.etas.amd620.core.ComponentImplementation;

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
import com.etas.amd620.core.ComponentImplementation.impl.ComponentImplementationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ComponentImplementationFactory
extends EFactory {
    public static final ComponentImplementationFactory eINSTANCE = ComponentImplementationFactoryImpl.init();

    public ColorT createColorT();

    public ComplexImplementationT createComplexImplementationT();

    public ComplexReferenceImplementationT createComplexReferenceImplementationT();

    public ComponentImplementationType createComponentImplementationType();

    public DimensionalImplementationT createDimensionalImplementationT();

    public DimensionalReferenceImplementationT createDimensionalReferenceImplementationT();

    public DistributionImplementationType createDistributionImplementationType();

    public DocumentRoot createDocumentRoot();

    public ElementImplementationT createElementImplementationT();

    public ElementImplementationType createElementImplementationType();

    public FileReferenceT createFileReferenceT();

    public FormattedTextT createFormattedTextT();

    public GenericDataT createGenericDataT();

    public IconT createIconT();

    public ImplementationCastImplementationType createImplementationCastImplementationType();

    public ImplementationEntryT createImplementationEntryT();

    public ImplementationSetT createImplementationSetT();

    public ImplementationSetType createImplementationSetType();

    public ImplementationVariantT createImplementationVariantT();

    public IntervalT createIntervalT();

    public ItemRefT createItemRefT();

    public LogicImplementationT createLogicImplementationT();

    public MethodImplementationT createMethodImplementationT();

    public NotesT createNotesT();

    public NoteType createNoteType();

    public NumericImplementationBaseT createNumericImplementationBaseT();

    public NumericImplementationT createNumericImplementationT();

    public OneDImplementationType createOneDImplementationType();

    public OptionT createOptionT();

    public PointT createPointT();

    public PrimitiveImplementationT createPrimitiveImplementationT();

    public ResourceImplementationT createResourceImplementationT();

    public ResourceImplementationType createResourceImplementationType();

    public ScalarImplementationT createScalarImplementationT();

    public SizeT createSizeT();

    public TemplateImplementationT createTemplateImplementationT();

    public TimeStampT createTimeStampT();

    public TwoDImplementationType createTwoDImplementationType();

    public ViewType createViewType();

    public ComponentImplementationPackage getComponentImplementationPackage();
}

