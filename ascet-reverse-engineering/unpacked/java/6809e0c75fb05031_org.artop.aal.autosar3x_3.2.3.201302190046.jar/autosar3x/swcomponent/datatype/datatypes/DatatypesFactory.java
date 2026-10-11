/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.datatype.datatypes;

import autosar3x.swcomponent.datatype.datatypes.ARLimit;
import autosar3x.swcomponent.datatype.datatypes.ArrayElement;
import autosar3x.swcomponent.datatype.datatypes.ArrayType;
import autosar3x.swcomponent.datatype.datatypes.BooleanType;
import autosar3x.swcomponent.datatype.datatypes.CharType;
import autosar3x.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar3x.swcomponent.datatype.datatypes.IntegerType;
import autosar3x.swcomponent.datatype.datatypes.OpaqueType;
import autosar3x.swcomponent.datatype.datatypes.RealType;
import autosar3x.swcomponent.datatype.datatypes.RecordElement;
import autosar3x.swcomponent.datatype.datatypes.RecordType;
import autosar3x.swcomponent.datatype.datatypes.StringType;
import autosar3x.swcomponent.datatype.datatypes.impl.DatatypesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface DatatypesFactory
extends EFactory {
    public static final DatatypesFactory eINSTANCE = DatatypesFactoryImpl.init();

    public ARLimit createARLimit();

    public ArrayElement createArrayElement();

    public BooleanType createBooleanType();

    public OpaqueType createOpaqueType();

    public RecordElement createRecordElement();

    public StringType createStringType();

    public IntegerType createIntegerType();

    public RealType createRealType();

    public CharType createCharType();

    public ArrayType createArrayType();

    public RecordType createRecordType();

    public DatatypesPackage getDatatypesPackage();
}

