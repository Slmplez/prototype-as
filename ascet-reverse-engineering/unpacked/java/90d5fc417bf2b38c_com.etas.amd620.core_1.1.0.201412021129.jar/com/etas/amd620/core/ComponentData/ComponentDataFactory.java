/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package com.etas.amd620.core.ComponentData;

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
import com.etas.amd620.core.ComponentData.impl.ComponentDataFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ComponentDataFactory
extends EFactory {
    public static final ComponentDataFactory eINSTANCE = ComponentDataFactoryImpl.init();

    public ArrayT createArrayT();

    public ColorT createColorT();

    public ComplexDataT createComplexDataT();

    public ComponentDataType createComponentDataType();

    public DataEntryT createDataEntryT();

    public DataSetT createDataSetT();

    public DataVariantT createDataVariantT();

    public DependencyT createDependencyT();

    public DimensionalDataT createDimensionalDataT();

    public DimensionalTypeT createDimensionalTypeT();

    public DistributionInfoT createDistributionInfoT();

    public DocumentRoot createDocumentRoot();

    public EnumerationDataT createEnumerationDataT();

    public FileReferenceT createFileReferenceT();

    public FormattedTextT createFormattedTextT();

    public GenericDataT createGenericDataT();

    public IconT createIconT();

    public IntervalT createIntervalT();

    public ItemRefT createItemRefT();

    public LocalType createLocalType();

    public LogicDataT createLogicDataT();

    public MatrixT createMatrixT();

    public NotesT createNotesT();

    public NoteType createNoteType();

    public NumericDataT createNumericDataT();

    public OneDType createOneDType();

    public OptionT createOptionT();

    public ParameterType createParameterType();

    public PointT createPointT();

    public ReferenceDataT createReferenceDataT();

    public ScalarTypeT createScalarTypeT();

    public SizeT createSizeT();

    public TimeStampT createTimeStampT();

    public TwoDType createTwoDType();

    public ViewType createViewType();

    public ComponentDataPackage getComponentDataPackage();
}

