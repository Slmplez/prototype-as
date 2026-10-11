/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.datatype.datatypes;

import autosar21.swcomponent.datatype.datatypes.ARLimit;
import autosar21.swcomponent.datatype.datatypes.ArrayElement;
import autosar21.swcomponent.datatype.datatypes.ArrayType;
import autosar21.swcomponent.datatype.datatypes.BooleanType;
import autosar21.swcomponent.datatype.datatypes.CharType;
import autosar21.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar21.swcomponent.datatype.datatypes.IntegerType;
import autosar21.swcomponent.datatype.datatypes.OpaqueType;
import autosar21.swcomponent.datatype.datatypes.RealType;
import autosar21.swcomponent.datatype.datatypes.RecordElement;
import autosar21.swcomponent.datatype.datatypes.RecordType;
import autosar21.swcomponent.datatype.datatypes.StringType;
import autosar21.swcomponent.datatype.datatypes.impl.DatatypesFactoryImpl;
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

